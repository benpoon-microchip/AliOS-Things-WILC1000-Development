AOS_SDK_MAKEFILES           		+= ./framework/atparser/atparser.mk ./board/atsame54-xpro/atsame54-xpro.mk ./out/helloworld@atsame54-xpro/auto_component/auto_component.mk ./tools/cli/cli.mk ./utility/digest_algorithm/digest_algorithm.mk ./kernel/hal/hal.mk ./example/helloworld/helloworld.mk ./kernel/init/init.mk ././kernel/vfs/device/device.mk ./utility/libc/libc.mk ./utility/log/log.mk ./kernel/modules/fs/kv/kv.mk ././platform/arch/arm/armv7m/armv7m.mk ././platform/mcu/atsamd5x_e5x/atsamd5x_e5x.mk ./kernel/rhino/rhino.mk ./device/sal/sal.mk ./device/sal/wifi/mk3060/mk3060.mk ./kernel/vcall/vcall.mk ./kernel/vfs/vfs.mk ./kernel/yloop/yloop.mk
TOOLCHAIN_NAME            		:= GCC
AOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -mcpu=cortex-m4 -mlittle-endian -mthumb -mthumb-interwork --specs=nosys.specs --specs=nano.specs -u _printf_float -T platform/mcu/atsamd5x_e5x/Drivers/gcc/gcc/same54p20a_flash.ld
AOS_SDK_LDS_FILES                     += 
AOS_SDK_LDS_INCLUDES                  += 
RESOURCE_CFLAGS					+= -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\" -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"
AOS_SDK_LINK_SCRIPT         		+= 
AOS_SDK_LINK_SCRIPT_CMD    	 	+= 
AOS_SDK_PREBUILT_LIBRARIES 	 	+= 
AOS_SDK_CERTIFICATES       	 	+= 
AOS_SDK_PRE_APP_BUILDS      		+= 
AOS_SDK_LINK_FILES          		+=                                        
AOS_SDK_INCLUDES           	 	+=                        -I./framework/atparser/./ -I./board/atsame54-xpro/. -I./tools/cli/include -I./utility/digest_algorithm/. -I./kernel/modules/fs/kv/include -I././platform/arch/arm/armv7m/gcc/m4/ -I././platform/mcu/atsamd5x_e5x/aos -I././platform/mcu/atsamd5x_e5x/Drivers -I././platform/mcu/atsamd5x_e5x/Drivers/config -I././platform/mcu/atsamd5x_e5x/Drivers/hal/include -I././platform/mcu/atsamd5x_e5x/Drivers/hal/utils/include -I././platform/mcu/atsamd5x_e5x/Drivers/hri -I././platform/mcu/atsamd5x_e5x/Drivers/CMSIS/Include -I././platform/mcu/atsamd5x_e5x/Drivers/include -I././platform/mcu/atsamd5x_e5x/src/ATSAME54-XPRO/runapp -I./kernel/rhino/core/include -I./kernel/rhino/debug/include -I./device/sal/./include -I./device/sal/wifi/mk3060/./ -I./kernel/vcall/./mico/include -I./kernel/vfs/include -I./include -I./example/helloworld
AOS_SDK_DEFINES             		+=                   -DBUILD_BIN -DAOS_ATCMD -DSTDIO_UART=2 -DHAVE_NOT_ADVANCED_FORMATE -DCONFIG_AOS_CLI -DAOS_HAL -DAOS_NO_WIFI -DAOS_KV -DCONFIG_AOS_KV_MULTIPTN_MODE -DCONFIG_AOS_KV_PTN=6 -DCONFIG_AOS_KV_SECOND_PTN=7 -DCONFIG_AOS_KV_PTN_SIZE=4096 -DCONFIG_AOS_KV_BUFFER_SIZE=8192 -DWITH_SAL -DDEV_SAL_MK3060 -DVCALL_RHINO -DAOS_VFS -DAOS_LOOP
COMPONENTS                		:= atparser board_atsame54-xpro auto_component cli digest_algorithm hal helloworld kernel_init vfs_device newlib_stub log kv armv7m atsame54 rhino sal device_sal_mk3060 vcall vfs yloop
PLATFORM_DIRECTORY        		:= atsame54-xpro
APP_FULL                  		:= helloworld
PLATFORM                  		:= atsame54-xpro
HOST_MCU_FAMILY                  	:= atsamd5x_e5x
SUPPORT_BINS                          := no
APP                       		:= helloworld
HOST_OPENOCD              		:= atsame54
JTAG              		        := jlink_swd
HOST_ARCH                 		:= Cortex-M4
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
atparser_LOCATION         := ./framework/atparser/
board_atsame54-xpro_LOCATION         := ./board/atsame54-xpro/
auto_component_LOCATION         := ./out/helloworld@atsame54-xpro/auto_component/
cli_LOCATION         := ./tools/cli/
digest_algorithm_LOCATION         := ./utility/digest_algorithm/
hal_LOCATION         := ./kernel/hal/
helloworld_LOCATION         := ./example/helloworld/
kernel_init_LOCATION         := ./kernel/init/
vfs_device_LOCATION         := ././kernel/vfs/device/
newlib_stub_LOCATION         := ./utility/libc/
log_LOCATION         := ./utility/log/
kv_LOCATION         := ./kernel/modules/fs/kv/
armv7m_LOCATION         := ././platform/arch/arm/armv7m/
atsame54_LOCATION         := ././platform/mcu/atsamd5x_e5x/
rhino_LOCATION         := ./kernel/rhino/
sal_LOCATION         := ./device/sal/
device_sal_mk3060_LOCATION         := ./device/sal/wifi/mk3060/
vcall_LOCATION         := ./kernel/vcall/
vfs_LOCATION         := ./kernel/vfs/
yloop_LOCATION         := ./kernel/yloop/
atparser_SOURCES          += atparser.c 
board_atsame54-xpro_SOURCES          += board.c 
auto_component_SOURCES          +=  component_init.c testcase_register.c
cli_SOURCES          += cli.c dumpsys.c 
digest_algorithm_SOURCES          += CheckSumUtils.c crc.c crc16.c digest_algorithm.c md5.c 
hal_SOURCES          += ota.c wifi.c 
helloworld_SOURCES          += helloworld.c 
kernel_init_SOURCES          += aos_init.c 
vfs_device_SOURCES          += vfs_adc.c vfs_gpio.c vfs_i2c.c vfs_pwm.c vfs_rtc.c vfs_spi.c vfs_uart.c vfs_wdg.c 
newlib_stub_SOURCES          += newlib_stub.c 
log_SOURCES          += log.c 
kv_SOURCES          += kvmgr.c 
armv7m_SOURCES          += gcc/m4/port_c.c gcc/m4/port_s.S 
atsame54_SOURCES          += Drivers/atmel_start.c Drivers/driver_init.c Drivers/gcc/gcc/startup_same54.c Drivers/gcc/system_same54.c Drivers/hal/src/hal_atomic.c Drivers/hal/src/hal_delay.c Drivers/hal/src/hal_flash.c Drivers/hal/src/hal_gpio.c Drivers/hal/src/hal_init.c Drivers/hal/src/hal_io.c Drivers/hal/src/hal_rtos.c Drivers/hal/src/hal_sleep.c Drivers/hal/src/hal_usart_os.c Drivers/hal/utils/src/utils_assert.c Drivers/hal/utils/src/utils_event.c Drivers/hal/utils/src/utils_list.c Drivers/hal/utils/src/utils_ringbuffer.c Drivers/hal/utils/src/utils_syscalls.c Drivers/hpl/core/hpl_core_m4.c Drivers/hpl/core/hpl_init.c Drivers/hpl/dmac/hpl_dmac.c Drivers/hpl/gclk/hpl_gclk.c Drivers/hpl/mclk/hpl_mclk.c Drivers/hpl/nvmctrl/hpl_nvmctrl.c Drivers/hpl/osc32kctrl/hpl_osc32kctrl.c Drivers/hpl/oscctrl/hpl_oscctrl.c Drivers/hpl/pm/hpl_pm.c Drivers/hpl/ramecc/hpl_ramecc.c Drivers/hpl/sercom/hpl_sercom.c Drivers/hpl/systick/hpl_systick.c aos/aos.c aos/soc_impl.c aos/trace_impl.c hal/hal_flash_port.c hal/hal_timer_port.c hal/hal_uart_start.c hal/misc.c hal/ota_port.c 
rhino_SOURCES          += common/k_fifo.c common/k_trace.c core/k_buf_queue.c core/k_dyn_mem_proc.c core/k_err.c core/k_event.c core/k_idle.c core/k_mm.c core/k_mm_blk.c core/k_mm_debug.c core/k_mutex.c core/k_obj.c core/k_pend.c core/k_queue.c core/k_ringbuf.c core/k_sched.c core/k_sem.c core/k_stats.c core/k_sys.c core/k_task.c core/k_task_sem.c core/k_tick.c core/k_time.c core/k_timer.c core/k_workqueue.c debug/k_overview.c 
sal_SOURCES          += ip4_addr.c sal.c sal_arch.c sal_device.c sal_err.c sal_sockets.c 
device_sal_mk3060_SOURCES          += mk3060.c wifi_atcmd.c 
vcall_SOURCES          += aos/aos_rhino.c 
vfs_SOURCES          += device.c select.c vfs.c vfs_file.c vfs_inode.c vfs_register.c 
yloop_SOURCES          += local_event.c yloop.c 
atparser_CHECK_HEADERS    += 
board_atsame54-xpro_CHECK_HEADERS    += 
auto_component_CHECK_HEADERS    += 
cli_CHECK_HEADERS    += 
digest_algorithm_CHECK_HEADERS    += 
hal_CHECK_HEADERS    += 
helloworld_CHECK_HEADERS    += 
kernel_init_CHECK_HEADERS    += 
vfs_device_CHECK_HEADERS    += 
newlib_stub_CHECK_HEADERS    += 
log_CHECK_HEADERS    += 
kv_CHECK_HEADERS    += 
armv7m_CHECK_HEADERS    += 
atsame54_CHECK_HEADERS    += 
rhino_CHECK_HEADERS    += 
sal_CHECK_HEADERS    += 
device_sal_mk3060_CHECK_HEADERS    += 
vcall_CHECK_HEADERS    += 
vfs_CHECK_HEADERS    += 
yloop_CHECK_HEADERS    += 
atparser_INCLUDES         := 
board_atsame54-xpro_INCLUDES         := 
auto_component_INCLUDES         := 
cli_INCLUDES         := 
digest_algorithm_INCLUDES         := 
hal_INCLUDES         := 
helloworld_INCLUDES         := 
kernel_init_INCLUDES         := 
vfs_device_INCLUDES         := -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/ -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/
newlib_stub_INCLUDES         := 
log_INCLUDES         := 
kv_INCLUDES         := 
armv7m_INCLUDES         := 
atsame54_INCLUDES         := 
rhino_INCLUDES         := 
sal_INCLUDES         := 
device_sal_mk3060_INCLUDES         := 
vcall_INCLUDES         := 
vfs_INCLUDES         := 
yloop_INCLUDES         := 
atparser_DEFINES          := 
board_atsame54-xpro_DEFINES          := 
auto_component_DEFINES          := 
cli_DEFINES          := 
digest_algorithm_DEFINES          := 
hal_DEFINES          := 
helloworld_DEFINES          := 
kernel_init_DEFINES          := 
vfs_device_DEFINES          := 
newlib_stub_DEFINES          := 
log_DEFINES          := 
kv_DEFINES          := 
armv7m_DEFINES          := 
atsame54_DEFINES          := 
rhino_DEFINES          := 
sal_DEFINES          := 
device_sal_mk3060_DEFINES          := 
vcall_DEFINES          := 
vfs_DEFINES          := 
yloop_DEFINES          := 
atparser_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
board_atsame54-xpro_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
auto_component_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
cli_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
digest_algorithm_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
hal_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
helloworld_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
kernel_init_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vfs_device_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
newlib_stub_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
log_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
kv_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
armv7m_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
atsame54_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
rhino_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
sal_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
device_sal_mk3060_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vcall_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
vfs_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
yloop_CFLAGS           :=  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"            -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
atparser_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
board_atsame54-xpro_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
auto_component_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
cli_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
digest_algorithm_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
hal_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
helloworld_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
kernel_init_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vfs_device_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
newlib_stub_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
log_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
kv_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
armv7m_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
atsame54_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
rhino_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
sal_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
device_sal_mk3060_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vcall_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vfs_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
yloop_CXXFLAGS         :=                     -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/helloworld@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
atparser_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
board_atsame54-xpro_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
auto_component_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
cli_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
digest_algorithm_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
hal_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
helloworld_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
kernel_init_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
vfs_device_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
newlib_stub_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
log_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
kv_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
armv7m_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
atsame54_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
rhino_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
sal_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
device_sal_mk3060_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
vcall_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
vfs_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
yloop_ASMFLAGS         :=              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w       -ggdb
atparser_RESOURCES        := 
board_atsame54-xpro_RESOURCES        := 
auto_component_RESOURCES        := 
cli_RESOURCES        := 
digest_algorithm_RESOURCES        := 
hal_RESOURCES        := 
helloworld_RESOURCES        := 
kernel_init_RESOURCES        := 
vfs_device_RESOURCES        := 
newlib_stub_RESOURCES        := 
log_RESOURCES        := 
kv_RESOURCES        := 
armv7m_RESOURCES        := 
atsame54_RESOURCES        := 
rhino_RESOURCES        := 
sal_RESOURCES        := 
device_sal_mk3060_RESOURCES        := 
vcall_RESOURCES        := 
vfs_RESOURCES        := 
yloop_RESOURCES        := 
atparser_MAKEFILE         := ./framework/atparser/atparser.mk
board_atsame54-xpro_MAKEFILE         := ./board/atsame54-xpro/atsame54-xpro.mk
auto_component_MAKEFILE         := ./out/helloworld@atsame54-xpro/auto_component/auto_component.mk
cli_MAKEFILE         := ./tools/cli/cli.mk
digest_algorithm_MAKEFILE         := ./utility/digest_algorithm/digest_algorithm.mk
hal_MAKEFILE         := ./kernel/hal/hal.mk
helloworld_MAKEFILE         := ./example/helloworld/helloworld.mk
kernel_init_MAKEFILE         := ./kernel/init/init.mk
vfs_device_MAKEFILE         := ././kernel/vfs/device/device.mk
newlib_stub_MAKEFILE         := ./utility/libc/libc.mk
log_MAKEFILE         := ./utility/log/log.mk
kv_MAKEFILE         := ./kernel/modules/fs/kv/kv.mk
armv7m_MAKEFILE         := ././platform/arch/arm/armv7m/armv7m.mk
atsame54_MAKEFILE         := ././platform/mcu/atsamd5x_e5x/atsamd5x_e5x.mk
rhino_MAKEFILE         := ./kernel/rhino/rhino.mk
sal_MAKEFILE         := ./device/sal/sal.mk
device_sal_mk3060_MAKEFILE         := ./device/sal/wifi/mk3060/mk3060.mk
vcall_MAKEFILE         := ./kernel/vcall/vcall.mk
vfs_MAKEFILE         := ./kernel/vfs/vfs.mk
yloop_MAKEFILE         := ./kernel/yloop/yloop.mk
atparser_PRE_BUILD_TARGETS:= 
board_atsame54-xpro_PRE_BUILD_TARGETS:= 
auto_component_PRE_BUILD_TARGETS:= 
cli_PRE_BUILD_TARGETS:= 
digest_algorithm_PRE_BUILD_TARGETS:= 
hal_PRE_BUILD_TARGETS:= 
helloworld_PRE_BUILD_TARGETS:= 
kernel_init_PRE_BUILD_TARGETS:= 
vfs_device_PRE_BUILD_TARGETS:= 
newlib_stub_PRE_BUILD_TARGETS:= 
log_PRE_BUILD_TARGETS:= 
kv_PRE_BUILD_TARGETS:= 
armv7m_PRE_BUILD_TARGETS:= 
atsame54_PRE_BUILD_TARGETS:= 
rhino_PRE_BUILD_TARGETS:= 
sal_PRE_BUILD_TARGETS:= 
device_sal_mk3060_PRE_BUILD_TARGETS:= 
vcall_PRE_BUILD_TARGETS:= 
vfs_PRE_BUILD_TARGETS:= 
yloop_PRE_BUILD_TARGETS:= 
atparser_PREBUILT_LIBRARY := 
board_atsame54-xpro_PREBUILT_LIBRARY := 
auto_component_PREBUILT_LIBRARY := 
cli_PREBUILT_LIBRARY := 
digest_algorithm_PREBUILT_LIBRARY := 
hal_PREBUILT_LIBRARY := 
helloworld_PREBUILT_LIBRARY := 
kernel_init_PREBUILT_LIBRARY := 
vfs_device_PREBUILT_LIBRARY := 
newlib_stub_PREBUILT_LIBRARY := 
log_PREBUILT_LIBRARY := 
kv_PREBUILT_LIBRARY := 
armv7m_PREBUILT_LIBRARY := 
atsame54_PREBUILT_LIBRARY := 
rhino_PREBUILT_LIBRARY := 
sal_PREBUILT_LIBRARY := 
device_sal_mk3060_PREBUILT_LIBRARY := 
vcall_PREBUILT_LIBRARY := 
vfs_PREBUILT_LIBRARY := 
yloop_PREBUILT_LIBRARY := 
atparser_TYPE             := 
board_atsame54-xpro_TYPE             := kernel
auto_component_TYPE             := kernel
cli_TYPE             := kernel
digest_algorithm_TYPE             := share
hal_TYPE             := kernel
helloworld_TYPE             := 
kernel_init_TYPE             := kernel
vfs_device_TYPE             := 
newlib_stub_TYPE             := share
log_TYPE             := share
kv_TYPE             := kernel
armv7m_TYPE             := 
atsame54_TYPE             := kernel
rhino_TYPE             := kernel
sal_TYPE             := kernel
device_sal_mk3060_TYPE             := 
vcall_TYPE             := kernel
vfs_TYPE             := kernel
yloop_TYPE             := kernel
AOS_SDK_UNIT_TEST_SOURCES   		:=                                        
ALL_RESOURCES             		:= 
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:= 
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:=  
WIFI_FIRMWARE						:=  
BT_PATCH_FIRMWARE					:=  
AOS_ROM_SYMBOL_LIST_FILE 		:= 
AOS_SDK_CHIP_SPECIFIC_SCRIPT		:=                    
AOS_SDK_CONVERTER_OUTPUT_FILE	:=                    
AOS_SDK_FINAL_OUTPUT_FILE 		:=                    
AOS_RAM_STUB_LIST_FILE 			:= 
PING_PONG_OTA 					:= 
