
<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, sans-serif;
}

body{
display:flex;
background:#f4f6fb;
}


/* MAIN */

.main{
flex:1;
padding:30px;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.header h1{
color:#1c2c4c;
}

.container{
background:white;
border-radius:20px;
padding:25px;
box-shadow:0 2px 8px rgba(0,0,0,0.05);
}

/* CONTENT */

.content{
display:flex;
gap:25px;
margin-top:20px;
}

/* LEFT LIST */

.list{
width:260px;
border:1px solid #e5e9f2;
border-radius:15px;
padding:20px;
}

.list h3{
margin-bottom:15px;
}

.meeting{
border:1px solid #d9e0ef;
padding:15px;
border-radius:12px;
margin-bottom:15px;
cursor:pointer;
}

.meeting.active{
border:2px solid #2f67d8;
color:#2f67d8;
font-weight:600;
}

/* DETAIL */

.detail{
flex:1;
border:1px solid #e5e9f2;
border-radius:15px;
padding:20px;
}

.detail h3{
margin-bottom:10px;
}

.note-box{
border:1px solid #e1e5f0;
border-radius:12px;
padding:15px;
height:200px;
margin-top:10px;
line-height:1.6;
}

/* BUTTON */

.actions{
display:flex;
justify-content:flex-end;
gap:15px;
margin-top:20px;
}

.btn{
padding:10px 25px;
border-radius:10px;
border:2px solid #2f67d8;
background:white;
cursor:pointer;
}

.btn.primary{
background:#2f67d8;
color:white;
}

.add-btn{
float:right;
background:#2f67d8;
color:white;
padding:10px 18px;
border-radius:10px;
border:none;
cursor:pointer;
}

</style>



<div class="header">
<h1>Meeting Notes</h1>
<span>Guru Kelas K2</span>
</div>

<div class="container">

<h2>Arsip Notulen Rapat</h2>
<button class="add-btn">Tambah Notulen</button>

<div class="content">

<!-- LIST -->

<div class="list">

<h3>Daftar Rapat</h3>

<div class="meeting active">
Rapat Evaluasi Bulanan
</div>

<div class="meeting">
Rapat Kurikulum Merdeka
</div>

<div class="meeting">
Koordinasi Guru Kelas
</div>

<div class="meeting">
Persiapan Kegiatan Sekolah
</div>

</div>

<!-- DETAIL -->

<div class="detail">

<h3>Detail Notulen</h3>

<p><b>Judul:</b> Rapat Evaluasi Bulanan</p>
<p><b>Tanggal:</b> 10 September 2026</p>

<div class="note-box">

<b>Pembahasan:</b><br>
- Evaluasi perkembangan siswa kelas K2.<br>
- Diskusi kendala dalam kegiatan kelompok.<br>
- Rencana peningkatan literasi awal.<br><br>

<b>Kesimpulan:</b><br>
Perlu penambahan variasi metode pembelajaran dan penguatan komunikasi dengan orang tua.

</div>

<div class="actions">

<button class="btn">Edit</button>
<button class="btn primary">Simpan</button>

</div>

</div>

</div>
</div>
