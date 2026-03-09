<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<title>Login MELIORA</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:#cdd9e6;
}

/* BACKGROUND SHAPE */

body:before{
content:"";
position:absolute;
width:600px;
height:600px;
background:#f3f5f9;
border-radius:50%;
top:-150px;
left:-150px;
}

body:after{
content:"";
position:absolute;
width:500px;
height:500px;
background:#f3f5f9;
border-radius:50%;
bottom:-150px;
right:-150px;
}

/* LOGIN CARD */

.login-card{
width:380px;
background:white;
padding:35px;
border-radius:18px;
box-shadow:0 12px 20px rgba(0,0,0,0.15);
position:relative;
z-index:2;
}

.logo{
text-align:center;
margin-bottom:15px;
}

.logo img{
width:70px;
}

h2{
text-align:center;
margin-bottom:5px;
color:#1c2c4c;
}

.subtitle{
text-align:center;
font-size:14px;
color:#777;
margin-bottom:20px;
}

/* INPUT */

.form-group{
margin-bottom:15px;
}

label{
font-size:14px;
font-weight:600;
color:#333;
display:block;
margin-bottom:5px;
}

input{
width:100%;
padding:12px;
border-radius:10px;
border:1px solid #dfe4ec;
font-size:14px;
}

input:focus{
outline:none;
border-color:#2f67d8;
}

/* OPTIONS */

.options{
display:flex;
justify-content:space-between;
align-items:center;
font-size:13px;
margin-bottom:18px;
}

.options a{
color:#2f67d8;
text-decoration:none;
}

/* BUTTON */

button{
width:100%;
padding:12px;
background:#2457c5;
color:white;
border:none;
border-radius:12px;
font-size:16px;
cursor:pointer;
margin-bottom:10px;
}

button:hover{
background:#1e4fb0;
}

/* REGISTER */

.register{
text-align:center;
font-size:14px;
}

.register a{
color:#2457c5;
text-decoration:none;
font-weight:600;
}

</style>
</head>

<body>

<div class="login-card">

<div class="logo">
<img src="logo.png" alt="Meliora Logo">
</div>

<h2>Masuk ke MELIORA</h2>
<p class="subtitle">Gunakan akun sekolah untuk melanjutkan.</p>

<form action="index.php" method="post">

<div class="form-group">
<label>Email / Username</label>
<input type="text" placeholder="contoh: guru@sekolah.sch.id" name="email">
</div>

<div class="form-group">
<label>Kata Sandi</label>
<input type="password" placeholder="••••••••">
</div>

<div class="options">
<label><input type="checkbox"> Ingat saya</label>
<a href="#">Lupa kata sandi?</a>
</div>

<button type="submit">Masuk</button>

<div class="register">
Belum punya akun? <a href="#">Daftar</a>
</div>

</form>

</div>

</body>
</html>