# CMakeLists.txt

# กำหนดขั้นต่ำของเวอร์ชัน CMake
cmake_minimum_required(VERSION 3.10)

# ตั้งชื่อโปรเจกต์
project(HelloOpenWRT)

# เพิ่ม executable จากไฟล์ source ที่ชื่อว่า main.c
add_executable(hello main.c)

