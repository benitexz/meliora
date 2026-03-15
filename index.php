<?php 
session_start();

if(isset($_SESSION['login'])){
    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<title>Meliora - Documentation</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, sans-serif;
}

body{
display:flex;
background:#f5f7fb;
}

/* SIDEBAR */

.sidebar{
width:230px;
background:#16284a;
color:white;
min-height:100vh;
padding:30px 20px;
}

.sidebar h2{
margin-bottom:40px;
letter-spacing:2px;
}

.sidebar ul{
list-style:none;
}

.sidebar li{
padding:10px 0;
opacity:0.9;
cursor:pointer;
}

.sidebar li.active{
font-weight:bold;
border-left:4px solid #3a7afe;
padding-left:10px;
}

/* MAIN AREA */

.main{
flex:1;
padding:30px;
}

/* HEADER */

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.header h1{
color:#1c2c4c;
}

/* CONTAINER */

.container{
background:white;
padding:25px;
border-radius:20px;
box-shadow:0 2px 10px rgba(0,0,0,0.05);
}

.container-top{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:15px;
}

.upload-btn{
background:#2f67d8;
color:white;
padding:10px 20px;
border:none;
border-radius:10px;
cursor:pointer;
}

/* FILTER */

.filter{
background:#f1f4fb;
padding:12px 15px;
border-radius:12px;
margin-bottom:25px;
color:#555;
font-size:14px;
}

/* GRID */

.grid{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:20px;
}

/* CARD */

.card{
border:1px solid #e3e8f2;
border-radius:15px;
padding:15px;
background:#fafbfe;
}

.preview{
height:120px;
border:1px solid #dfe5f0;
border-radius:12px;
display:flex;
align-items:center;
justify-content:center;
color:#888;
margin-bottom:10px;
background:white;
}

.card h3{
font-size:16px;
margin-bottom:5px;
color:#1c2c4c;
}

.card p{
font-size:13px;
color:#666;
}

</style>
</head>

<body>

<!-- SIDEBAR -->

<?php include "menu.php";?>

<!-- MAIN -->

<div class="main">
<?php
  if (!isset($_GET['p'])) {
                include ('content.php');
              } 
              else { 
                $page = $_GET['p'];
                include  $page . ".php";
              }
?>

</div>

</body>
</html>