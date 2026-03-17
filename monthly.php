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


/* FORM */

.form-box{
border:1px solid #e3e7f2;
border-radius:20px;
padding:25px;
}

.bulan{
color:#2f67d8;
font-weight:600;
margin-bottom:20px;
}

label{
display:block;
margin-top:15px;
margin-bottom:8px;
font-weight:600;
color:#2d3a56;
}

textarea{
width:100%;
height:80px;
border:1px solid #dfe3ef;
border-radius:15px;
padding:15px;
resize:none;
font-size:14px;
color:#444;
background:#fafbff;
}


/* BUTTON */

.button-area{
text-align:right;
margin-top:25px;
}

.btn{
background:#2f67d8;
color:white;
border:none;
padding:12px 40px;
border-radius:12px;
cursor:pointer;
font-size:14px;
}
</style>

<div class="main">

<div class="topbar">
<h1>Monthly Reflection</h1>
<span>Kepala Sekolah</span>
</div>


<div class="card">

<h2>Monthly Reflection</h2>

<div class="form-box">

<div class="bulan">
Bulan: September 2026 — Kelas: K2
</div>


<!-- Keberhasilan -->

<label>Keberhasilan</label>

<textarea>
Anak aktif mengikuti kegiatan dan menunjukkan peningkatan kerja sama.
</textarea>


<!-- Kendala -->

<label>Kendala</label>

<textarea>
Beberapa anak masih perlu pendampingan untuk fokus dalam kegiatan kelompok.
</textarea>


<!-- Rencana -->

<label>Rencana Perbaikan</label>

<textarea>
Menambah variasi metode belajar melalui permainan terstruktur dan jadwal visual.
</textarea>


<div class="button-area">
<button class="btn">Simpan</button>
</div>

</div>

</div>
