#langkah - langkah
1. Buat file lib/models/item.dart → isi dengan kode seperti di file item dart
    File ini membuat class Item sebagai model produk.Setiap produk punya nama, gambar, harga, stok, dan rating.
2. Buat file lib/pages/home_page.dart → isi dengan kode seperti di file home page
   Menampilkan daftar produk dalam bentuk Grid.Menggunakan ItemCard untuk menampilkan setiap produk. Menambahkan footer nama dan NIM kamu.
3. Buat file lib/pages/item_page.dart → isi dengan kode item page 
   Mengambil data produk dari halaman utama menggunakan arguments. Menampilkan detail produk lengkap.
4. Buat file lib/widgets/item_card.dart → isi dengan kode item card
   Membuat kartu produk yang dapat diklik. Jika diklik, aplikasi berpindah ke halaman detail.
5. Edit file lib/main.dart → isi dengan kode seperti di mai dart
   Menentukan routing antar halaman. Halaman utama (/) → HomePage. Halaman detail (/item) → ItemPage.

   Maka hasilnya :
   