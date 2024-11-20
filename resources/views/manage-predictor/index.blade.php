<style>
.wrapper, body, html {
min-height: 0%!important;
}
</style>

@extends('layouts.app')

@section('content')
    <section class="content-header mt-[-400px]">
        <div class="left-side-content">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item active">Support Predictor</li>
                    </ol>
                </div>
            </div>
        </div>
</section>
<section class="content">
    <div class="card" style="background-color: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-left:40px; margin-right:40px;">
        <h1 class="mb-4" style="font-size: 28px; color: #333;">Member Support Predictor</h1>
        <p class="mb-4" style="font-size: 20px; color: #666;">Here is the AI-predicted list of the members who need support more than others.</p>

        <!-- Loading message -->
        <div id="loadingMessage" style="font-size: 18px; color: #666; text-align: center; margin:150px">
            <h2 style="color:#8a1d03;">AI Predicting...</h2>
            <span style="margin-top:20px" class="loader"></span>
        </div>

        <!-- Table, initially hidden -->
        <div id="tableContainer" style="display: none;">
            <div class="table-responsive">
                <table class="table table-striped" style="background-color: #f9f9f9;">
                    <thead style="background-color: #8a1d03; color: white;">
                        <tr>
                            <th style="color: white; font-size:20px;">#</th>
                            <th style="color: white; font-size:20px;">First Name</th>
                            <th style="color: white; font-size:20px;">Last Name</th>
                            <th style="color: white; font-size:20px;">Phone</th>
                        </tr>
                    </thead>
                    <tbody id="combinedTableBody">
                        <!-- Data rows will be inserted here -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
@endsection

<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs"></script>

<script>
const members = @json($members);

async function predictSupport(tableData) {
    console.log("Received members data:", tableData); // Log members data to check if it's being passed correctly

    // Normalize data with the updated parent status logic
    const normalizedData = tableData.map(d => ({
        total_income_per_month: (d.income_per_month + (d.mother_income_per_month || 0)) / Math.max(...tableData.map(t => t.income_per_month + (t.mother_income_per_month || 0))),
        disability: d.disability === "yes" ? 1 : 0,
        parent_status: d.parent_status === "All Parents Alive" ? 0 :
                       d.parent_status === "All Parents Deceased" ? 1 : 0.5, // Handle all parent statuses
        house: d.house === "yes" ? 1 : 0,
        income_per_month: d.income_per_month // Keep the raw income for calculation
    }));

    console.log("Normalized Data:", normalizedData); // Log normalized data for debugging

    // Prepare training data
    const trainingData = normalizedData.map(d => [d.total_income_per_month, d.disability, d.parent_status, d.house]);
    const labels = normalizedData.map(d => (d.total_income_per_month < 0.1 && d.disability === 1 && d.parent_status === 1) ? 1 : 0);

    // Define and compile the model
    const model = tf.sequential();
    model.add(tf.layers.dense({ units: 16, activation: 'relu', inputShape: [4] }));
    model.add(tf.layers.dense({ units: 1, activation: 'sigmoid' }));
    model.compile({ optimizer: 'adam', loss: 'binaryCrossentropy', metrics: ['accuracy'] });

    // Train the model
    const xs = tf.tensor2d(trainingData);
    const ys = tf.tensor2d(labels, [labels.length, 1]);
    await model.fit(xs, ys, { epochs: 400 });

    // Predict and sort the results based on the prediction
    const predictions = model.predict(tf.tensor2d(normalizedData.map(d => [d.total_income_per_month, d.disability, d.parent_status, d.house]))).dataSync();
    console.log("Predictions:", predictions); // Log predictions to ensure they are generated

    const sortedData = tableData.map((d, index) => ({
        ...d,
        prediction: predictions[index]
    })).sort((a, b) => b.prediction - a.prediction); // Sort by prediction

    console.log("Sorted Data:", sortedData); // Log sorted data to check

    // Populate the table with sorted data
    const tableBody = document.querySelector("#combinedTableBody");
    tableBody.innerHTML = ''; // Clear existing table data

    sortedData.forEach((member, index) => {
        // Calculate the percentage of support needed based on your rules
        let incomePercentage = Math.max(0, (100000 - member.income_per_month) / 100000) * 20; // Income calculation
        let housePercentage = member.house === "yes" ? 0 : 25; // House status calculation
        let parentStatusPercentage = member.parent_status === 0 ? 25 : (member.parent_status === 1 ? 0 : 12.5); // Parent status calculation
        let disabilityPercentage = member.disability === 1 ? 25 : 0; // Disability calculation

        // Sum the percentages
        let totalSupportPercentage = incomePercentage + housePercentage + parentStatusPercentage + disabilityPercentage;

        const row = document.createElement('tr');
        row.innerHTML = `
            <td style="font-size:16px;">${index + 1}</td>
            <td style="font-size:16px;">${member.first_name}</td>
            <td style="font-size:16px;">${member.last_name}</td>
            <td style="font-size:16px;">${member.phone}</td>
        `;
        tableBody.appendChild(row);
    });

    // Hide loading message and show the table
    document.getElementById("loadingMessage").style.display = "none";
    document.getElementById("tableContainer").style.display = "block";
}

// Start the prediction process
predictSupport(members);
</script>
