# Pengantar Nmap

## Pendahuluan

Nmap adalah alat pemindaian jaringan yang sangat powerful dan sering digunakan dalam penetration testing. Dalam workshop ini, kita akan mempelajari cara menggunakan Nmap untuk melakukan berbagai tugas dalam penetration testing, mulai dari **host discovery** hingga **identifikasi kerentanan**. Workshop ini dirancang untuk membantu Anda memahami bagaimana Nmap dapat menjadi alat yang sangat berguna dalam toolkit seorang penetration tester.

## Persiapan Workshop

Sebelum memulai, pastikan Anda memiliki:
1. **Kali Linux** atau distribusi Linux lainnya yang sudah terinstal Nmap.
2. **VirtualBox** atau VMware untuk menjalankan mesin virtual.
3. **Docker** (opsional) untuk menjalankan aplikasi rentan.

### Langkah-langkah Persiapan:
1. **Instal Nmap**: Jika belum terinstal, Anda dapat menginstal Nmap dengan perintah:
   ```bash
   sudo apt update
   sudo apt install nmap
   ```
2. **Siapkan Lingkungan Lab**: Anda dapat menggunakan mesin virtual atau Docker untuk membuat lingkungan lab yang rentan.

## Langkah 1: Host Discovery

### 1.1. Pemindaian ARP (Layer 2)
Pemindaian ARP digunakan untuk menemukan host yang aktif dalam jaringan lokal. Perintahnya adalah:
```bash
nmap -PR 10.0.2.0/24
```
- `-PR`: Menggunakan ARP untuk menemukan host.
- `10.0.2.0/24`: Subnet yang akan dipindai.

**Hasil**: Nmap akan mengembalikan daftar host yang aktif dalam jaringan.

### 1.2. Pemindaian ICMP (Layer 3)
Jika ARP tidak bekerja (misalnya, pada jaringan eksternal), kita dapat menggunakan ICMP:
```bash
sudo nmap -PE -sn scanme.nmap.org
```
- `-PE`: Menggunakan ICMP Echo Request.
- `-sn`: Hanya melakukan host discovery, tidak melakukan port scanning.

**Hasil**: Nmap akan mengembalikan host yang merespons ICMP Echo Request.

### 1.3. Pemindaian TCP (Layer 4)
Jika ICMP diblokir, kita dapat menggunakan TCP:
```bash
nmap -PA80 scanme.nmap.org
```
- `-PA80`: Mengirim paket TCP ACK ke port 80.

**Hasil**: Nmap akan mengembalikan host yang merespons paket TCP.
