- You can download file project in this link :
https://drive.google.com/file/d/1iMCSmUzlQ1OqIU72o9IGbPMeghFbj_zK/view?usp=sharing

- a. Make sure this direktori like this :

```bash
alvinzanuaputra@alvinzanua:~/Laravel_docker$ ls
Dockerfile  artisan        composer.lock  docker-compose.yml  resources  tests
README.md   bootstrap      config         lang                routes     vendor
app         composer.json  database       public              storage    webpack.mix.js
alvinzanuaputra@alvinzanua:~/Laravel_docker$ 


- b. Selanjutnya, karena Shaniz696969 mengatakan bahwa aplikasi ini menggunakan relational database berupa MySQL, mau tidak mau kamu harus membuat container yang menjalankan image dari MySQL! Pastikan container berjalan sebagai daemon.

- c. Kamu ingat bahwa sudah membuat image dari aplikasi Shaniz696969? Nah, sekarang, jalankan image tersebut sebagai container. Pastikan container berjalan sebagai daemon.

- d. Apa lagi yang kurang? Yup, kamu harus melakukan koneksi antara aplikasi backend tersebut dengan database yang telah dijalankan. Tentunya, dalam container yang telah kita jalankan di poin-poin sebelumnya, kan? Nah, lakukan koneksi antara dua container tersebut dalam satu network bernama **Shani-net**!

- e. Terakhir, kamu harus lakukan setup pada aplikasi backend tersebut dengan menggunakan dokumentasi Laravel sebagai panduan kalian! Aplikasi harus bisa diakses melalui http://localhost:9090. Agar lebih legit, kalian bisa melakukan hit pada endpoint `/api/province`.

