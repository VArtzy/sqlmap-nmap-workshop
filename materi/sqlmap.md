# Latihan dan Penggunaan SQLMap

### Lingkungan Lab

Kita akan menggunakan **Kali Linux** sebagai sistem operasi utama karena sudah dilengkapi dengan SQLMap. Selain itu, kita akan menggunakan **Docker** untuk menjalankan aplikasi web yang rentan.

#### Langkah-langkah Persiapan:

1. **Instal VirtualBox**: Unduh dan instal VirtualBox dari [virtualbox.org](https://virtualbox.org).
2. **Unduh Kali Linux**: Unduh image Kali Linux (OVA) dari [kali.org/downloads](https://kali.org/downloads).
3. **Impor Kali Linux ke VirtualBox**: Buka VirtualBox, impor file OVA yang telah diunduh.
4. **Instal Docker**: Setelah Kali Linux berjalan, buka terminal dan jalankan perintah berikut:
   ```bash
   sudo apt update
   sudo apt install -y docker.io
   sudo systemctl enable docker --now
   sudo usermod -aG docker $USER
   ```
   Setelah itu, logout dan login kembali untuk menerapkan perubahan.

5. **Jalankan Aplikasi Rentan**: Kita akan menggunakan aplikasi **Damn Vulnerable Web Application (DVWA)**. Jalankan perintah berikut:
   ```bash
   docker run --rm -it -p 8080:80 vulnerables/web-dvwa
   ```
   Buka browser dan akses `http://127.0.0.1:8080`. Login dengan username `admin` dan password `password`.

## Menggunakan SQLMap

### Langkah 1: Menemukan SQL Injection

Setelah lingkungan lab siap, kita akan menggunakan SQLMap untuk menemukan dan mengeksploitasi SQL Injection.

1. **Identifikasi Target**: Buka DVWA dan navigasikan ke bagian **SQL Injection**. Coba masukkan ID pengguna dan perhatikan URL-nya. Misalnya:
   ```
   http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit
   ```

2. **Gunakan SQLMap**: Buka terminal di Kali Linux dan jalankan perintah berikut:
   ```bash
   sqlmap -u "http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="PHPSESSID=your_session_id; security=low" --batch
   ```
   Ganti `your_session_id` dengan session ID yang Anda dapatkan dari browser.

3. **Enumerasi Database**: SQLMap akan mulai memindai target dan mencoba menemukan kerentanan. Jika ditemukan, SQLMap akan menampilkan informasi tentang database, termasuk tabel dan kolom.

### Langkah 2: Mengeksploitasi SQL Injection

Setelah menemukan kerentanan, kita dapat menggunakan SQLMap untuk mengeksploitasi database.

1. **Enumerasi Tabel**: Untuk melihat tabel dalam database, jalankan perintah:
   ```bash
   sqlmap -u "http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="PHPSESSID=your_session_id; security=low" --tables --batch
   ```

2. **Dump Data**: Untuk mengambil data dari tabel tertentu, misalnya tabel `users`, jalankan perintah:
   ```bash
   sqlmap -u "http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="PHPSESSID=your_session_id; security=low" --dump -T users --batch
   ```
   SQLMap akan mencoba mengambil data dari tabel `users`, termasuk hash kata sandi.

3. **Crack Password**: SQLMap memiliki fitur built-in untuk mencoba memecahkan hash kata sandi menggunakan serangan dictionary. Jika hash berhasil dipecahkan, SQLMap akan menampilkan kata sandi dalam bentuk plaintext.

### Langkah 3: Menggunakan Fitur Lanjutan

SQLMap memiliki banyak fitur lanjutan yang dapat digunakan untuk eksploitasi lebih dalam, seperti:

- **Mengunggah File**: Anda dapat mengunggah file ke server database menggunakan SQLMap.
- **Menjalankan Perintah**: SQLMap dapat menjalankan perintah arbitrer pada server database.
- **Out-of-Band Exploitation**: Teknik ini memungkinkan Anda mengambil data melalui koneksi out-of-band.

## Kesimpulan

SQLMap adalah alat yang sangat powerful untuk mendeteksi dan mengeksploitasi kerentanan SQL Injection. Dalam workshop ini, kita telah mempelajari cara dasar menggunakan SQLMap, mulai dari persiapan lingkungan lab hingga mengeksploitasi database. Namun, penting untuk diingat bahwa penggunaan SQLMap harus selalu dilakukan dalam lingkungan yang sah dan dengan izin yang jelas.

Untuk mempelajari lebih lanjut tentang fitur-fitur lanjutan SQLMap, Anda dapat mengikuti kursus lanjutan atau membaca dokumentasi resmi SQLMap di GitHub.

---

**Catatan**: Workshop ini hanya untuk tujuan edukasi. Selalu pastikan Anda memiliki izin sebelum melakukan pengujian keamanan pada sistem apa pun.

---

**Referensi**:
- [SQLMap GitHub Repository](https://github.com/sqlmapproject/sqlmap)
- [Kali Linux Documentation](https://www.kali.org/docs/)
- [Damn Vulnerable Web Application (DVWA)](http://www.dvwa.co.uk/)
