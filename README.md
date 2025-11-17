<details>
<summary>README.md for Tugas 7</summary>

## JAWABAN UNTUK PERTANYAAN TUGAS 6
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

# README.md for Tugas 8

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
