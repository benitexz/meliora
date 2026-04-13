<style>
	*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, sans-serif;
}

body{
display:flex;
background:#f3f5fa;
}




/* MAIN */

.main{
flex:1;
padding:30px;
}


/* HEADER */

.topbar{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:20px;
}

.topbar h1{
color:#1c2c4c;
}

.topbar span{
color:#777;
}


/* CARD */

.card{
background:white;
border-radius:20px;
padding:25px;
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


/* PROFILE */

.profile-box{
width:350px;
border:1px solid #e3e7f2;
border-radius:20px;
padding:20px;
position:relative;
}

.profile-box h3{
margin-bottom:10px;
}

.profile-box p{
margin-bottom:8px;
color:#555;
}


/* FOTO */

.photo{
position:absolute;
right:20px;
top:60px;
width:90px;
height:110px;
border:1px solid #dfe3ef;
border-radius:15px;
display:flex;
align-items:center;
justify-content:center;
color:#888;
font-size:14px;
background:#fafbff;
}


/* DEVELOPMENT */

.development{
flex:1;
border:1px solid #e3e7f2;
border-radius:20px;
padding:20px;
}

.development h3{
margin-bottom:20px;
}


/* WEEK BOX */

.week-box{
border:1px solid #e3e7f2;
border-radius:15px;
padding:18px;
margin-bottom:15px;
background:#fafbff;
}

.week-box h4{
color:#2f67d8;
margin-bottom:5px;
}

.week-box p{
color:#555;
font-size:14px;
}
</style>


<!-- MAIN -->

<div class="main">

<div class="topbar">
<h1>Student Profile</h1>
<span>Kepala Sekolah</span>
</div>


<div class="card">

<h2>Student Profile</h2>

<div class="content">

<!-- LEFT PROFILE -->

<div class="profile-box">

<h3>Siswa K2-01</h3>

<p><b>Kelas:</b> K2</p>
<p><b>Tanggal Lahir:</b> 12 Mei 2019</p>
<p><b>Wali Murid:</b> Ibu Sari</p>

<div class="photo">
Foto
</div>

</div>


<!-- RIGHT DEVELOPMENT -->

<div class="development">

<h3>Riwayat Perkembangan</h3>

<div class="week-box">

<h4>Minggu 1</h4>
<p>Peningkatan kosakata dan keberanian bercerita.</p>

</div>

<div class="week-box">

<h4>Minggu 2</h4>
<p>Lebih konsisten mengikuti aturan kelas dan bekerja sama.</p>

</div>

<div class="week-box">

<h4>Minggu 3</h4>
<p>Motorik halus meningkat melalui kegiatan kolase dan menulis awal.</p>

</div>

</div>

</div>

</div>
