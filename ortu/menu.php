<style>
	.sidebar {
    width: 250px;
    height: 200vh;
    background: linear-gradient(180deg, #1e2a78, #2f4db6);
    color: #fff;
    padding: 20px;
    font-family: 'Segoe UI', sans-serif;
}

.sidebar h2 {
    text-align: center;
    margin-bottom: 30px;
    letter-spacing: 2px;
}

.sidebar ul {
    list-style: none;
    padding: 0;
}

.sidebar ul li {
    padding: 12px 15px;
    margin-bottom: 8px;
    border-radius: 8px;
    transition: all 0.3s ease;
}

.sidebar ul li a {
    text-decoration: none;
    color: #fff;
    display: block;
}

/* Hover effect */
.sidebar ul li:hover {
    background: rgba(255, 255, 255, 0.15);
    transform: translateX(5px);
}

/* Active menu */
.sidebar ul li.active {
    background: #ffffff;
}

.sidebar ul li.active a {
    color: #2f4db6;
    font-weight: bold;
}

/* Optional: section title (tanpa link) */
.sidebar ul li:not(:has(a)) {
    font-size: 13px;
    text-transform: uppercase;
    opacity: 0.7;
    cursor: default;
    margin-top: 15px;
}
</style>


<div class="sidebar">

<h2>MELIORA</h2>

<ul>
<li>Dashboard</li>
<li><a href="?p=lesson">Lesson Plan</a></li>
<li><a href="?p=attendance">Attendance</a></li>
<li><a href="?p=child">Child Development</a></li>
<li>Documentation</li>
<li>Weekly Summary (AI)</li>
<li>Report</li>
<li><a href="?p=student">Student Profile</a></li>
<li>Collaboration</li>
<li><a href="?p=meeting">Meeting Notes</a></li>
<li><a href="?p=monthly">Monthly Reflection</a></li>
<li><a href="?p=annual">Annual Plan</a></li>
<li>AI Assistant</li>
</ul>

</div>