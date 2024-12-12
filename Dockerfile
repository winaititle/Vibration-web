# Dockerfile
FROM node:18

# สร้าง directory สำหรับ app
WORKDIR /usr/src/app

# คัดลอก package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install -g nodemon

# คัดลอกไฟล์ทั้งหมดไปยัง container
COPY . .

# รันแอปพลิเคชัน
CMD ["node", "server.js"]
