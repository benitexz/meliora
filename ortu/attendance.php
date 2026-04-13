
<style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #f4f6fb;
}

.container {
    display: flex;
}



/* Main */
.main {
    flex: 1;
    padding: 20px;
}

/* Header */
.header {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
}

/* Card */
.card {
    background: white;
    padding: 20px;
    border-radius: 15px;
}

/* Card Header */
.card-header {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
}

.date {
    color: gray;
}

/* Tabs */
.tabs {
    margin-bottom: 15px;
}

.tabs button {
    padding: 8px 15px;
    border: 1px solid #ccc;
    border-radius: 20px;
    background: #f5f5f5;
    margin-right: 10px;
    cursor: pointer;
}

.tabs button.active {
    border-color: #2f4db6;
    color: #2f4db6;
    background: white;
}

/* Table */
.table {
    width: 100%;
}

.table-header,
.row {
    display: grid;
    grid-template-columns: 50px 2fr 1fr 2fr;
    padding: 10px;
    border-radius: 10px;
    margin-bottom: 8px;
    align-items: center;
}

.table-header {
    background: #f1f3f9;
    font-weight: bold;
}

.row {
    background: #f9fafc;
}

/* Badge */
.badge {
    padding: 5px 12px;
    border-radius: 20px;
    font-size: 12px;
    display: inline-block;
}

.hadir {
    background: #e3f0ff;
    color: #2f4db6;
}

.izin {
    background: #fff4e5;
    color: #d97706;
}

.sakit {
    background: #ffe4e6;
    color: #dc2626;
}

/* Button */
.action {
    text-align: right;
    margin-top: 20px;
}

.btn-primary {
    background: #2f4db6;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
}
</style>
<body>

<div class="container">


    <!-- Main -->
    <div class="main">

        <!-- Header -->
        <div class="header">
            <h1>Attendance</h1>
            <span>Kepala Sekolah</span>
        </div>

        <!-- Card -->
        <div class="card">

            <div class="card-header">
                <h3>Kehadiran Harian</h3>
                <span class="date">Tanggal: 12/03/2026</span>
            </div>

            <!-- Tabs -->
            <div class="tabs">
                <button>Nursery (15)</button>
                <button>K1 (17)</button>
                <button class="active">K2 (18)</button>
            </div>

            <!-- Table -->
            <div class="table">

                <div class="table-header">
                    <div>No</div>
                    <div>Nama Siswa</div>
                    <div>Status</div>
                    <div>Catatan</div>
                </div>

                <!-- Row -->
                <div class="row">
                    <div>1</div>
                    <div>Siswa K2-01</div>
                    <div><span class="badge hadir">Hadir</span></div>
                    <div>-</div>
                </div>

                <div class="row">
                    <div>2</div>
                    <div>Siswa K2-02</div>
                    <div><span class="badge hadir">Hadir</span></div>
                    <div>-</div>
                </div>

                <div class="row">
                    <div>3</div>
                    <div>Siswa K2-03</div>
                    <div><span class="badge hadir">Hadir</span></div>
                    <div>-</div>
                </div>

                <div class="row">
                    <div>4</div>
                    <div>Siswa K2-04</div>
                    <div><span class="badge izin">Izin</span></div>
                    <div>Perlu izin tertulis</div>
                </div>

                <div class="row">
                    <div>5</div>
                    <div>Siswa K2-05</div>
                    <div><span class="badge hadir">Hadir</span></div>
                    <div>-</div>
                </div>

                <div class="row">
                    <div>6</div>
                    <div>Siswa K2-06</div>
                    <div><span class="badge sakit">Sakit</span></div>
                    <div>Perlu izin tertulis</div>
                </div>

            </div>

            <!-- Button -->
            <div class="action">
                <button class="btn-primary">Simpan Kehadiran</button>
            </div>

        </div>

    </div>

</div>

</body>
</html>