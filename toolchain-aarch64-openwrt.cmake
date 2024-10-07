# toolchain-aarch64-openwrt.cmake

# ระบบเป้าหมายคือ Linux
SET(CMAKE_SYSTEM_NAME Linux)
# สถาปัตยกรรมคือ AArch64 (ARM64)
SET(CMAKE_SYSTEM_PROCESSOR aarch64)

# ระบุ compiler ที่ใช้ในการคอมไพล์
SET(CMAKE_C_COMPILER aarch64-openwrt-linux-gcc)
SET(CMAKE_CXX_COMPILER aarch64-openwrt-linux-g++)

# ระบุ paths ไปยัง toolchain และ sysroot
SET(TOOLCHAIN_PATH /home/robot24/openwrt-sdk-23.05.4-mediatek-filogic_gcc-12.3.0_musl.Linux-x86_64/staging_dir/toolchain-aarch64_cortex-a53_gcc-12.3.0_musl)

# ตั้งค่า sysroot ซึ่งอาจจะมีการใช้ headers และ libraries ของ OpenWRT
SET(CMAKE_SYSROOT ${TOOLCHAIN_PATH}/sysroot)

# ตั้งค่า flags สำหรับการคอมไพล์ (ปรับให้เหมาะสมกับเป้าหมาย)
SET(CMAKE_C_FLAGS "-O2 -march=armv8-a -mtune=cortex-a53")
SET(CMAKE_CXX_FLAGS "-O2 -march=armv8-a -mtune=cortex-a53")

# ตั้งค่าการค้นหาไลบรารีและ header files
SET(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# ระบุ path ไปยัง linker และการตั้งค่าสำหรับการลิงก์
SET(CMAKE_EXE_LINKER_FLAGS "-L${TOOLCHAIN_PATH}/lib")

