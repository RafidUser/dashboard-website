# Gunakan Nginx sebagai base image
FROM nginx:alpine

# Copykan semua file dari direktori lokal ke dalam direktori default Nginx
COPY . /usr/share/nginx/html

# Nginx secara default akan mengekspose port 80
EXPOSE 8803

# Command untuk menjalankan Nginx di background saat container berjalan
CMD ["nginx", "-g", "daemon off;"]  