# Glossary

## A

### ARP (Address Resolution Protocol)
Protokol yang digunakan untuk menemukan alamat MAC (Media Access Control) dari perangkat berdasarkan alamat IP-nya. Digunakan dalam **host discovery** pada jaringan lokal.

## B

### Boolean-based Blind SQL Injection
Teknik SQL Injection di mana penyerang mengirimkan query SQL yang menghasilkan respons berbeda berdasarkan kondisi benar atau salah (boolean). Digunakan ketika hasil query tidak langsung terlihat.

## C

### CAPTCHA
Challenge-response test yang digunakan untuk menentukan apakah pengguna adalah manusia atau bot.

### Closed Port
Port yang tidak menerima koneksi dari luar. Biasanya menunjukkan bahwa layanan tidak aktif atau diblokir oleh firewall.

### CSS Selector
Pola yang digunakan untuk memilih elemen HTML tertentu pada halaman web.

## D

### Database Fingerprinting
Proses mengidentifikasi jenis dan versi database yang digunakan oleh aplikasi web. Berguna dalam **SQL Injection** untuk menentukan teknik eksploitasi yang tepat.

### DOM (Document Object Model)
Representasi struktur dokumen HTML/XML sebagai pohon objek yang dapat dimanipulasi oleh bahasa seperti JavaScript.

### Dynamic Content
Konten web yang dimuat setelah halaman utama atau yang diperbarui tanpa refresh halaman penuh, sering menggunakan JavaScript.

## E

### Enumeration
Proses mengumpulkan informasi rinci tentang sistem, seperti pengguna, tabel database, atau layanan yang berjalan. Sering digunakan dalam **SQL Injection** dan **penetration testing**.

## F

### Filtered Port
Port yang tidak dapat diakses karena diblokir oleh firewall atau mekanisme keamanan lainnya. Status ini menunjukkan bahwa port mungkin ada, tetapi tidak dapat diakses.

### Form Submission
Proses mengotomatisasi pengisian dan pengiriman formulir web untuk mengakses data yang memerlukan input pengguna.

### FTP (File Transfer Protocol)
Protokol yang digunakan untuk mentransfer file antara komputer melalui jaringan. Sering dipindai dalam **penetration testing** untuk menemukan layanan yang rentan.

## G

### GET Request
Metode HTTP yang digunakan untuk mengambil data dari server dan umumnya digunakan dalam web scraping.

### Geolocation Spoofing
Teknik untuk menyamarkan lokasi geografis asli perangkat selama scraping untuk menghindari pembatasan berbasis lokasi.

## H

### Host
Perangkat atau komputer yang terhubung ke jaringan dan memiliki alamat IP. Dalam **penetration testing**, host adalah target yang akan dipindai.

### Headers
Metadata yang dikirim dengan permintaan HTTP yang dapat mempengaruhi bagaimana server merespons, sering dimodifikasi untuk menghindari deteksi bot.

### HTML Parser
Program atau pustaka yang dapat membaca dan memahami struktur dokumen HTML.

## I

### ICMP (Internet Control Message Protocol)
Protokol yang digunakan untuk mengirim pesan kesalahan dan informasi operasional dalam jaringan. Digunakan dalam **host discovery** dengan mengirimkan **ping** (ICMP Echo Request).

### IP (Internet Protocol)
Alamat unik yang digunakan untuk mengidentifikasi perangkat dalam jaringan. Dalam **penetration testing**, alamat IP adalah target utama untuk pemindaian.

### IP Rotation
Teknik mengubah alamat IP secara berkala selama proses scraping untuk menghindari pembatasan berbasis IP.

## K

### Kali Linux
Distribusi Linux yang dirancang khusus untuk keamanan informasi dan penetration testing. Sering digunakan untuk menjalankan alat seperti **Nmap** dan **SQLMap**.

### Keyword Extraction
Teknik untuk mengidentifikasi dan mengekstrak kata atau frasa penting dari teks yang discrape.

## L

### Layer 2 Scanning
Pemindaian jaringan yang dilakukan pada lapisan data link (ARP). Digunakan untuk menemukan host dalam jaringan lokal.

### Layer 3 Scanning
Pemindaian jaringan yang dilakukan pada lapisan jaringan (IP). Menggunakan protokol seperti ICMP untuk menemukan host.

### Layer 4 Scanning
Pemindaian jaringan yang dilakukan pada lapisan transport (TCP/UDP). Menggunakan port scanning untuk menemukan layanan yang berjalan.

## M

### MAC Address (Media Access Control Address)
Alamat unik yang ditetapkan ke antarmuka jaringan perangkat. Digunakan dalam **ARP scanning** untuk mengidentifikasi perangkat dalam jaringan lokal.

### Metasploit
Framework penetration testing yang digunakan untuk mengembangkan dan menjalankan exploit terhadap target yang rentan.

## N

### Nmap (Network Mapper)
Alat open source untuk pemindaian jaringan dan keamanan. Digunakan untuk menemukan host, port, layanan, dan kerentanan dalam jaringan.

## O

### Open Port
Port yang menerima koneksi dari luar. Menunjukkan bahwa layanan tertentu sedang berjalan dan dapat diakses.

### OAuth
Protokol otorisasi yang memungkinkan aplikasi pihak ketiga mendapatkan akses terbatas ke layanan HTTP, terkadang digunakan untuk scraping API resmi.

## P

### Port
Endpoint komunikasi dalam jaringan. Setiap port dikaitkan dengan layanan tertentu, seperti HTTP (port 80) atau SSH (port 22).

### Proxy
Server perantara yang bertindak sebagai jembatan antara scraper dan situs target, membantu menghindari pemblokiran dan pembatasan.

## Q

### Query Parameter
Bagian dari URL yang berisi data yang dapat dimodifikasi untuk mempengaruhi konten yang ditampilkan, penting untuk scraping halaman dengan filter.

## S

### Service
Program atau proses yang berjalan pada port tertentu dan menyediakan fungsi tertentu, seperti web server (HTTP) atau database (MySQL).

### SQL Injection
Serangan keamanan di mana penyerang menyisipkan query SQL berbahaya ke input aplikasi web untuk memanipulasi database.

### SMB (Server Message Block)
Protokol yang digunakan untuk berbagi file, printer, dan sumber daya lainnya dalam jaringan. Sering menjadi target dalam **penetration testing**.

## T

### TCP (Transmission Control Protocol)
Protokol komunikasi yang andal dan berorientasi koneksi. Digunakan dalam **port scanning** untuk menemukan layanan yang berjalan.

### Target
Sistem atau perangkat yang menjadi sasaran dalam **penetration testing** atau **network scanning**.

### Time-based Blind SQL Injection
Teknik SQL Injection di mana penyerang menggunakan waktu respons untuk menentukan kebenaran suatu kondisi. Digunakan ketika hasil query tidak langsung terlihat.

## U

### UDP (User Datagram Protocol)
Protokol komunikasi yang tidak berorientasi koneksi dan lebih cepat daripada TCP. Digunakan dalam **port scanning** untuk menemukan layanan yang berjalan.

### User-Agent
String yang mengidentifikasi browser dan sistem operasi yang membuat permintaan HTTP, sering dimodifikasi dalam web scraping.

## V

### Version Detection
Proses mengidentifikasi versi layanan atau perangkat lunak yang berjalan pada port tertentu. Berguna dalam **penetration testing** untuk menemukan kerentanan.

### Vulnerability
Kelemahan dalam sistem atau aplikasi yang dapat dieksploitasi oleh penyerang. **Nmap** dan **SQLMap** sering digunakan untuk mengidentifikasi kerentanan.

## W

### Wireshark
Alat analisis jaringan yang digunakan untuk memantau dan menganalisis lalu lintas jaringan. Sering digunakan dalam **penetration testing**.
