<details>
<summary>README.md for Tugas 7</summary>

### 1) Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree dalam Flutter merupakan struktur hierarki yang menyusun seluruh widget pembentuk tampilan aplikasi. Setiap komponen di layar, seperti teks, tombol, gambar, maupun tata letak, termasuk dalam susunan pohon ini. Hubungan antarwidget menyerupai struktur pohon keluarga, di mana terdapat parent widget dan child widget. Parent widget berfungsi mengatur posisi, ukuran, serta perilaku widget di dalamnya, sedangkan child widget menjadi konten atau elemen yang ditampilkan oleh parent.

### 2) Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
- main.dart

File main.dart merupakan titik awal (entry point) dari aplikasi Flutter. Eksekusi dimulai dari fungsi main(), yang menjalankan aplikasi melalui pemanggilan runApp(const MyApp()).
Widget MyApp adalah StatelessWidget yang berfungsi sebagai root widget dari seluruh aplikasi.

Di dalam MyApp, digunakan widget MaterialApp sebagai wadah utama aplikasi yang menerapkan Material Design. Widget ini mengatur berbagai aspek penting seperti judul aplikasi (title), tema (theme), skema warna (colorScheme), serta menentukan halaman awal (home) yang ditampilkan, yaitu MyHomePage dari file menu.dart.

Widget ThemeData digunakan untuk mengatur tema aplikasi secara konsisten, seperti warna utama (primarySwatch) dan warna sekunder (secondary). Hal ini memastikan bahwa semua komponen Material Design seperti AppBar, Button, dan SnackBar menggunakan skema warna yang seragam di seluruh aplikasi.

- menu.dart

Widget utama yang digunakan adalah Scaffold, yang berfungsi sebagai kerangka dasar halaman. Scaffold menyediakan struktur umum yang mencakup AppBar di bagian atas dan body sebagai isi halaman. Di dalam AppBar, digunakan widget Text untuk menampilkan judul aplikasi “RADKICKS” dengan gaya teks berwarna putih dan tebal.

Selanjutnya, di dalam body, digunakan Padding untuk memberikan jarak di sekeliling konten utama, sehingga tata letak terlihat lebih rapi. Konten tersebut disusun menggunakan Column, yang menata elemen-elemen secara vertikal. Di dalam Column ini, terdapat Row yang digunakan untuk menampilkan tiga buah InfoCard secara sejajar (horizontal), masing-masing berisi informasi NPM, nama, dan kelas.

Setiap InfoCard dibangun menggunakan widget Card, yang memberikan efek bayangan (elevation) sehingga tampilan menyerupai kartu. Di dalamnya terdapat Container yang mengatur ukuran dan jarak isi kartu, serta Column untuk menata teks judul dan isi secara vertikal. Komponen teks ditampilkan menggunakan widget Text, sementara jarak antar elemen diatur menggunakan SizedBox.

Bagian berikutnya menampilkan pesan sambutan dan daftar menu utama. Widget Center digunakan untuk menempatkan elemen-elemen tersebut di tengah halaman. Pesan sambutan ditampilkan menggunakan Text yang dibungkus dengan Padding agar memiliki jarak dari elemen lain. Setelah itu, daftar menu ditampilkan dalam bentuk grid menggunakan GridView.count, yang menyusun tiga buah ItemCard ke dalam tiga kolom dengan jarak antar item yang seragam.

Setiap ItemCard dibuat menggunakan kombinasi widget Material dan InkWell. Material memberikan efek dan warna sesuai prinsip Material Design, sementara InkWell memberikan efek sentuhan (ripple effect) dan menangani aksi pengguna melalui onTap. Ketika sebuah kartu ditekan, sistem menampilkan SnackBar melalui ScaffoldMessenger, sebagai bentuk umpan balik kepada pengguna. Di dalam kartu, digunakan Container dan Column untuk menata Icon dan Text secara vertikal di bagian tengah kartu.

Selain widget bawaan, proyek ini juga menggunakan dua custom widget, yaitu InfoCard dan ItemCard. Widget InfoCard berfungsi untuk menampilkan informasi pribadi mahasiswa, sedangkan ItemCard berfungsi untuk menampilkan menu interaktif seperti All Products, My Products, dan Create Product. Selain itu, terdapat kelas ItemHomepage yang bukan merupakan widget, namun berfungsi sebagai model data untuk menyimpan atribut dari setiap item, seperti nama, ikon, dan warna.

### 3) Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Widget MaterialApp berperan sebagai fondasi utama aplikasi Flutter yang menerapkan konsep Material Design. Widget ini bertugas mengatur aspek-aspek penting seperti tema, judul, sistem navigasi, serta halaman awal aplikasi. Biasanya, MaterialApp digunakan sebagai widget root karena berfungsi sebagai pembungkus seluruh tampilan dan penyedia konteks bagi widget lain, seperti Scaffold dan AppBar, agar semua elemen Material Design dapat bekerja secara konsisten dan terintegrasi dengan baik.

### 4) Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget merupakan jenis widget yang tidak memiliki kondisi (state), sehingga tampilannya bersifat tetap dan tidak mengalami perubahan selama aplikasi dijalankan. Contohnya meliputi elemen statis seperti teks, ikon, atau tombol yang tidak bergantung pada interaksi pengguna. Sebaliknya, StatefulWidget adalah widget yang memiliki state dan dapat berubah seiring berjalannya aplikasi, misalnya saat pengguna menekan tombol, memasukkan teks, atau ketika terjadi animasi.

Penggunaan StatelessWidget tepat untuk tampilan yang konstan dan tidak memerlukan pembaruan data, sedangkan StatefulWidget digunakan ketika antarmuka harus menyesuaikan diri secara dinamis terhadap interaksi pengguna atau perubahan data aplikasi.

### 5) Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang berfungsi menyimpan informasi mengenai letak sebuah widget di dalam widget tree serta menjadi penghubung antara widget tersebut dengan struktur aplikasi Flutter secara keseluruhan. Dengan kata lain, BuildContext memberikan informasi tentang posisi suatu widget dan memungkinkan widget tersebut mengakses data dari widget di atasnya, seperti tema aplikasi, ukuran layar, maupun navigasi.

Dalam metode build, BuildContext digunakan sebagai parameter yang menyediakan akses ke posisi widget dalam hierarki. Tujuannya adalah agar widget dapat berinteraksi dengan ancestor widget di atasnya dan memperoleh data atau properti yang diperlukan untuk membentuk tampilan.

### 6) Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload merupakan fitur pada Flutter yang memungkinkan pengembang melihat hasil perubahan kode secara instan tanpa menghapus state yang sedang berjalan. Saat perubahan disimpan, Flutter hanya memperbarui bagian kode yang dimodifikasi dan mempertahankan data maupun posisi terakhir aplikasi. Fitur ini mempercepat serta mempermudah proses pengembangan karena tidak perlu menjalankan aplikasi dari awal setiap kali ada perubahan kecil.

Sebaliknya, hot restart akan memulai ulang seluruh aplikasi dari awal dan menghapus semua state yang tersimpan. Flutter akan membangun kembali seluruh widget tree seperti saat pertama kali dijalankan. Fitur ini umumnya digunakan ketika perubahan dilakukan pada bagian inisialisasi variabel global, struktur state, atau aspek lain yang tidak dapat diperbarui melalui hot reload.
</details>

<details>
<summary>README.md for Tugas 8</summary>

## 1) Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Dalam Flutter, baik Navigator.push() maupun Navigator.pushReplacement() digunakan untuk berpindah antar halaman, tetapi keduanya memiliki perbedaan cara kerja. Navigator.push() menambahkan halaman baru di atas tumpukan halaman yang ada, sehingga pengguna masih bisa kembali ke halaman sebelumnya. Sementara itu, Navigator.pushReplacement() menggantikan halaman saat ini dengan halaman baru, sehingga halaman sebelumnya dihapus dan tidak bisa dikembalikan.

Dalam penerapannya, misalnya ketika membuka halaman Add Product dari ItemCard di Home Page, sebaiknya gunakan Navigator.push() agar pengguna bisa kembali ke halaman sebelumnya (Home). Namun, untuk navigasi melalui drawer, lebih tepat menggunakan Navigator.pushReplacement(), karena jika hanya menggunakan push(), tombol kembali bisa membawa pengguna ke halaman yang tidak sesuai (misalnya bukan ke Home). Dengan Navigator.pushReplacement(), halaman diganti sepenuhnya dengan halaman yang dipilih dari drawer.

## 2) Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Untuk menciptakan struktur halaman yang konsisten di seluruh aplikasi, digunakan Scaffold. Dalam Flutter, Scaffold berfungsi sebagai kerangka utama halaman yang menjadi tempat bagi elemen-elemen antarmuka seperti AppBar, Body, dan Drawer, sehingga setiap halaman memiliki struktur yang rapi dan konsisten. AppBar digunakan sebagai bagian atas atau header halaman yang menampilkan judul, ikon, maupun tombol aksi, dengan tujuan menjaga keseragaman tampilan di seluruh aplikasi. Sementara itu, Drawer berperan sebagai menu navigasi samping yang memudahkan pengguna untuk berpindah antar halaman. Setiap item pada Drawer mengarahkan pengguna ke halaman yang sesuai, sehingga navigasi aplikasi menjadi lebih teratur dan konsisten.

## 3) Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
Contoh dari aplikasi saya adalah penggunaan layout widget. Penggunaan layout widget dalam desain membantu membuat tampilan form menjadi lebih teratur dan enak dilihat. Dalam aplikasi, Padding berfungsi untuk memberikan jarak antara elemen form dan tepi layar agar tidak terlihat terlalu rapat. SingleChildScrollView digunakan ketika form memiliki banyak field, sehingga pengguna dapat menggulir halaman ke bawah tanpa menyebabkan tampilan error dan tetap dapat mengakses seluruh input. Sementara itu, ListView dipakai untuk menampilkan kumpulan item seperti daftar menu “Home” dan “Add Product”, yang dapat digulir ke bawah jika jumlah menu terlalu banyak.

## 4) Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Penyesuaian warna dapat dilakukan dengan mengubah warna pada elemen-elemen utama seperti AppBar, ItemCard, dan Drawer. Penggunaan warna yang konsisten di seluruh halaman akan membantu menciptakan identitas visual yang kuat untuk aplikasi RADKICKS.

Dalam contoh aplikasi, tema diatur di main.dart dengan primarySwatch: Colors.blue sebagai warna utama, yang kemudian digunakan pada AppBar di menu.dart melalui Theme.of(context).colorScheme.primary, serta di DrawerHeader pada left_drawer.dart dengan color: Colors.blue. Namun, di productlist_form.dart, AppBar masih menggunakan Colors.indigo secara manual, sehingga menimbulkan ketidakkonsistenan. Untuk menjaga keseragaman dan memperkuat identitas visual, layaknya tema utama diubah langsung di main.dart dengan mengganti primarySwatch menjadi Colors.indigo atau sebaliknya.
</details>

# README.md for Tugas 9

## 1) Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Membuat model Dart saat mengambil atau mengirim data JSON sangat penting karena Dart menggunakan tipe data yang kuat dan mendukung null-safety. Dengan model, data dalam bentuk Map<String, dynamic> dapat diubah menjadi objek Dart yang memiliki struktur jelas, tipe tiap field terjamin, dan lebih aman dari nilai null yang tidak diinginkan. Sebaliknya, jika langsung memakai Map<String, dynamic> tanpa model, aplikasi lebih mudah mengalami error saat runtime akibat tipe data tidak cocok atau nilai yang hilang. Selain itu, kode menjadi kurang rapi dan sulit dipelihara, terutama ketika struktur data semakin rumit atau digunakan di banyak bagian aplikasi. Bila ada perubahan pada data, kamu harus memperbarui banyak bagian kode, bukan hanya satu file model saja.

## 2) Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
Dalam konteks tugas ini, package http dan CookieRequest sama-sama digunakan untuk mengirimkan data antara aplikasi Flutter dan server Django, namun keduanya memiliki fokus yang berbeda. Package http berfungsi sebagai alat dasar untuk melakukan permintaan HTTP seperti GET atau POST tanpa ada pengelolaan sesi. Karena itu, http cocok dipakai untuk endpoint yang tidak memerlukan autentikasi atau pengaturan cookie. Di sisi lain, CookieRequest (dari pbp_django_auth) dibuat khusus untuk menangani komunikasi dengan Django yang memakai autentikasi berbasis sesi. CookieRequest akan otomatis menyimpan cookie yang diterima dari server, mengirimkannya kembali saat melakukan request berikutnya, serta menangani header penting seperti CSRF. Dengan begitu, request yang membutuhkan status login dapat berjalan dengan aman tanpa harus menangani cookie secara manual.

## 3) Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Instance CookieRequest perlu dibagikan ke seluruh bagian aplikasi Flutter karena objek inilah yang memegang informasi sesi dan autentikasi pengguna. Dengan membagikan satu instance yang sama, biasanya melalui Provider atau mekanisme state management lain, setiap halaman dan widget akan memakai data cookie serta status login yang seragam. Jika setiap komponen membuat instance CookieRequest sendiri, masing-masing akan memiliki cookie terpisah sehingga aplikasi bisa kehilangan jejak status login. Dengan satu instance bersama, seluruh fitur yang memerlukan autentikasi dapat bekerja dengan konsisten dan pengalaman pengguna tetap lancar di seluruh aplikasi.

## 4) Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Agar Flutter bisa berkomunikasi dengan Django, ada beberapa pengaturan konektivitas yang harus disiapkan di backend dan di sisi Android. Django perlu menambahkan alamat 10.0.2.2 ke dalam ALLOWED_HOSTS karena pada Android emulator alamat itulah yang berfungsi sebagai akses ke localhost komputer. Jika alamat ini tidak didaftarkan, Django akan menolak permintaan dari Flutter karena dianggap berasal dari host yang tidak diperbolehkan. Django juga harus mengaktifkan CORS serta mengatur SameSite dan cookie agar permintaan dari aplikasi Flutter diizinkan dan cookie sesi yang berkaitan dengan login dapat dikirimkan dan diterima dengan benar. Tanpa konfigurasi tersebut, Django dapat memblokir request lintas origin atau cookie autentikasi tidak akan tersimpan sehingga proses login selalu gagal.

Di sisi Android, aplikasi perlu diberi izin akses internet melalui AndroidManifest.xml. Jika izin ini tidak ditambahkan, Flutter tidak akan bisa melakukan koneksi jaringan sama sekali. Apabila salah satu dari konfigurasi ini tidak dilakukan dengan benar, hasilnya bisa berupa gagal koneksi, host ditolak oleh Django, error CSRF, cookie yang tidak pernah tersimpan, atau aplikasi yang tidak dapat berkomunikasi dengan server.

## 5) Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Proses dimulai ketika pengguna mengisi form di Flutter. Setelah menekan tombol submit, Flutter mengambil nilai dari setiap field, melakukan validasi, lalu mengirimkan data tersebut ke server Django lewat request POST. Django menerima data pada view, melakukan pengecekan ulang, lalu menyimpan data tersebut ke database jika semuanya valid. Setelah penyimpanan berhasil, Django mengirim respons JSON berisi hasil atau data terbaru. Flutter menerima respons ini, mendecode JSON, mengubahnya menjadi model Dart, lalu memperbarui state aplikasi sehingga data yang baru diproses dapat langsung ditampilkan di layar pengguna.

## 6) Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi dimulai ketika pengguna memasukkan data akun pada form register atau login di Flutter. Setelah tombol submit ditekan, Flutter mengirimkan informasi tersebut ke Django menggunakan CookieRequest. Untuk register, Django akan memeriksa data yang dikirim, membuat akun baru jika valid, lalu mengembalikan respons bahwa pendaftaran berhasil. Untuk login, Flutter mengirim username dan password ke endpoint login Django. Django memverifikasi kredensial dengan sistem autentikasinya. Jika cocok, Django membuat session dan mengirim cookie sesi kembali. CookieRequest menyimpan cookie ini sehingga permintaan berikutnya dari Flutter akan otomatis menyertakannya dan Django dapat mengenali pengguna sebagai sudah masuk. Setelah login sukses, Flutter menampilkan menu atau halaman utama yang memerlukan status autentikasi. Saat logout, Flutter memanggil endpoint logout Django. Django kemudian menghapus session di server, sementara CookieRequest menghapus cookie yang disimpan. Setelah itu, Flutter biasanya kembali mengarahkan pengguna ke halaman login, menandakan bahwa sesi telah berakhir.

## 7) Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Saya membuat Django app baru bernama authentication dan menambahkannya ke dalam INSTALLED_APPS di settings.py pada main project. Setelah itu, saya menginstal django-cors-headers, menambahkannya ke INSTALLED_APPS, serta memasukkan corsheaders.middleware.CorsMiddleware ke dalam MIDDLEWARE. Saya juga menambahkan alamat “10.0.2.2” ke dalam ALLOWED_HOSTS. Selanjutnya, saya membuat fungsi login, register, dan logout pada views.py di app authentication, lalu saya menambahkan seluruh fungsi tersebut ke urls.py dan menghubungkan path authentication pada urls.py di project utama radkicks.

Di sisi Flutter, saya menginstal package provider dan pbp_django_auth, kemudian menambahkan CookieRequest pada main.dart. Saya membuat login.dart di folder screens dan mengimplementasikan fitur login, lalu saya mengubah home pada main.dart menjadi LoginPage agar pengguna harus login terlebih dahulu. Setelah itu, saya membuat register.dart dan mengisinya dengan logika register, kemudian saya memodifikasi login.dart agar tombol register dapat mengarahkan pengguna ke halaman register.

Saya membuat model Flutter dari endpoint JSON menggunakan Quicktype, lalu saya membuat folder models dan file product_entry.dart yang berisi kode model tersebut. Saya menambahkan package http dan memodifikasi AndroidManifest.xml agar aplikasi dapat mengakses internet. Pada Django main app, saya membuat fungsi proxy_image di views.py dan menambahkannya ke urls.py.

Di Flutter, saya membuat product_entry_card.dart untuk desain kartu produk, kemudian saya membuat product_entry_list.dart untuk mengambil seluruh produk dari website melalui JSON. Saya memodifikasi left_drawer.dart agar tombol Product List dapat berpindah ke halaman tersebut, dan saya juga memodifikasi menu.dart agar tombol All Products mengarahkan ke halaman yang sama. Setelah itu, saya membuat news_detail.dart sebagai halaman detail produk, dan saya menambahkan navigasi di product_entry_list.dart agar ketika kartu diklik, pengguna diarahkan ke halaman detail.

Pada Django, saya membuat fungsi add_product_flutter untuk membuat produk baru dari Flutter, lalu saya menambahkannya ke urls.py. Saya memodifikasi productlist_form.dart agar dapat menggunakan CookieRequest dan mengirim data produk baru dalam format JSON. Saya juga menambahkan fungsi logout di authentication Django serta menambahkan path-nya, kemudian saya mengimplementasikan logout dan penggunaan CookieRequest pada menu.dart.

Terakhir, saya membuat fungsi my_products di Django untuk memfilter produk milik pengguna yang sedang login, lalu saya membuat file baru dengan nama my_product_entry_list.dart agar mendukung filter tersebut, lalu diimport di file left_drawer.dart dan product_card.dart. Saya juga memodifikasi menu.dart agar tombol My Products dapat mengarahkan pengguna ke ProductEntryListPage.
