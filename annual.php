<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, sans-serif;
}

body{
display:flex;
background:#f2f4f9;
}

/* SIDEBAR */

.sidebar{
width:230px;
background:#15284b;
color:white;
min-height:100vh;
padding:30px 20px;
}

.sidebar h2{
margin-bottom:30px;
letter-spacing:2px;
}

.sidebar ul{
list-style:none;
}

.sidebar ul li{
padding:10px 0;
opacity:0.9;
cursor:pointer;
}

.sidebar ul li.active{
font-weight:bold;
border-left:4px solid #3a7afe;
padding-left:10px;
}

/* MAIN */

.main{
flex:1;
padding:30px;
}

/* TOPBAR */

.topbar{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:20px;
}

.topbar h1{
color:#1c2c4c;
}

/* CARD */

.card{
background:white;
padding:25px;
border-radius:20px;
box-shadow:0 2px 8px rgba(0,0,0,0.05);
}

.card h2{
margin-bottom:20px;
}

/* CONTENT */

.content{
display:flex;
gap:25px;
}

/* LEFT */

.left{
width:250px;
border:1px solid #e4e7f0;
border-radius:15px;
padding:20px;
}

.year-box{
border:1px solid #d9deea;
padding:12px;
border-radius:10px;
margin:10px 0 20px 0;
color:#2f67d8;
font-weight:600;
text-align:center;
}

/* RIGHT */

.right{
flex:1;
border:1px solid #e4e7f0;
border-radius:15px;
padding:20px;
}

/* TABLE */

.table{
margin-top:15px;
}

.row{
display:grid;
grid-template-columns:1fr 2fr 1fr;
gap:10px;
padding:15px;
border:1px solid #e4e7f0;
border-radius:12px;
margin-bottom:10px;
}

.header{
background:#f5f7fb;
font-weight:bold;
}

.blue{
color:#2f67d8;
font-weight:600;
}

/* BUTTON */

.btn-area{
text-align:right;
margin-top:20px;
}

button{
background:#2f67d8;
color:white;
border:none;
padding:12px 30px;
border-radius:12px;
cursor:pointer;
font-size:14px;
}
</style>
<div class="main">

<div class="topbar">
<h1>Annual Plan</h1>
<span>Kepala Sekolah</span>
</div>

<div class="card">

<h2>Annual Plan</h2>

<div class="content">

<!-- LEFT -->

<div class="left">

<h3>Tahun</h3>

<div class="year-box">
2026 / 2027
</div>

<h4>Fokus Utama:</h4>

<p>
Peningkatan literasi awal,<br>
penguatan sosial emosional,<br>
dan dokumentasi pembelajaran<br>
terintegrasi.
</p>

</div>

<!-- RIGHT -->

<div class="right">

<h3>Target Pengembangan</h3>

<div class="table">

<div class="row header">
<div>Target</div>
<div>Indikator</div>
<div>Waktu</div>
</div>

<div class="row">
<div class="blue">Literasi Awal</div>
<div>Anak mengenal huruf & menulis awal</div>
<div>Semester 1</div>
</div>

<div class="row">
<div class="blue">Sosial Emosional</div>
<div>Anak mampu berbagi dan kerja sama</div>
<div>Semester 1–2</div>
</div>

<div class="row">
<div class="blue">Dokumentasi</div>
<div>Unggah bukti pembelajaran rutin</div>
<div>Bulanan</div>
</div>

</div>

<div class="btn-area">
<button>Simpan</button>
</div>

</div>

</div>

</div>
