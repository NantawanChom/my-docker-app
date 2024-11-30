# my-docker-app
Practice for docker


## คำสั่งพื้นฐานเกี่ยวกับ Docker
### ตรวจสอบสถานะ
- ตรวจสอบเวอร์ชัน Docker

```
docker --version
```

- ตรวจสอบข้อมูลเกี่ยวกับ Docker บนระบบ

```
docker info
```

## คำสั่งเกี่ยวกับ Images
### ดึง (Pull) Image จาก Docker Hub

```
docker pull [image_name]
```

### ดูรายการ Images ที่มีในระบบ

```
docker images
```

### สร้าง Image จาก Dockerfile

```
docker build -t [image_name] .
```

### ลบ Image

```
docker rmi [image_id or image_name]
```

## คำสั่งเกี่ยวกับ Containers
### สร้างและรัน Container

```
docker run -p [host_port]:[container_port] [image_name]
```

### ดู Containers ที่กำลังรัน

```
docker ps
```

### ดู Containers ทั้งหมด (รวมที่หยุดแล้ว)

```
docker ps -a
```

### หยุด Container

```
docker stop [container_id or container_name]
```

### เริ่ม Container ใหม่อีกครั้ง

```
docker start [container_id or container_name]
```

### ลบ Container

```
docker rm [container_id or container_name]
```

## จัดการ Volumes
### ดู Volumes ทั้งหมด

```
docker volume ls
```

### สร้าง Volume

```
docker volume create [volume_name]
```

### ลบ Volume

```
docker volume rm [volume_name]
```

## คำสั่งเกี่ยวกับ Networks
### ดู Networks ทั้งหมด

```
docker network ls
```

### สร้าง Network ใหม่

```
docker network create [network_name]
```

### เชื่อม Container กับ Network

```
docker network connect [network_name] [container_name or container_id]
```

### ตัดการเชื่อมต่อ Container กับ Network

```
docker network disconnect [network_name] [container_name or container_id]
```

## Debugging และการตรวจสอบ
### ดู Logs ของ Container

```
docker logs [container_id or container_name]
```

### เข้าถึง Shell ของ Container

```
docker exec -it [container_id or container_name] /bin/bash
```

## การทำความสะอาด
### ลบ Containers ที่หยุดทำงานทั้งหมด

```
docker container prune
```

### ลบ Images ที่ไม่ได้ใช้งาน

```
docker image prune
```

### ลบทุกอย่างที่ไม่ได้ใช้งาน (Containers, Images, Volumes, Networks)

```
docker system prune
```