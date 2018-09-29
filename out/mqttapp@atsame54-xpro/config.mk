AOS_SDK_MAKEFILES           		+= ./framework/activation/activation.mk ./security/alicrypto/alicrypto.mk ./framework/atparser/atparser.mk ./board/atsame54-xpro/atsame54-xpro.mk ./out/mqttapp@atsame54-xpro/auto_component/auto_component.mk ./utility/base64/base64.mk ./utility/cjson/cjson.mk ./tools/cli/cli.mk ./framework/connectivity/mqtt/mqtt.mk ./framework/connectivity/mqtt/MQTTPacket/MQTTPacket.mk ./utility/digest_algorithm/digest_algorithm.mk ./framework/fota/fota.mk ./framework/fota/download/download.mk ./framework/fota/download/http/http.mk ./framework/fota/download/http/socket/socket.mk ./framework/fota/download/http/socket/stand/stand.mk ./framework/fota/platform/platform.mk ./framework/fota/platform/mqtt/mqtt.mk ././framework/common/common.mk ./kernel/hal/hal.mk ./kernel/init/init.mk ././kernel/vfs/device/device.mk ./utility/libc/libc.mk ./utility/log/log.mk ./security/mbedtls/mbedtls.mk ./kernel/modules/fs/kv/kv.mk ./example/mqttapp/mqttapp.mk ./framework/netmgr/netmgr.mk ././platform/arch/arm/armv7m/armv7m.mk ././platform/mcu/atsamd5x_e5x/atsamd5x_e5x.mk ./framework/protocol/linkkit/iotkit/iotkit.mk ./kernel/rhino/rhino.mk ./device/sal/sal.mk ./device/sal/wifi/mk3060/mk3060.mk ./kernel/vcall/vcall.mk ./kernel/vfs/vfs.mk ./kernel/yloop/yloop.mk
TOOLCHAIN_NAME            		:= GCC
AOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -mcpu=cortex-m4 -mlittle-endian -mthumb -mthumb-interwork --specs=nosys.specs --specs=nano.specs -u _printf_float -T platform/mcu/atsamd5x_e5x/Drivers/gcc/gcc/same54p20a_flash.ld
AOS_SDK_LDS_FILES                     += 
AOS_SDK_LDS_INCLUDES                  += 
RESOURCE_CFLAGS					+= -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\" -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\" -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"
AOS_SDK_LINK_SCRIPT         		+= 
AOS_SDK_LINK_SCRIPT_CMD    	 	+= 
AOS_SDK_PREBUILT_LIBRARIES 	 	+= ./framework/activation/./Cortex-M4/activation.a
AOS_SDK_CERTIFICATES       	 	+= 
AOS_SDK_PRE_APP_BUILDS      		+= 
AOS_SDK_LINK_FILES          		+=                                                                          
AOS_SDK_INCLUDES           	 	+=                                                -I./framework/activation/. -I./security/alicrypto/./libalicrypto/inc -I./framework/atparser/./ -I./board/atsame54-xpro/. -I./utility/base64/. -I./utility/cjson/include -I./tools/cli/include -I./framework/connectivity/mqtt/./ -I./utility/digest_algorithm/. -I./framework/fota/. -I./framework/fota/download/./ -I./framework/fota/download/http/socket/./ -I./framework/fota/platform/./ -I./security/mbedtls/include -I./kernel/modules/fs/kv/include -I./framework/netmgr/include -I./framework/netmgr/../protocol/alink/os/platform/ -I././platform/arch/arm/armv7m/gcc/m4/ -I././platform/mcu/atsamd5x_e5x/aos -I././platform/mcu/atsamd5x_e5x/Drivers -I././platform/mcu/atsamd5x_e5x/Drivers/config -I././platform/mcu/atsamd5x_e5x/Drivers/hal/include -I././platform/mcu/atsamd5x_e5x/Drivers/hal/utils/include -I././platform/mcu/atsamd5x_e5x/Drivers/hri -I././platform/mcu/atsamd5x_e5x/Drivers/CMSIS/Include -I././platform/mcu/atsamd5x_e5x/Drivers/include -I././platform/mcu/atsamd5x_e5x/src/ATSAME54-XPRO/runapp -I./framework/protocol/linkkit/iotkit/sdk-encap -I./framework/protocol/linkkit/iotkit/sdk-encap/imports -I./framework/protocol/linkkit/iotkit/iotkit-system -I./framework/protocol/linkkit/iotkit/base/log/LITE-log -I./framework/protocol/linkkit/iotkit/base/utils -I./framework/protocol/linkkit/iotkit/base/utils/include -I./framework/protocol/linkkit/iotkit/layers/config/include -I./framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/ -I./framework/protocol/linkkit/iotkit/base/utils/misc/ -I./framework/protocol/linkkit/iotkit/base/utils/digest -I./framework/protocol/linkkit/iotkit/hal-impl -I./kernel/rhino/core/include -I./kernel/rhino/debug/include -I./device/sal/./include -I./device/sal/wifi/mk3060/./ -I./kernel/vcall/./mico/include -I./kernel/vfs/include -I./include -I./example/mqttapp
AOS_SDK_DEFINES             		+=                               -DBUILD_BIN -DCONFIG_ALICRYPTO -DAOS_ATCMD -DSTDIO_UART=2 -DHAVE_NOT_ADVANCED_FORMATE -DCONFIG_AOS_CLI -DMQTT_COMM_ENABLED -DCMP_VIA_MQTT_DIRECT -DMQTT_DIRECT -DAOS_FOTA -DVCALL_RHINO -DAOS_FRAMEWORK_COMMON -DAOS_HAL -DAOS_KV -DMQTT_TEST -DALIOT_DEBUG -DIOTX_DEBUG -DUSE_LPTHREAD -DAOS_NETMGR -DCONFIG_AOS_KV_MULTIPTN_MODE -DCONFIG_AOS_KV_PTN=6 -DCONFIG_AOS_KV_SECOND_PTN=7 -DCONFIG_AOS_KV_PTN_SIZE=4096 -DCONFIG_AOS_KV_BUFFER_SIZE=8192 -DCONFIG_IOT_KIT -DWITH_SAL -DDEV_SAL_MK3060 -DAOS_VFS -DAOS_LOOP
COMPONENTS                		:= activation alicrypto atparser board_atsame54-xpro auto_component base64 cjson cli mqtt MQTTPacket digest_algorithm fota fota_download download_http fota_socket socket_stand fota_platform fota_mqtt_transport framework hal kernel_init vfs_device newlib_stub log mbedtls kv mqttapp netmgr armv7m atsame54 iotkit rhino sal device_sal_mk3060 vcall vfs yloop
PLATFORM_DIRECTORY        		:= atsame54-xpro
APP_FULL                  		:= mqttapp
PLATFORM                  		:= atsame54-xpro
HOST_MCU_FAMILY                  	:= atsamd5x_e5x
SUPPORT_BINS                          := no
APP                       		:= mqttapp
HOST_OPENOCD              		:= atsame54
JTAG              		        := jlink_swd
HOST_ARCH                 		:= Cortex-M4
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
activation_LOCATION         := ./framework/activation/
alicrypto_LOCATION         := ./security/alicrypto/
atparser_LOCATION         := ./framework/atparser/
board_atsame54-xpro_LOCATION         := ./board/atsame54-xpro/
auto_component_LOCATION         := ./out/mqttapp@atsame54-xpro/auto_component/
base64_LOCATION         := ./utility/base64/
cjson_LOCATION         := ./utility/cjson/
cli_LOCATION         := ./tools/cli/
mqtt_LOCATION         := ./framework/connectivity/mqtt/
MQTTPacket_LOCATION         := ./framework/connectivity/mqtt/MQTTPacket/
digest_algorithm_LOCATION         := ./utility/digest_algorithm/
fota_LOCATION         := ./framework/fota/
fota_download_LOCATION         := ./framework/fota/download/
download_http_LOCATION         := ./framework/fota/download/http/
fota_socket_LOCATION         := ./framework/fota/download/http/socket/
socket_stand_LOCATION         := ./framework/fota/download/http/socket/stand/
fota_platform_LOCATION         := ./framework/fota/platform/
fota_mqtt_transport_LOCATION         := ./framework/fota/platform/mqtt/
framework_LOCATION         := ././framework/common/
hal_LOCATION         := ./kernel/hal/
kernel_init_LOCATION         := ./kernel/init/
vfs_device_LOCATION         := ././kernel/vfs/device/
newlib_stub_LOCATION         := ./utility/libc/
log_LOCATION         := ./utility/log/
mbedtls_LOCATION         := ./security/mbedtls/
kv_LOCATION         := ./kernel/modules/fs/kv/
mqttapp_LOCATION         := ./example/mqttapp/
netmgr_LOCATION         := ./framework/netmgr/
armv7m_LOCATION         := ././platform/arch/arm/armv7m/
atsame54_LOCATION         := ././platform/mcu/atsamd5x_e5x/
iotkit_LOCATION         := ./framework/protocol/linkkit/iotkit/
rhino_LOCATION         := ./kernel/rhino/
sal_LOCATION         := ./device/sal/
device_sal_mk3060_LOCATION         := ./device/sal/wifi/mk3060/
vcall_LOCATION         := ./kernel/vcall/
vfs_LOCATION         := ./kernel/vfs/
yloop_LOCATION         := ./kernel/yloop/
activation_SOURCES          += 
alicrypto_SOURCES          += ./libalicrypto/ali_crypto.c ./libalicrypto/mbed/asym/rsa.c ./libalicrypto/mbed/cipher/aes.c ./libalicrypto/mbed/hash/hash.c ./libalicrypto/mbed/mac/hmac.c ./libalicrypto/sw/ali_crypto_rand.c ./libalicrypto/test/ali_crypto_test.c ./libalicrypto/test/ali_crypto_test_aes.c ./libalicrypto/test/ali_crypto_test_comm.c ./libalicrypto/test/ali_crypto_test_hash.c ./libalicrypto/test/ali_crypto_test_hmac.c ./libalicrypto/test/ali_crypto_test_rand.c ./libalicrypto/test/ali_crypto_test_rsa.c ./mbedtls/library/aes.c ./mbedtls/library/asn1parse.c ./mbedtls/library/bignum.c ./mbedtls/library/hash_wrap.c ./mbedtls/library/hmac.c ./mbedtls/library/mbedtls_alt.c ./mbedtls/library/md5.c ./mbedtls/library/oid.c ./mbedtls/library/rsa.c ./mbedtls/library/sha1.c ./mbedtls/library/sha256.c ./mbedtls/library/threading.c 
atparser_SOURCES          += atparser.c 
board_atsame54-xpro_SOURCES          += board.c 
auto_component_SOURCES          +=  component_init.c testcase_register.c
base64_SOURCES          += base64.c 
cjson_SOURCES          += cJSON.c cJSON_Utils.c 
cli_SOURCES          += cli.c dumpsys.c 
mqtt_SOURCES          += mqtt_client.c mqtt_instance.c 
MQTTPacket_SOURCES          += MQTTConnectClient.c MQTTDeserializePublish.c MQTTPacket.c MQTTSerializePublish.c MQTTSubscribeClient.c MQTTUnsubscribeClient.c 
digest_algorithm_SOURCES          += CheckSumUtils.c crc.c crc16.c digest_algorithm.c md5.c 
fota_SOURCES          += ota_service.c ota_update_manifest.c ota_util.c ota_version.c 
fota_download_SOURCES          += download_common.c 
download_http_SOURCES          += ota_download.c 
fota_socket_SOURCES          += 
socket_stand_SOURCES          += ota_socket.c 
fota_platform_SOURCES          += ota_platform_os.c 
fota_mqtt_transport_SOURCES          += ota_transport.c version_report.c 
framework_SOURCES          += main.c version.c 
hal_SOURCES          += ota.c wifi.c 
kernel_init_SOURCES          += aos_init.c 
vfs_device_SOURCES          += vfs_adc.c vfs_gpio.c vfs_i2c.c vfs_pwm.c vfs_rtc.c vfs_spi.c vfs_uart.c vfs_wdg.c 
newlib_stub_SOURCES          += newlib_stub.c 
log_SOURCES          += log.c 
mbedtls_SOURCES          += src/aes.c src/aesni.c src/arc4.c src/asn1write.c src/base64.c src/bignum.c src/blowfish.c src/camellia.c src/ccm.c src/cipher.c src/cipher_wrap.c src/cmac.c src/ctr_drbg.c src/debug.c src/des.c src/dhm.c src/ecdh.c src/ecdsa.c src/ecjpake.c src/ecp.c src/ecp_curves.c src/entropy.c src/entropy_poll.c src/error.c src/gcm.c src/havege.c src/hmac_drbg.c src/mbedtls_alt.c src/mbedtls_net.c src/mbedtls_ssl.c src/md.c src/md2.c src/md4.c src/md_wrap.c src/memory_buffer_alloc.c src/net_sockets.c src/oid.c src/padlock.c src/pem.c src/pk.c src/pk_wrap.c src/pkcs11.c src/pkcs12.c src/pkcs5.c src/pkparse.c src/pkwrite.c src/platform.c src/ripemd160.c src/rsa.c src/sha512.c src/ssl_cache.c src/ssl_ciphersuites.c src/ssl_cli.c src/ssl_cookie.c src/ssl_srv.c src/ssl_ticket.c src/ssl_tls.c src/timing.c src/version.c src/version_features.c src/x509.c src/x509_create.c src/x509_crl.c src/x509_crt.c src/x509_csr.c src/x509write_crt.c src/x509write_csr.c src/xtea.c 
kv_SOURCES          += kvmgr.c 
mqttapp_SOURCES          += mqtt-example.c 
netmgr_SOURCES          += netmgr.c 
armv7m_SOURCES          += gcc/m4/port_c.c gcc/m4/port_s.S 
atsame54_SOURCES          += Drivers/atmel_start.c Drivers/driver_init.c Drivers/gcc/gcc/startup_same54.c Drivers/gcc/system_same54.c Drivers/hal/src/hal_atomic.c Drivers/hal/src/hal_delay.c Drivers/hal/src/hal_flash.c Drivers/hal/src/hal_gpio.c Drivers/hal/src/hal_init.c Drivers/hal/src/hal_io.c Drivers/hal/src/hal_rtos.c Drivers/hal/src/hal_sleep.c Drivers/hal/src/hal_usart_os.c Drivers/hal/utils/src/utils_assert.c Drivers/hal/utils/src/utils_event.c Drivers/hal/utils/src/utils_list.c Drivers/hal/utils/src/utils_ringbuffer.c Drivers/hal/utils/src/utils_syscalls.c Drivers/hpl/core/hpl_core_m4.c Drivers/hpl/core/hpl_init.c Drivers/hpl/dmac/hpl_dmac.c Drivers/hpl/gclk/hpl_gclk.c Drivers/hpl/mclk/hpl_mclk.c Drivers/hpl/nvmctrl/hpl_nvmctrl.c Drivers/hpl/osc32kctrl/hpl_osc32kctrl.c Drivers/hpl/oscctrl/hpl_oscctrl.c Drivers/hpl/pm/hpl_pm.c Drivers/hpl/ramecc/hpl_ramecc.c Drivers/hpl/sercom/hpl_sercom.c Drivers/hpl/systick/hpl_systick.c aos/aos.c aos/soc_impl.c aos/trace_impl.c hal/hal_flash_port.c hal/hal_timer_port.c hal/hal_uart_start.c hal/misc.c hal/ota_port.c 
iotkit_SOURCES          += base/log/LITE-log/lite-log.c base/utils//digest/utils_base64.c base/utils//digest/utils_hmac.c base/utils//digest/utils_md5.c base/utils//digest/utils_sha1.c base/utils//misc/utils_epoch_time.c base/utils//misc/utils_httpc.c base/utils//misc/utils_list.c base/utils//misc/utils_net.c base/utils//misc/utils_timer.c base/utils//misc/work_queue.c base/utils/LITE-utils/src/json_parser.c base/utils/LITE-utils/src/json_token.c base/utils/LITE-utils/src/mem_stats.c base/utils/LITE-utils/src/string_utils.c hal-impl/rhino/HAL_OS_rhino.c hal-impl/rhino/HAL_PRODUCT_rhino.c hal-impl/rhino/HAL_TCP_rhino.c hal-impl/rhino/HAL_UDP_rhino.c hal-impl/tls/mbedtls/HAL_DTLS_mbedtls.c hal-impl/tls/mbedtls/HAL_TLS_mbedtls.c iotkit-system/src/ca.c iotkit-system/src/class_interface.c iotkit-system/src/device.c iotkit-system/src/guider.c iotkit-system/src/id2_guider.c iotkit-system/src/report.c iotkit-system/src/sdk-impl.c layers/config/src/dev_conf.c 
rhino_SOURCES          += common/k_fifo.c common/k_trace.c core/k_buf_queue.c core/k_dyn_mem_proc.c core/k_err.c core/k_event.c core/k_idle.c core/k_mm.c core/k_mm_blk.c core/k_mm_debug.c core/k_mutex.c core/k_obj.c core/k_pend.c core/k_queue.c core/k_ringbuf.c core/k_sched.c core/k_sem.c core/k_stats.c core/k_sys.c core/k_task.c core/k_task_sem.c core/k_tick.c core/k_time.c core/k_timer.c core/k_workqueue.c debug/k_overview.c 
sal_SOURCES          += ip4_addr.c sal.c sal_arch.c sal_device.c sal_err.c sal_sockets.c 
device_sal_mk3060_SOURCES          += mk3060.c wifi_atcmd.c 
vcall_SOURCES          += aos/aos_rhino.c 
vfs_SOURCES          += device.c select.c vfs.c vfs_file.c vfs_inode.c vfs_register.c 
yloop_SOURCES          += local_event.c yloop.c 
activation_CHECK_HEADERS    += 
alicrypto_CHECK_HEADERS    += 
atparser_CHECK_HEADERS    += 
board_atsame54-xpro_CHECK_HEADERS    += 
auto_component_CHECK_HEADERS    += 
base64_CHECK_HEADERS    += 
cjson_CHECK_HEADERS    += 
cli_CHECK_HEADERS    += 
mqtt_CHECK_HEADERS    += 
MQTTPacket_CHECK_HEADERS    += 
digest_algorithm_CHECK_HEADERS    += 
fota_CHECK_HEADERS    += 
fota_download_CHECK_HEADERS    += 
download_http_CHECK_HEADERS    += 
fota_socket_CHECK_HEADERS    += 
socket_stand_CHECK_HEADERS    += 
fota_platform_CHECK_HEADERS    += 
fota_mqtt_transport_CHECK_HEADERS    += 
framework_CHECK_HEADERS    += 
hal_CHECK_HEADERS    += 
kernel_init_CHECK_HEADERS    += 
vfs_device_CHECK_HEADERS    += 
newlib_stub_CHECK_HEADERS    += 
log_CHECK_HEADERS    += 
mbedtls_CHECK_HEADERS    += 
kv_CHECK_HEADERS    += 
mqttapp_CHECK_HEADERS    += 
netmgr_CHECK_HEADERS    += 
armv7m_CHECK_HEADERS    += 
atsame54_CHECK_HEADERS    += 
iotkit_CHECK_HEADERS    += 
rhino_CHECK_HEADERS    += 
sal_CHECK_HEADERS    += 
device_sal_mk3060_CHECK_HEADERS    += 
vcall_CHECK_HEADERS    += 
vfs_CHECK_HEADERS    += 
yloop_CHECK_HEADERS    += 
activation_INCLUDES         := 
alicrypto_INCLUDES         := -I./security/alicrypto/./mbedtls/include/mbedtls -I./security/alicrypto/./libalicrypto/mbed/inc -I./security/alicrypto/./libalicrypto/sw -I./security/alicrypto/./mbedtls/include -I./security/alicrypto/./libalicrypto/test/inc -I./security/alicrypto/./mbedtls/include/mbedtls -I./security/alicrypto/./libalicrypto/mbed/inc -I./security/alicrypto/./libalicrypto/sw -I./security/alicrypto/./mbedtls/include -I./security/alicrypto/./libalicrypto/test/inc
atparser_INCLUDES         := 
board_atsame54-xpro_INCLUDES         := 
auto_component_INCLUDES         := 
base64_INCLUDES         := 
cjson_INCLUDES         := 
cli_INCLUDES         := 
mqtt_INCLUDES         := 
MQTTPacket_INCLUDES         := 
digest_algorithm_INCLUDES         := 
fota_INCLUDES         := -I./framework/fota/./platform -I./framework/fota/./download -I./framework/fota/../../include/hal
fota_download_INCLUDES         := 
download_http_INCLUDES         := -I./framework/fota/download/http/./ -I./framework/fota/download/http/../ -I./framework/fota/download/http/./socket/
fota_socket_INCLUDES         := 
socket_stand_INCLUDES         := -I./framework/fota/download/http/socket/stand/./ -I./framework/fota/download/http/socket/stand/../
fota_platform_INCLUDES         := 
fota_mqtt_transport_INCLUDES         := -I./framework/fota/platform/mqtt/../ -I./framework/fota/platform/mqtt/../../ -I./framework/fota/platform/mqtt/../../connectivity/mqtt/
framework_INCLUDES         := 
hal_INCLUDES         := 
kernel_init_INCLUDES         := 
vfs_device_INCLUDES         := -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/ -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/
newlib_stub_INCLUDES         := 
log_INCLUDES         := 
mbedtls_INCLUDES         := 
kv_INCLUDES         := 
mqttapp_INCLUDES         := 
netmgr_INCLUDES         := 
armv7m_INCLUDES         := 
atsame54_INCLUDES         := 
iotkit_INCLUDES         := -I./framework/protocol/linkkit/iotkit/base/log/LITE-log/ -I./framework/protocol/linkkit/iotkit/./ilop_utils_config.h -I./framework/protocol/linkkit/iotkit/./exports -I./framework/protocol/linkkit/iotkit/../../sdk-encap -I./framework/protocol/linkkit/iotkit/../log -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/layers/config/include -I./framework/protocol/linkkit/iotkit/base/log/LITE-log/ -I./framework/protocol/linkkit/iotkit/./ilop_utils_config.h -I./framework/protocol/linkkit/iotkit/./exports -I./framework/protocol/linkkit/iotkit/../../sdk-encap -I./framework/protocol/linkkit/iotkit/../log -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/layers/config/include
rhino_INCLUDES         := 
sal_INCLUDES         := 
device_sal_mk3060_INCLUDES         := 
vcall_INCLUDES         := 
vfs_INCLUDES         := 
yloop_INCLUDES         := 
activation_DEFINES          := 
alicrypto_DEFINES          := 
atparser_DEFINES          := 
board_atsame54-xpro_DEFINES          := 
auto_component_DEFINES          := 
base64_DEFINES          := 
cjson_DEFINES          := 
cli_DEFINES          := 
mqtt_DEFINES          := 
MQTTPacket_DEFINES          := 
digest_algorithm_DEFINES          := 
fota_DEFINES          := 
fota_download_DEFINES          := 
download_http_DEFINES          := 
fota_socket_DEFINES          := 
socket_stand_DEFINES          := 
fota_platform_DEFINES          := 
fota_mqtt_transport_DEFINES          := 
framework_DEFINES          := 
hal_DEFINES          := 
kernel_init_DEFINES          := 
vfs_device_DEFINES          := 
newlib_stub_DEFINES          := 
log_DEFINES          := 
mbedtls_DEFINES          := -DLWIP_ENABLED -DLWIP_ENABLED
kv_DEFINES          := 
mqttapp_DEFINES          := 
netmgr_DEFINES          := 
armv7m_DEFINES          := 
atsame54_DEFINES          := 
iotkit_DEFINES          := 
rhino_DEFINES          := 
sal_DEFINES          := 
device_sal_mk3060_DEFINES          := 
vcall_DEFINES          := 
vfs_DEFINES          := 
yloop_DEFINES          := 
activation_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
alicrypto_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64 -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64
atparser_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
board_atsame54-xpro_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
auto_component_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
base64_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
cjson_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
cli_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
mqtt_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -DOTA_SIGNAL_CHANNEL=1  -DOTA_SIGNAL_CHANNEL=1 
MQTTPacket_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
digest_algorithm_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
fota_download_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
download_http_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_socket_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
socket_stand_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_platform_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_mqtt_transport_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
framework_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
hal_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
kernel_init_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vfs_device_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
newlib_stub_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
log_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
mbedtls_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Os -Wall -Werror -Os
kv_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
mqttapp_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
netmgr_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
armv7m_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
atsame54_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
iotkit_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -DLITE_UTILS_CONFIG_H=\"ilop_utils_config.h\" -DUTILS_printf=HAL_Printf  -DCONFIG_GUIDER_AUTH_TIMEOUT=500 -DMQTT_COMM_ENABLED -DLITE_UTILS_CONFIG_H=\"ilop_utils_config.h\" -DUTILS_printf=HAL_Printf  -DCONFIG_GUIDER_AUTH_TIMEOUT=500 -DMQTT_COMM_ENABLED
rhino_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
sal_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
device_sal_mk3060_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vcall_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
vfs_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
yloop_CFLAGS           :=    -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ATSAME54-XPRO\" -DSYSINFO_DEVICE_NAME=\"ATSAME54\"               -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.1533\"           -D__SAME54P20A__ -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" -Wall -Werror -Wall -Werror
activation_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
alicrypto_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
atparser_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
board_atsame54-xpro_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
auto_component_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
base64_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
cjson_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
cli_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
mqtt_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
MQTTPacket_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
digest_algorithm_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_download_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
download_http_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_socket_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
socket_stand_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_platform_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
fota_mqtt_transport_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
framework_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
hal_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
kernel_init_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vfs_device_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
newlib_stub_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
log_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
mbedtls_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
kv_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
mqttapp_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
netmgr_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
armv7m_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
atsame54_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
iotkit_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
rhino_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
sal_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
device_sal_mk3060_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vcall_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
vfs_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
yloop_CXXFLAGS         :=                                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@atsame54-xpro/resources/ -DPLATFORM=\"atsame54-xpro\" 
activation_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
alicrypto_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
atparser_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
board_atsame54-xpro_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
auto_component_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
base64_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
cjson_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
cli_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
mqtt_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
MQTTPacket_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
digest_algorithm_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
fota_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
fota_download_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
download_http_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
fota_socket_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
socket_stand_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
fota_platform_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
fota_mqtt_transport_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
framework_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
hal_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
kernel_init_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
vfs_device_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
newlib_stub_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
log_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
mbedtls_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
kv_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
mqttapp_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
netmgr_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
armv7m_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
atsame54_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
iotkit_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
rhino_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
sal_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
device_sal_mk3060_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
vcall_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
vfs_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
yloop_ASMFLAGS         :=                              -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -w        -ggdb
activation_RESOURCES        := 
alicrypto_RESOURCES        := 
atparser_RESOURCES        := 
board_atsame54-xpro_RESOURCES        := 
auto_component_RESOURCES        := 
base64_RESOURCES        := 
cjson_RESOURCES        := 
cli_RESOURCES        := 
mqtt_RESOURCES        := 
MQTTPacket_RESOURCES        := 
digest_algorithm_RESOURCES        := 
fota_RESOURCES        := 
fota_download_RESOURCES        := 
download_http_RESOURCES        := 
fota_socket_RESOURCES        := 
socket_stand_RESOURCES        := 
fota_platform_RESOURCES        := 
fota_mqtt_transport_RESOURCES        := 
framework_RESOURCES        := 
hal_RESOURCES        := 
kernel_init_RESOURCES        := 
vfs_device_RESOURCES        := 
newlib_stub_RESOURCES        := 
log_RESOURCES        := 
mbedtls_RESOURCES        := 
kv_RESOURCES        := 
mqttapp_RESOURCES        := 
netmgr_RESOURCES        := 
armv7m_RESOURCES        := 
atsame54_RESOURCES        := 
iotkit_RESOURCES        := 
rhino_RESOURCES        := 
sal_RESOURCES        := 
device_sal_mk3060_RESOURCES        := 
vcall_RESOURCES        := 
vfs_RESOURCES        := 
yloop_RESOURCES        := 
activation_MAKEFILE         := ./framework/activation/activation.mk
alicrypto_MAKEFILE         := ./security/alicrypto/alicrypto.mk
atparser_MAKEFILE         := ./framework/atparser/atparser.mk
board_atsame54-xpro_MAKEFILE         := ./board/atsame54-xpro/atsame54-xpro.mk
auto_component_MAKEFILE         := ./out/mqttapp@atsame54-xpro/auto_component/auto_component.mk
base64_MAKEFILE         := ./utility/base64/base64.mk
cjson_MAKEFILE         := ./utility/cjson/cjson.mk
cli_MAKEFILE         := ./tools/cli/cli.mk
mqtt_MAKEFILE         := ./framework/connectivity/mqtt/mqtt.mk
MQTTPacket_MAKEFILE         := ./framework/connectivity/mqtt/MQTTPacket/MQTTPacket.mk
digest_algorithm_MAKEFILE         := ./utility/digest_algorithm/digest_algorithm.mk
fota_MAKEFILE         := ./framework/fota/fota.mk
fota_download_MAKEFILE         := ./framework/fota/download/download.mk
download_http_MAKEFILE         := ./framework/fota/download/http/http.mk
fota_socket_MAKEFILE         := ./framework/fota/download/http/socket/socket.mk
socket_stand_MAKEFILE         := ./framework/fota/download/http/socket/stand/stand.mk
fota_platform_MAKEFILE         := ./framework/fota/platform/platform.mk
fota_mqtt_transport_MAKEFILE         := ./framework/fota/platform/mqtt/mqtt.mk
framework_MAKEFILE         := ././framework/common/common.mk
hal_MAKEFILE         := ./kernel/hal/hal.mk
kernel_init_MAKEFILE         := ./kernel/init/init.mk
vfs_device_MAKEFILE         := ././kernel/vfs/device/device.mk
newlib_stub_MAKEFILE         := ./utility/libc/libc.mk
log_MAKEFILE         := ./utility/log/log.mk
mbedtls_MAKEFILE         := ./security/mbedtls/mbedtls.mk
kv_MAKEFILE         := ./kernel/modules/fs/kv/kv.mk
mqttapp_MAKEFILE         := ./example/mqttapp/mqttapp.mk
netmgr_MAKEFILE         := ./framework/netmgr/netmgr.mk
armv7m_MAKEFILE         := ././platform/arch/arm/armv7m/armv7m.mk
atsame54_MAKEFILE         := ././platform/mcu/atsamd5x_e5x/atsamd5x_e5x.mk
iotkit_MAKEFILE         := ./framework/protocol/linkkit/iotkit/iotkit.mk
rhino_MAKEFILE         := ./kernel/rhino/rhino.mk
sal_MAKEFILE         := ./device/sal/sal.mk
device_sal_mk3060_MAKEFILE         := ./device/sal/wifi/mk3060/mk3060.mk
vcall_MAKEFILE         := ./kernel/vcall/vcall.mk
vfs_MAKEFILE         := ./kernel/vfs/vfs.mk
yloop_MAKEFILE         := ./kernel/yloop/yloop.mk
activation_PRE_BUILD_TARGETS:= 
alicrypto_PRE_BUILD_TARGETS:= 
atparser_PRE_BUILD_TARGETS:= 
board_atsame54-xpro_PRE_BUILD_TARGETS:= 
auto_component_PRE_BUILD_TARGETS:= 
base64_PRE_BUILD_TARGETS:= 
cjson_PRE_BUILD_TARGETS:= 
cli_PRE_BUILD_TARGETS:= 
mqtt_PRE_BUILD_TARGETS:= 
MQTTPacket_PRE_BUILD_TARGETS:= 
digest_algorithm_PRE_BUILD_TARGETS:= 
fota_PRE_BUILD_TARGETS:= 
fota_download_PRE_BUILD_TARGETS:= 
download_http_PRE_BUILD_TARGETS:= 
fota_socket_PRE_BUILD_TARGETS:= 
socket_stand_PRE_BUILD_TARGETS:= 
fota_platform_PRE_BUILD_TARGETS:= 
fota_mqtt_transport_PRE_BUILD_TARGETS:= 
framework_PRE_BUILD_TARGETS:= 
hal_PRE_BUILD_TARGETS:= 
kernel_init_PRE_BUILD_TARGETS:= 
vfs_device_PRE_BUILD_TARGETS:= 
newlib_stub_PRE_BUILD_TARGETS:= 
log_PRE_BUILD_TARGETS:= 
mbedtls_PRE_BUILD_TARGETS:= 
kv_PRE_BUILD_TARGETS:= 
mqttapp_PRE_BUILD_TARGETS:= 
netmgr_PRE_BUILD_TARGETS:= 
armv7m_PRE_BUILD_TARGETS:= 
atsame54_PRE_BUILD_TARGETS:= 
iotkit_PRE_BUILD_TARGETS:= 
rhino_PRE_BUILD_TARGETS:= 
sal_PRE_BUILD_TARGETS:= 
device_sal_mk3060_PRE_BUILD_TARGETS:= 
vcall_PRE_BUILD_TARGETS:= 
vfs_PRE_BUILD_TARGETS:= 
yloop_PRE_BUILD_TARGETS:= 
activation_PREBUILT_LIBRARY := ./framework/activation/./Cortex-M4/activation.a
alicrypto_PREBUILT_LIBRARY := 
atparser_PREBUILT_LIBRARY := 
board_atsame54-xpro_PREBUILT_LIBRARY := 
auto_component_PREBUILT_LIBRARY := 
base64_PREBUILT_LIBRARY := 
cjson_PREBUILT_LIBRARY := 
cli_PREBUILT_LIBRARY := 
mqtt_PREBUILT_LIBRARY := 
MQTTPacket_PREBUILT_LIBRARY := 
digest_algorithm_PREBUILT_LIBRARY := 
fota_PREBUILT_LIBRARY := 
fota_download_PREBUILT_LIBRARY := 
download_http_PREBUILT_LIBRARY := 
fota_socket_PREBUILT_LIBRARY := 
socket_stand_PREBUILT_LIBRARY := 
fota_platform_PREBUILT_LIBRARY := 
fota_mqtt_transport_PREBUILT_LIBRARY := 
framework_PREBUILT_LIBRARY := 
hal_PREBUILT_LIBRARY := 
kernel_init_PREBUILT_LIBRARY := 
vfs_device_PREBUILT_LIBRARY := 
newlib_stub_PREBUILT_LIBRARY := 
log_PREBUILT_LIBRARY := 
mbedtls_PREBUILT_LIBRARY := 
kv_PREBUILT_LIBRARY := 
mqttapp_PREBUILT_LIBRARY := 
netmgr_PREBUILT_LIBRARY := 
armv7m_PREBUILT_LIBRARY := 
atsame54_PREBUILT_LIBRARY := 
iotkit_PREBUILT_LIBRARY := 
rhino_PREBUILT_LIBRARY := 
sal_PREBUILT_LIBRARY := 
device_sal_mk3060_PREBUILT_LIBRARY := 
vcall_PREBUILT_LIBRARY := 
vfs_PREBUILT_LIBRARY := 
yloop_PREBUILT_LIBRARY := 
activation_TYPE             := 
alicrypto_TYPE             := 
atparser_TYPE             := 
board_atsame54-xpro_TYPE             := kernel
auto_component_TYPE             := kernel
base64_TYPE             := share
cjson_TYPE             := share
cli_TYPE             := kernel
mqtt_TYPE             := 
MQTTPacket_TYPE             := 
digest_algorithm_TYPE             := share
fota_TYPE             := kernel
fota_download_TYPE             := kernel
download_http_TYPE             := kernel
fota_socket_TYPE             := kernel
socket_stand_TYPE             := kernel
fota_platform_TYPE             := kernel
fota_mqtt_transport_TYPE             := kernel
framework_TYPE             := framework
hal_TYPE             := kernel
kernel_init_TYPE             := kernel
vfs_device_TYPE             := 
newlib_stub_TYPE             := share
log_TYPE             := share
mbedtls_TYPE             := 
kv_TYPE             := kernel
mqttapp_TYPE             := 
netmgr_TYPE             := framework
armv7m_TYPE             := 
atsame54_TYPE             := kernel
iotkit_TYPE             := framework
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
