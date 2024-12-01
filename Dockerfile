# # ใช้ Python 3.9 เป็น base image
# FROM python:3.9-slim

# # ตั้ง working directory
# WORKDIR /app

# # คัดลอกไฟล์โปรเจ็กต์ไปใน container
# COPY . /app

# # ติดตั้ง dependencies
# RUN pip install -r requirements.txt

# # เปิดพอร์ต 5000
# EXPOSE 5000

# # คำสั่งรันโปรแกรม
# CMD ["python", "app.py"]

FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]