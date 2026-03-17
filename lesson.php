
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

/* Sidebar */
.sidebar {
    width: 250px;
    background: #1f2a44;
    color: #fff;
    min-height: 100vh;
    padding: 20px;
}

.logo {
    margin-bottom: 20px;
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

/* Content Layout */
.content {
    display: flex;
    gap: 20px;
}

/* Card */
.card {
    background: #fff;
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.05);
}

.left {
    width: 30%;
}

.right {
    width: 70%;
}

/* Module List */
.module {
    background: #f5f7fb;
    padding: 15px;
    border-radius: 10px;
    margin-top: 15px;
}

.module span {
    color: blue;
    font-size: 13px;
}

/* Form */
label {
    display: block;
    margin-top: 15px;
    margin-bottom: 5px;
    font-weight: bold;
}

input, textarea {
    width: 100%;
    padding: 10px;
    border-radius: 8px;
    border: 1px solid #ccc;
}

textarea {
    height: 80px;
}

/* Button */
.button-group {
    margin-top: 20px;
    display: flex;
    gap: 10px;
}

.btn {
    padding: 10px 20px;
    border-radius: 8px;
    border: none;
    cursor: pointer;
}

.btn.primary {
    background: #2f4db6;
    color: #fff;
}

.btn.outline {
    border: 1px solid #2f4db6;
    color: #2f4db6;
    background: transparent;
}
</style>
<body>

<div class="container">

    <!-- Sidebar -->
  
    <!-- Main Content -->
    <div class="main">

        <div class="header">
            <h1>Lesson Plan</h1>
            <span>Kepala Sekolah</span>
        </div>

        <div class="content">

            <!-- Left Card -->
            <div class="card left">
                <h3>Daftar Modul Ajar</h3>

                <div class="module">
                    <b>Tema: Lingkungan</b>
                    <p>Subtema: Kebersihan</p>
                    <span>Minggu 1</span>
                </div>

                <div class="module">
                    <b>Tema: Alam</b>
                    <p>Subtema: Binatang</p>
                    <span>Minggu 2</span>
                </div>

                <div class="module">
                    <b>Tema: Diri</b>
                    <p>Subtema: Keluargaku</p>
                    <span>Minggu 3</span>
                </div>
            </div>

            <!-- Right Card -->
            <div class="card right">
                <h3>Editor Modul Ajar (Kurikulum Merdeka)</h3>

                <label>Tema</label>
                <input type="text" value="Lingkungan Sekitar">

                <label>Subtema</label>
                <input type="text" value="Kebersihan Sekolah">

                <label>Tujuan Pembelajaran</label>
                <textarea> Anak mampu memahami kebiasaan menjaga kebersihan dan tanggung jawab sederhana.</textarea>

                <label>Kegiatan</label>
                <textarea>Menyanyi lagu kebersihan • Bermain peran menjaga kelas • Menggambar tempat sampah.</textarea>

                <label>Asesmen</label>
                <textarea>Observasi perilaku dan partisipasi • Dokumentasi hasil karya.</textarea>

                <div class="button-group">
                    <button class="btn primary">Simpan</button>
                    <button class="btn outline">Export</button>
                </div>
            </div>

        </div>

    </div>

</div>

</body>
</html>