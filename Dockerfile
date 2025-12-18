# 1. Chọn hệ điều hành nền siêu nhẹ (Alpine) để tiết kiệm dung lượng
FROM node:18-alpine

# 2. Tạo thư mục làm việc bên trong container
WORKDIR /app

# 3. Copy file danh sách thư viện trước (để tận dụng bộ nhớ đệm)
COPY package*.json ./

# 4. Cài đặt thư viện (chỉ cài những cái cần thiết để chạy)
RUN npm install --production

# 5. Copy toàn bộ code của bạn vào trong container
COPY . .

# 6. Mở cổng 3000 (hoặc cổng mà server.js của bạn đang dùng)
EXPOSE 3000

# 7. Lệnh chạy ứng dụng
CMD ["node", "server.js"]