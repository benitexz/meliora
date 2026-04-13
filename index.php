<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Meliora Kids Learning</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="font-sans text-gray-700">

<!-- Navbar -->
<header class="flex justify-between items-center p-5 shadow bg-white sticky top-0 z-50">
  <h1 class="text-xl font-bold text-orange-500">Meliora</h1>
  <nav class="space-x-6 hidden md:block">
    <a href="#" class="hover:text-orange-500">Home</a>
    <a href="#pages">Pages</a>
    <a href="#courses">Courses</a>
    <a href="#teacher">Teacher</a>
    <a href="#blog">Blog</a>
    <a href="#contact">Contact</a>
  </nav>
</header>

<!-- Hero -->
<section class="grid md:grid-cols-2 items-center p-10 bg-gray-50">
  <div>
    <p class="text-orange-400 mb-2">Friendly Atmosphere</p>
    <h2 class="text-4xl font-bold mb-4">Welcoming Place <br> For Every Child</h2>
    <button class="bg-orange-500 text-white px-6 py-3 rounded-lg shadow">Start Learn More</button>
  </div>
  <div>
    <img src="https://images.unsplash.com/photo-1604881991720-f91add269bed" class="rounded-xl" />
  </div>
</section>

<!-- Pages Section -->
<section id="pages" class="p-10">
  <h2 class="text-3xl font-bold text-center mb-8">Pages</h2>
  <div class="grid md:grid-cols-3 gap-6">
    <div class="shadow rounded-xl overflow-hidden">
      <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f" />
      <div class="p-4">
        <h3 class="font-bold">About Us</h3>
        <p>Kenali lebih dekat Meliora.</p>
      </div>
    </div>
    <div class="shadow rounded-xl overflow-hidden">
      <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b" />
      <div class="p-4">
        <h3 class="font-bold">Programs</h3>
        <p>Berbagai program belajar menarik.</p>
      </div>
    </div>
    <div class="shadow rounded-xl overflow-hidden">
      <img src="https://images.unsplash.com/photo-1516627145497-ae6968895b74" />
      <div class="p-4">
        <h3 class="font-bold">Events</h3>
        <p>Kegiatan seru untuk anak-anak.</p>
      </div>
    </div>
  </div>
</section>

<!-- Courses -->
<section id="courses" class="bg-gray-100 p-10">
  <h2 class="text-3xl font-bold text-center mb-8">Our Courses</h2>
  <div class="grid md:grid-cols-3 gap-6">
    <div class="bg-white rounded-xl shadow overflow-hidden">
      <img src="https://images.unsplash.com/photo-1584697964403-1c7c2d91f1a1" />
      <div class="p-4">
        <h3 class="font-bold">Computer Basic</h3>
        <p>Belajar komputer dari nol.</p>
      </div>
    </div>
    <div class="bg-white rounded-xl shadow overflow-hidden">
      <img src="https://images.unsplash.com/photo-1581091012184-5c7c5c8e9f1d" />
      <div class="p-4">
        <h3 class="font-bold">Design Kids</h3>
        <p>Kelas desain kreatif.</p>
      </div>
    </div>
    <div class="bg-white rounded-xl shadow overflow-hidden">
      <img src="https://images.unsplash.com/photo-1588072432836-e10032774350" />
      <div class="p-4">
        <h3 class="font-bold">Coding Kids</h3>
        <p>Belajar coding menyenangkan.</p>
      </div>
    </div>
  </div>
</section>

<!-- Teacher -->
<section id="teacher" class="p-10">
  <h2 class="text-3xl font-bold text-center mb-8">Our Teacher</h2>
  <div class="grid md:grid-cols-3 gap-6 text-center">
    <div class="shadow p-6 rounded-xl">
      <img src="https://randomuser.me/api/portraits/women/44.jpg" class="mx-auto rounded-full mb-4" />
      <h3 class="font-bold">Ms. Anna</h3>
      <p>Design Expert</p>
    </div>
    <div class="shadow p-6 rounded-xl">
      <img src="https://randomuser.me/api/portraits/men/32.jpg" class="mx-auto rounded-full mb-4" />
      <h3 class="font-bold">Mr. Budi</h3>
      <p>Programming Mentor</p>
    </div>
    <div class="shadow p-6 rounded-xl">
      <img src="https://randomuser.me/api/portraits/women/68.jpg" class="mx-auto rounded-full mb-4" />
      <h3 class="font-bold">Ms. Sari</h3>
      <p>Computer Trainer</p>
    </div>
  </div>
</section>

<!-- Blog -->
<section id="blog" class="bg-gray-100 p-10">
  <h2 class="text-3xl font-bold text-center mb-8">Latest Blog</h2>
  <div class="grid md:grid-cols-3 gap-6">
    <div class="bg-white shadow rounded-xl overflow-hidden">
      <img src="https://images.unsplash.com/photo-1513258496099-48168024aec0" />
      <div class="p-4">
        <h3 class="font-bold">Tips Belajar Anak</h3>
        <p>Cara efektif belajar untuk anak.</p>
      </div>
    </div>
    <div class="bg-white shadow rounded-xl overflow-hidden">
      <img src="https://images.unsplash.com/photo-1523580494863-6f3031224c94" />
      <div class="p-4">
        <h3 class="font-bold">Manfaat Coding</h3>
        <p>Pentingnya coding sejak dini.</p>
      </div>
    </div>
    <div class="bg-white shadow rounded-xl overflow-hidden">
      <img src="https://images.unsplash.com/photo-1509062522246-3755977927d7" />
      <div class="p-4">
        <h3 class="font-bold">Belajar Kreatif</h3>
        <p>Metode belajar menyenangkan.</p>
      </div>
    </div>
  </div>
</section>

<!-- Contact -->
<section id="contact" class="p-10">
  <h2 class="text-3xl font-bold text-center mb-8">Contact Us</h2>
  <div class="max-w-xl mx-auto">
    <input type="text" placeholder="Nama" class="w-full mb-3 p-3 border rounded" />
    <input type="email" placeholder="Email" class="w-full mb-3 p-3 border rounded" />
    <textarea placeholder="Pesan" class="w-full mb-3 p-3 border rounded"></textarea>
    <button class="bg-orange-500 text-white px-6 py-3 rounded">Kirim</button>
  </div>
</section>

<!-- Footer -->
<footer class="bg-gray-900 text-white p-10 text-center">
  <p>© 2026 Meliora. All rights reserved.</p>
</footer>

</body>
</html>
