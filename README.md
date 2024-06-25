- You can download file project in this link :
https://drive.google.com/file/d/1iMCSmUzlQ1OqIU72o9IGbPMeghFbj_zK/view?usp=sharing

- a. Make sure this direktori like this :

```bash
alvinzanuaputra@alvinzanua:~/Laravel_docker$ ls
Dockerfile  artisan        composer.lock  docker-compose.yml  resources  tests
README.md   bootstrap      config         lang                routes     vendor
app         composer.json  database       public              storage    webpack.mix.js
alvinzanuaputra@alvinzanua:~/Laravel_docker$ 
```


- b. Selanjutnya, karena Shaniz696969 mengatakan bahwa aplikasi ini menggunakan relational database berupa MySQL, mau tidak mau kamu harus membuat container yang menjalankan image dari MySQL! Pastikan container berjalan sebagai daemon.

- c. Kamu ingat bahwa sudah membuat image dari aplikasi Shaniz696969? Nah, sekarang, jalankan image tersebut sebagai container. Pastikan container berjalan sebagai daemon.

- d. Apa lagi yang kurang? Yup, kamu harus melakukan koneksi antara aplikasi backend tersebut dengan database yang telah dijalankan. Tentunya, dalam container yang telah kita jalankan di poin-poin sebelumnya, kan? Nah, lakukan koneksi antara dua container tersebut dalam satu network bernama **Shani-net**!

- e. Terakhir, kamu harus lakukan setup pada aplikasi backend tersebut dengan menggunakan dokumentasi Laravel sebagai panduan kalian! Aplikasi harus bisa diakses melalui http://localhost:9090. Agar lebih legit, kalian bisa melakukan hit pada endpoint `/api/province`.

## NOTA BANE :
#### _CARA MENJALANKAN_
1. Jangan lupa download docker desktop atau buat akun di website resmi docker :
 
```bash
docker login
```

![Screenshot 2024-06-26 001838](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/61d4fb49-9561-4b60-adad-6c809ae1c481)


2. Jalankan docker compose dan tunggu hingga selesai:
 
```bash
docker-compose up -d
```

![Screenshot 2024-06-26 000844](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/90106994-7254-431f-84c0-a482194621b8)

### TANDA SUDAH SELESAI :

![Screenshot 2024-06-26 001243](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/765ebd4c-2d09-48b6-bebc-c1b1514214ef)


```bash
docker-compose up --build
```

![Screenshot 2024-06-26 002134](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/f1809214-90fa-4d81-928c-f8f99490fb31)

### HENTIKAN CTRL + C


### ULANGI

```bash
docker-compose up -d
```

![Screenshot 2024-06-26 001658](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/3fc443f0-9aa3-4dfd-ba34-f5eecd248ca7)

![Screenshot 2024-06-26 002014](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/942757d7-9006-48db-9080-7da4540644f9)


3. selanjutnya buka `http://localhost:9090`
 
![Screenshot 2024-06-26 001611](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/2335e84f-63db-4723-bf14-b64785447b2d)

  
4. lalu hit api yaitu `http://localhost:9090/api/province`

![Screenshot 2024-06-26 001736](https://github.com/alvinzanuaputra/docker-laravel/assets/140075243/64fbbb46-27b6-49aa-8dac-132652b2af52)

