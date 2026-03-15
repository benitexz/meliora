<style>
	*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, sans-serif;
}

body{
display:flex;
background:#f0f2f6;
}

/* SIDEBAR */

.sidebar{
width:230px;
background:#15294b;
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
border-left:4px solid #3c7cff;
padding-left:10px;
font-weight:bold;
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
margin-bottom:25px;
}

.topbar h1{
color:#1b2c4c;
}

.topbar span{
color:#777;
}


/* CONTAINER */

.container{
background:white;
padding:25px;
border-radius:20px;
box-shadow:0 2px 8px rgba(0,0,0,0.05);
}

.container h2{
margin-bottom:20px;
}


/* CONTENT */

.content{
display:flex;
gap:25px;
}


/* STUDENT LIST */

.student-list{
width:260px;
border:1px solid #e4e7f2;
padding:20px;
border-radius:20px;
}

.student-list h3{
margin-bottom:15px;
}

.student{
padding:12px;
border:1px solid #e4e7f2;
border-radius:12px;
margin-bottom:10px;
cursor:pointer;
}

.student.active{
border:2px solid #2d6cdf;
font-weight:bold;
}


/* FORM AREA */

.form-area{
flex:1;
border:1px solid #e4e7f2;
padding:25px;
border-radius:20px;
}

.nama{
margin:10px 0 20px;
color:#555;
}


/* KATEGORI */

.kategori{
display:flex;
gap:10px;
flex-wrap:wrap;
margin-bottom:20px;
}

.kategori button{
padding:8px 15px;
border-radius:20px;
border:1px solid #cfd6e6;
background:#f6f7fb;
cursor:pointer;
}

.kategori button.aktif{
border:2px solid #2d6cdf;
color:#2d6cdf;
font-weight:bold;
}


/* TEXTAREA */

textarea{
width:100%;
height:120px;
padding:15px;
border-radius:15px;
border:1px solid #dfe3ef;
margin:10px 0 20px;
resize:none;
}


/* UPLOAD */

.upload{
width:200px;
height:120px;
border:1px dashed #cfd6e6;
display:flex;
align-items:center;
justify-content:center;
border-radius:15px;
color:#777;
margin-bottom:20px;
}


/* BUTTON */

.btn-simpan{
background:#2d6cdf;
color:white;
border:none;
padding:12px 40px;
border-radius:25px;
cursor:pointer;
float:right;
}
</style>
<!-- MAIN CONTENT -->
<div class="main">

<div class="topbar">
<h1>Child Development</h1>
<span>Kepala Sekolah</span>
</div>


<div class="container">

<h2>Pencatatan Perkembangan Anak</h2>

<div class="content">

<!-- LIST SISWA -->
<div class="student-list">

<h3>Daftar Siswa (K2)</h3>

<div class="student active">Siswa K2-01</div>
<div class="student">Siswa K2-02</div>
<div class="student">Siswa K2-03</div>
<div class="student">Siswa K2-04</div>
<div class="student">Siswa K2-05</div>
<div class="student">Siswa K2-06</div>
<div class="student">Siswa K2-07</div>
<div class="student">Siswa K2-08</div>

</div>


<!-- FORM -->
<div class="form-area">

<h3>Input Catatan Perkembangan</h3>

<p class="nama">Nama: Siswa K2-01</p>

<div class="kategori">

<button>Agama & Moral</button>
<button>Sosial Emosional</button>
<button class="aktif">Bahasa</button>
<button>Kognitif</button>
<button>Fisik Motorik</button>
<button>Seni</button>

</div>


<label>Catatan Observasi</label>

<textarea>
Anak mampu menyebutkan kosakata baru terkait tema dan berani bercerita singkat di depan teman-temannya.
</textarea>


<label>Lampiran Dokumentasi</label>

<div class="upload">
Upload Foto/Video
</div>

<button class="btn-simpan">Simpan</button>

</div>

</div>

</div>
