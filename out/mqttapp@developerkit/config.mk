AOS_SDK_MAKEFILES           		+= ./framework/activation/activation.mk ./security/alicrypto/alicrypto.mk ./framework/atparser/atparser.mk ./out/mqttapp@developerkit/auto_component/auto_component.mk ./utility/base64/base64.mk ./utility/cjson/cjson.mk ./tools/cli/cli.mk ./framework/connectivity/mqtt/mqtt.mk ./framework/connectivity/mqtt/MQTTPacket/MQTTPacket.mk ./board/developerkit/developerkit.mk ./utility/digest_algorithm/digest_algorithm.mk ./framework/fota/fota.mk ./framework/fota/download/download.mk ./framework/fota/download/http/http.mk ./framework/fota/download/http/socket/socket.mk ./framework/fota/download/http/socket/stand/stand.mk ./framework/fota/platform/platform.mk ./framework/fota/platform/mqtt/mqtt.mk ././framework/common/common.mk ./kernel/hal/hal.mk ./kernel/init/init.mk ././kernel/modules/fs/kv/kv.mk ././kernel/vfs/device/device.mk ./utility/libc/libc.mk ./utility/log/log.mk ./security/mbedtls/mbedtls.mk ./example/mqttapp/mqttapp.mk ./framework/netmgr/netmgr.mk ././platform/arch/arm/armv7m/armv7m.mk ././platform/mcu/stm32l4xx_cube/stm32l4xx_cube.mk ./framework/protocol/linkkit/iotkit/iotkit.mk ./kernel/rhino/rhino.mk ./device/sal/sal.mk ./device/sal/wifi/bk7231/bk7231.mk ./device/sensor/sensor.mk ./kernel/vcall/vcall.mk ./kernel/vfs/vfs.mk ./kernel/yloop/yloop.mk
TOOLCHAIN_NAME            		:= GCC
AOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -T board/developerkit/STM32L496VGTx_FLASH.ld -mcpu=cortex-m4 -mlittle-endian -mthumb -mthumb-interwork --specs=nosys.specs -mfloat-abi=hard -mfpu=fpv4-sp-d16 --specs=nano.specs -u _printf_float
AOS_SDK_LDS_FILES                     += 
AOS_SDK_LDS_INCLUDES                  += 
RESOURCE_CFLAGS					+= -DSTM32L496xx -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\" -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\" -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"
AOS_SDK_LINK_SCRIPT         		+= 
AOS_SDK_LINK_SCRIPT_CMD    	 	+= 
AOS_SDK_PREBUILT_LIBRARIES 	 	+= ./framework/activation/./Cortex-M4/VFP/activation.a
AOS_SDK_CERTIFICATES       	 	+= 
AOS_SDK_PRE_APP_BUILDS      		+= 
AOS_SDK_LINK_FILES          		+=                                                                            
AOS_SDK_INCLUDES           	 	+=                                               -I./framework/activation/. -I./security/alicrypto/./libalicrypto/inc -I./framework/atparser/./ -I./utility/base64/. -I./utility/cjson/include -I./tools/cli/include -I./framework/connectivity/mqtt/./ -I./board/developerkit/. -I./board/developerkit/hal/ -I./board/developerkit/aos/ -I./board/developerkit/Inc/ -I./utility/digest_algorithm/. -I./framework/fota/. -I./framework/fota/download/./ -I./framework/fota/download/http/socket/./ -I./framework/fota/platform/./ -I././kernel/modules/fs/kv/include -I./security/mbedtls/include -I./framework/netmgr/include -I./framework/netmgr/../protocol/alink/os/platform/ -I././platform/arch/arm/armv7m/gcc/m4/ -I././platform/mcu/stm32l4xx_cube/Drivers/STM32L4xx_HAL_Driver/Inc -I././platform/mcu/stm32l4xx_cube/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I././platform/mcu/stm32l4xx_cube/Drivers/CMSIS/Include -I././platform/mcu/stm32l4xx_cube/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I./framework/protocol/linkkit/iotkit/sdk-encap -I./framework/protocol/linkkit/iotkit/sdk-encap/imports -I./framework/protocol/linkkit/iotkit/iotkit-system -I./framework/protocol/linkkit/iotkit/base/log/LITE-log -I./framework/protocol/linkkit/iotkit/base/utils -I./framework/protocol/linkkit/iotkit/base/utils/include -I./framework/protocol/linkkit/iotkit/layers/config/include -I./framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/ -I./framework/protocol/linkkit/iotkit/base/utils/misc/ -I./framework/protocol/linkkit/iotkit/base/utils/digest -I./framework/protocol/linkkit/iotkit/hal-impl -I./kernel/rhino/core/include -I./kernel/rhino/debug/include -I./device/sal/./include -I./device/sal/wifi/bk7231/./ -I./device/sensor/. -I./kernel/vcall/./mico/include -I./kernel/vfs/include -I./include -I./example/mqttapp
AOS_SDK_DEFINES             		+=                                          -DBUILD_BIN -DCONFIG_ALICRYPTO -DAOS_ATCMD -DAT_PARSER_DELAY_FLAG -DHAVE_NOT_ADVANCED_FORMATE -DCONFIG_AOS_CLI -DMQTT_COMM_ENABLED -DCMP_VIA_MQTT_DIRECT -DMQTT_DIRECT -DSTDIO_UART=0 -DCONFIG_AOS_CLI_BOARD -DAOS_SENSOR_BARO_BOSCH_BMP280 -DAOS_SENSOR_ALS_LITEON_LTR553 -DAOS_SENSOR_PS_LITEON_LTR553 -DAOS_SENSOR_HUMI_SENSIRION_SHTC1 -DAOS_SENSOR_TEMP_SENSIRION_SHTC1 -DAOS_SENSOR_ACC_ST_LSM6DSL -DAOS_SENSOR_MAG_MEMSIC_MMC3680KJ -DAOS_SENSOR_GYRO_ST_LSM6DSL -DAOS_FOTA -DVCALL_RHINO -DAOS_FRAMEWORK_COMMON -DAOS_HAL -DAOS_KV -DMQTT_TEST -DALIOT_DEBUG -DIOTX_DEBUG -DUSE_LPTHREAD -DAOS_NETMGR -DCONFIG_AOS_KV_MULTIPTN_MODE -DCONFIG_AOS_KV_PTN=6 -DCONFIG_AOS_KV_SECOND_PTN=7 -DCONFIG_AOS_KV_PTN_SIZE=4096 -DCONFIG_AOS_KV_BUFFER_SIZE=8192 -DCONFIG_IOT_KIT -DWITH_SAL -DDEV_SAL_BK7231 -DAOS_SENSOR -DAOS_VFS -DAOS_LOOP
COMPONENTS                		:= activation alicrypto atparser auto_component base64 cjson cli mqtt MQTTPacket developerkit digest_algorithm fota fota_download download_http fota_socket socket_stand fota_platform fota_mqtt_transport framework hal kernel_init kv vfs_device newlib_stub log mbedtls mqttapp netmgr armv7m stm32l4xx_cube iotkit rhino sal device_sal_bk7231 sensor vcall vfs yloop
PLATFORM_DIRECTORY        		:= developerkit
APP_FULL                  		:= mqttapp
PLATFORM                  		:= developerkit
HOST_MCU_FAMILY                  	:= stm32l4xx_cube
SUPPORT_BINS                          := no
APP                       		:= mqttapp
HOST_OPENOCD              		:= stm32l4xx
JTAG              		        := jlink_swd
HOST_ARCH                 		:= Cortex-M4
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
activation_LOCATION         := ./framework/activation/
alicrypto_LOCATION         := ./security/alicrypto/
atparser_LOCATION         := ./framework/atparser/
auto_component_LOCATION         := ./out/mqttapp@developerkit/auto_component/
base64_LOCATION         := ./utility/base64/
cjson_LOCATION         := ./utility/cjson/
cli_LOCATION         := ./tools/cli/
mqtt_LOCATION         := ./framework/connectivity/mqtt/
MQTTPacket_LOCATION         := ./framework/connectivity/mqtt/MQTTPacket/
developerkit_LOCATION         := ./board/developerkit/
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
kv_LOCATION         := ././kernel/modules/fs/kv/
vfs_device_LOCATION         := ././kernel/vfs/device/
newlib_stub_LOCATION         := ./utility/libc/
log_LOCATION         := ./utility/log/
mbedtls_LOCATION         := ./security/mbedtls/
mqttapp_LOCATION         := ./example/mqttapp/
netmgr_LOCATION         := ./framework/netmgr/
armv7m_LOCATION         := ././platform/arch/arm/armv7m/
stm32l4xx_cube_LOCATION         := ././platform/mcu/stm32l4xx_cube/
iotkit_LOCATION         := ./framework/protocol/linkkit/iotkit/
rhino_LOCATION         := ./kernel/rhino/
sal_LOCATION         := ./device/sal/
device_sal_bk7231_LOCATION         := ./device/sal/wifi/bk7231/
sensor_LOCATION         := ./device/sensor/
vcall_LOCATION         := ./kernel/vcall/
vfs_LOCATION         := ./kernel/vfs/
yloop_LOCATION         := ./kernel/yloop/
activation_SOURCES          += 
alicrypto_SOURCES          += ./libalicrypto/ali_crypto.c ./libalicrypto/mbed/asym/rsa.c ./libalicrypto/mbed/cipher/aes.c ./libalicrypto/mbed/hash/hash.c ./libalicrypto/mbed/mac/hmac.c ./libalicrypto/sw/ali_crypto_rand.c ./libalicrypto/test/ali_crypto_test.c ./libalicrypto/test/ali_crypto_test_aes.c ./libalicrypto/test/ali_crypto_test_comm.c ./libalicrypto/test/ali_crypto_test_hash.c ./libalicrypto/test/ali_crypto_test_hmac.c ./libalicrypto/test/ali_crypto_test_rand.c ./libalicrypto/test/ali_crypto_test_rsa.c ./mbedtls/library/aes.c ./mbedtls/library/asn1parse.c ./mbedtls/library/bignum.c ./mbedtls/library/hash_wrap.c ./mbedtls/library/hmac.c ./mbedtls/library/mbedtls_alt.c ./mbedtls/library/md5.c ./mbedtls/library/oid.c ./mbedtls/library/rsa.c ./mbedtls/library/sha1.c ./mbedtls/library/sha256.c ./mbedtls/library/threading.c 
atparser_SOURCES          += atparser.c 
auto_component_SOURCES          +=  component_init.c testcase_register.c
base64_SOURCES          += base64.c 
cjson_SOURCES          += cJSON.c cJSON_Utils.c 
cli_SOURCES          += cli.c dumpsys.c 
mqtt_SOURCES          += mqtt_client.c mqtt_instance.c 
MQTTPacket_SOURCES          += MQTTConnectClient.c MQTTDeserializePublish.c MQTTPacket.c MQTTSerializePublish.c MQTTSubscribeClient.c MQTTUnsubscribeClient.c 
developerkit_SOURCES          += += Src/adc.c Src/crc.c Src/dcmi.c Src/dma.c Src/i2c.c Src/irtim.c Src/main.c Src/sai.c Src/sdmmc.c Src/spi.c Src/stm32l4xx_hal_msp.c Src/tim.c Src/usart.c Src/usb_otg.c aos/board.c aos/board_cli.c aos/soc_init.c aos/st7789.c developerkit_SOURCES startup_stm32l496xx.s 
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
kv_SOURCES          += kvmgr.c 
vfs_device_SOURCES          += vfs_adc.c vfs_gpio.c vfs_i2c.c vfs_pwm.c vfs_rtc.c vfs_spi.c vfs_uart.c vfs_wdg.c 
newlib_stub_SOURCES          += newlib_stub.c 
log_SOURCES          += log.c 
mbedtls_SOURCES          += src/aes.c src/aesni.c src/arc4.c src/asn1write.c src/base64.c src/bignum.c src/blowfish.c src/camellia.c src/ccm.c src/cipher.c src/cipher_wrap.c src/cmac.c src/ctr_drbg.c src/debug.c src/des.c src/dhm.c src/ecdh.c src/ecdsa.c src/ecjpake.c src/ecp.c src/ecp_curves.c src/entropy.c src/entropy_poll.c src/error.c src/gcm.c src/havege.c src/hmac_drbg.c src/mbedtls_alt.c src/mbedtls_net.c src/mbedtls_ssl.c src/md.c src/md2.c src/md4.c src/md_wrap.c src/memory_buffer_alloc.c src/net_sockets.c src/oid.c src/padlock.c src/pem.c src/pk.c src/pk_wrap.c src/pkcs11.c src/pkcs12.c src/pkcs5.c src/pkparse.c src/pkwrite.c src/platform.c src/ripemd160.c src/rsa.c src/sha512.c src/ssl_cache.c src/ssl_ciphersuites.c src/ssl_cli.c src/ssl_cookie.c src/ssl_srv.c src/ssl_ticket.c src/ssl_tls.c src/timing.c src/version.c src/version_features.c src/x509.c src/x509_create.c src/x509_crl.c src/x509_crt.c src/x509_csr.c src/x509write_crt.c src/x509write_csr.c src/xtea.c 
mqttapp_SOURCES          += mqtt-example.c 
netmgr_SOURCES          += netmgr.c 
armv7m_SOURCES          += gcc/m4/port_c.c gcc/m4/port_s.S 
stm32l4xx_cube_SOURCES          += Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_adc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_adc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_can.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_comp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_crc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_crc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cryp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cryp_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dac.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dac_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dcmi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dfsdm.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dfsdm_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma2d.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dsi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_firewall.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ramfunc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gfxmmu.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_hash.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_hash_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_hcd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_irda.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_iwdg.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_lcd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_lptim.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_ltdc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_ltdc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_nand.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_nor.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_opamp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_opamp_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_ospi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pcd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pcd_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_qspi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rng.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sai.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sd_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_smartcard.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_smartcard_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_smbus.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sram.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_swpmi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tsc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_wwdg.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_adc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_comp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_crc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_crs.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_dac.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_dma.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_dma2d.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_exti.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_fmc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_gpio.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_i2c.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_lptim.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_lpuart.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_opamp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_pwr.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_rcc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_rng.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_rtc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_sdmmc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_spi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_usart.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_usb.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_utils.c aos/aos.c aos/soc_impl.c aos/trace_impl.c hal/hal_adc_stm32l4.c hal/hal_flash_stm32l4.c hal/hal_gpio_stm32l4.c hal/hal_i2c_stm32l4.c hal/hal_nand_stm32l4.c hal/hal_nor_stm32l4.c hal/hal_qspi_stm32l4.c hal/hal_rtc_stm32l4.c hal/hal_sd_stm32l4.c hal/hal_spi_stm32l4.c hal/hal_uart_stm32l4.c hal/hw.c hal/ota_port.c 
iotkit_SOURCES          += base/log/LITE-log/lite-log.c base/utils//digest/utils_base64.c base/utils//digest/utils_hmac.c base/utils//digest/utils_md5.c base/utils//digest/utils_sha1.c base/utils//misc/utils_epoch_time.c base/utils//misc/utils_httpc.c base/utils//misc/utils_list.c base/utils//misc/utils_net.c base/utils//misc/utils_timer.c base/utils//misc/work_queue.c base/utils/LITE-utils/src/json_parser.c base/utils/LITE-utils/src/json_token.c base/utils/LITE-utils/src/mem_stats.c base/utils/LITE-utils/src/string_utils.c hal-impl/rhino/HAL_OS_rhino.c hal-impl/rhino/HAL_PRODUCT_rhino.c hal-impl/rhino/HAL_TCP_rhino.c hal-impl/rhino/HAL_UDP_rhino.c hal-impl/tls/mbedtls/HAL_DTLS_mbedtls.c hal-impl/tls/mbedtls/HAL_TLS_mbedtls.c iotkit-system/src/ca.c iotkit-system/src/class_interface.c iotkit-system/src/device.c iotkit-system/src/guider.c iotkit-system/src/id2_guider.c iotkit-system/src/report.c iotkit-system/src/sdk-impl.c layers/config/src/dev_conf.c 
rhino_SOURCES          += common/k_fifo.c common/k_trace.c core/k_buf_queue.c core/k_dyn_mem_proc.c core/k_err.c core/k_event.c core/k_idle.c core/k_mm.c core/k_mm_blk.c core/k_mm_debug.c core/k_mutex.c core/k_obj.c core/k_pend.c core/k_queue.c core/k_ringbuf.c core/k_sched.c core/k_sem.c core/k_stats.c core/k_sys.c core/k_task.c core/k_task_sem.c core/k_tick.c core/k_time.c core/k_timer.c core/k_workqueue.c debug/k_overview.c 
sal_SOURCES          += ip4_addr.c sal.c sal_arch.c sal_device.c sal_err.c sal_sockets.c 
device_sal_bk7231_SOURCES          += bk7231.c wifi_atcmd_bk7231.c 
sensor_SOURCES          += drv/drv_acc_adi_adxl345.c drv/drv_acc_adi_adxl355.c drv/drv_acc_bosch_bma253.c drv/drv_acc_bosch_bma4xy.c drv/drv_acc_gyro_bosch_bmi160.c drv/drv_acc_gyro_bosch_bmi260.c drv/drv_acc_gyro_st_lsm6ds3.c drv/drv_acc_gyro_st_lsm6ds3tr_c.c drv/drv_acc_gyro_st_lsm6dsl.c drv/drv_acc_gyro_st_lsm6dsm.c drv/drv_acc_gyro_st_lsm6dsoq.c drv/drv_acc_gyro_st_lsm6dsr.c drv/drv_acc_mag_st_lsm303agr.c drv/drv_acc_mir3_da213B.c drv/drv_acc_mir3_da215.c drv/drv_acc_mir3_da217.c drv/drv_acc_st_ais328dq.c drv/drv_acc_st_h3lis100dl.c drv/drv_acc_st_h3lis331dl.c drv/drv_acc_st_lis2dh12.c drv/drv_acc_st_lis2dw12.c drv/drv_acc_st_lis2hh12.c drv/drv_acc_st_lis331hh.c drv/drv_acc_st_lis3dh.c drv/drv_acc_st_n2dm.c drv/drv_als_ams_tcs3400.c drv/drv_als_liteon_ltr303.c drv/drv_als_liteon_ltr568.c drv/drv_als_ps_ams_tmd2725.c drv/drv_als_ps_liteon_ltr507.c drv/drv_als_ps_liteon_ltr553.c drv/drv_als_ps_liteon_ltr559.c drv/drv_baro_bosch_bmp280.c drv/drv_baro_bosch_bmp38x.c drv/drv_baro_rohm_bm1383a.c drv/drv_baro_st_lps22hb.c drv/drv_baro_st_lps33hb.c drv/drv_baro_st_lps35hb.c drv/drv_gyro_st_a3g4250d.c drv/drv_gyro_st_i3g4250d.c drv/drv_gyro_st_l3gd20h.c drv/drv_mag_rohm_bm1422a.c drv/drv_mag_st_lis2mdl.c drv/drv_mag_st_lis3mdl.c drv/drv_mag_temp_memsic_mmc3680kj.c drv/drv_ps_liteon_ltr659.c drv/drv_ps_liteon_ltr690.c drv/drv_ps_liteon_ltr706.c drv/drv_temp_adi_adt7410.c drv/drv_temp_humi_sensirion_shtc1.c drv/drv_temp_humi_st_hts221.c drv/drv_uv_liteon_ltr390.c hal/sensor_drv_api.c hal/sensor_hal.c 
vcall_SOURCES          += aos/aos_rhino.c 
vfs_SOURCES          += device.c select.c vfs.c vfs_file.c vfs_inode.c vfs_register.c 
yloop_SOURCES          += local_event.c yloop.c 
activation_CHECK_HEADERS    += 
alicrypto_CHECK_HEADERS    += 
atparser_CHECK_HEADERS    += 
auto_component_CHECK_HEADERS    += 
base64_CHECK_HEADERS    += 
cjson_CHECK_HEADERS    += 
cli_CHECK_HEADERS    += 
mqtt_CHECK_HEADERS    += 
MQTTPacket_CHECK_HEADERS    += 
developerkit_CHECK_HEADERS    += 
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
kv_CHECK_HEADERS    += 
vfs_device_CHECK_HEADERS    += 
newlib_stub_CHECK_HEADERS    += 
log_CHECK_HEADERS    += 
mbedtls_CHECK_HEADERS    += 
mqttapp_CHECK_HEADERS    += 
netmgr_CHECK_HEADERS    += 
armv7m_CHECK_HEADERS    += 
stm32l4xx_cube_CHECK_HEADERS    += 
iotkit_CHECK_HEADERS    += 
rhino_CHECK_HEADERS    += 
sal_CHECK_HEADERS    += 
device_sal_bk7231_CHECK_HEADERS    += 
sensor_CHECK_HEADERS    += 
vcall_CHECK_HEADERS    += 
vfs_CHECK_HEADERS    += 
yloop_CHECK_HEADERS    += 
activation_INCLUDES         := 
alicrypto_INCLUDES         := -I./security/alicrypto/./mbedtls/include/mbedtls -I./security/alicrypto/./libalicrypto/mbed/inc -I./security/alicrypto/./libalicrypto/sw -I./security/alicrypto/./mbedtls/include -I./security/alicrypto/./libalicrypto/test/inc -I./security/alicrypto/./mbedtls/include/mbedtls -I./security/alicrypto/./libalicrypto/mbed/inc -I./security/alicrypto/./libalicrypto/sw -I./security/alicrypto/./mbedtls/include -I./security/alicrypto/./libalicrypto/test/inc
atparser_INCLUDES         := 
auto_component_INCLUDES         := 
base64_INCLUDES         := 
cjson_INCLUDES         := 
cli_INCLUDES         := 
mqtt_INCLUDES         := 
MQTTPacket_INCLUDES         := 
developerkit_INCLUDES         := 
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
kv_INCLUDES         := 
vfs_device_INCLUDES         := -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/ -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/
newlib_stub_INCLUDES         := 
log_INCLUDES         := 
mbedtls_INCLUDES         := 
mqttapp_INCLUDES         := 
netmgr_INCLUDES         := 
armv7m_INCLUDES         := 
stm32l4xx_cube_INCLUDES         := 
iotkit_INCLUDES         := -I./framework/protocol/linkkit/iotkit/base/log/LITE-log/ -I./framework/protocol/linkkit/iotkit/./ilop_utils_config.h -I./framework/protocol/linkkit/iotkit/./exports -I./framework/protocol/linkkit/iotkit/../../sdk-encap -I./framework/protocol/linkkit/iotkit/../log -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/layers/config/include -I./framework/protocol/linkkit/iotkit/base/log/LITE-log/ -I./framework/protocol/linkkit/iotkit/./ilop_utils_config.h -I./framework/protocol/linkkit/iotkit/./exports -I./framework/protocol/linkkit/iotkit/../../sdk-encap -I./framework/protocol/linkkit/iotkit/../log -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/./ -I./framework/protocol/linkkit/iotkit/layers/config/include
rhino_INCLUDES         := 
sal_INCLUDES         := 
device_sal_bk7231_INCLUDES         := 
sensor_INCLUDES         := 
vcall_INCLUDES         := 
vfs_INCLUDES         := 
yloop_INCLUDES         := 
activation_DEFINES          := 
alicrypto_DEFINES          := 
atparser_DEFINES          := 
auto_component_DEFINES          := 
base64_DEFINES          := 
cjson_DEFINES          := 
cli_DEFINES          := 
mqtt_DEFINES          := 
MQTTPacket_DEFINES          := 
developerkit_DEFINES          := 
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
kv_DEFINES          := 
vfs_device_DEFINES          := 
newlib_stub_DEFINES          := 
log_DEFINES          := 
mbedtls_DEFINES          := -DLWIP_ENABLED -DLWIP_ENABLED
mqttapp_DEFINES          := 
netmgr_DEFINES          := 
armv7m_DEFINES          := 
stm32l4xx_cube_DEFINES          := 
iotkit_DEFINES          := 
rhino_DEFINES          := 
sal_DEFINES          := 
device_sal_bk7231_DEFINES          := 
sensor_DEFINES          := 
vcall_DEFINES          := 
vfs_DEFINES          := 
yloop_DEFINES          := 
activation_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
alicrypto_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64 -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64
atparser_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
auto_component_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
base64_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
cjson_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
cli_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
mqtt_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -DOTA_SIGNAL_CHANNEL=1  -DOTA_SIGNAL_CHANNEL=1 
MQTTPacket_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
developerkit_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
digest_algorithm_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
fota_download_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
download_http_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_socket_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
socket_stand_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_platform_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_mqtt_transport_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
framework_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
hal_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
kernel_init_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
kv_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
vfs_device_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
newlib_stub_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
log_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
mbedtls_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Os -Wall -Werror -Os
mqttapp_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
netmgr_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
armv7m_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
stm32l4xx_cube_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
iotkit_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -DLITE_UTILS_CONFIG_H=\"ilop_utils_config.h\" -DUTILS_printf=HAL_Printf  -DCONFIG_GUIDER_AUTH_TIMEOUT=500 -DMQTT_COMM_ENABLED -DLITE_UTILS_CONFIG_H=\"ilop_utils_config.h\" -DUTILS_printf=HAL_Printf  -DCONFIG_GUIDER_AUTH_TIMEOUT=500 -DMQTT_COMM_ENABLED
rhino_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
sal_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
device_sal_bk7231_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
sensor_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
vcall_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
vfs_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
yloop_CFLAGS           :=          -DSTM32L496xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_developerkit\" -DSYSINFO_DEVICE_NAME=\"developerkit\"         -DSYSINFO_APP_VERSION=\"app-1.0.0-20180904.0049\"           -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__  -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" -Wall -Werror -Wall -Werror
activation_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
alicrypto_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
atparser_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
auto_component_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
base64_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
cjson_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
cli_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
mqtt_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
MQTTPacket_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
developerkit_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
digest_algorithm_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_download_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
download_http_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_socket_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
socket_stand_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_platform_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
fota_mqtt_transport_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
framework_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
hal_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
kernel_init_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
kv_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
vfs_device_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
newlib_stub_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
log_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
mbedtls_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
mqttapp_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
netmgr_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
armv7m_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
stm32l4xx_cube_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
iotkit_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
rhino_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
sal_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
device_sal_bk7231_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
sensor_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
vcall_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
vfs_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
yloop_CXXFLAGS         :=                                       -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -Iout/mqttapp@developerkit/resources/ -DPLATFORM=\"developerkit\" 
activation_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
alicrypto_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
atparser_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
auto_component_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
base64_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
cjson_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
cli_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
mqtt_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
MQTTPacket_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
developerkit_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
digest_algorithm_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
fota_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
fota_download_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
download_http_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
fota_socket_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
socket_stand_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
fota_platform_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
fota_mqtt_transport_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
framework_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
hal_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
kernel_init_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
kv_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
vfs_device_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
newlib_stub_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
log_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
mbedtls_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
mqttapp_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
netmgr_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
armv7m_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
stm32l4xx_cube_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
iotkit_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
rhino_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
sal_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
device_sal_bk7231_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
sensor_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
vcall_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
vfs_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
yloop_ASMFLAGS         :=                              -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
activation_RESOURCES        := 
alicrypto_RESOURCES        := 
atparser_RESOURCES        := 
auto_component_RESOURCES        := 
base64_RESOURCES        := 
cjson_RESOURCES        := 
cli_RESOURCES        := 
mqtt_RESOURCES        := 
MQTTPacket_RESOURCES        := 
developerkit_RESOURCES        := 
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
kv_RESOURCES        := 
vfs_device_RESOURCES        := 
newlib_stub_RESOURCES        := 
log_RESOURCES        := 
mbedtls_RESOURCES        := 
mqttapp_RESOURCES        := 
netmgr_RESOURCES        := 
armv7m_RESOURCES        := 
stm32l4xx_cube_RESOURCES        := 
iotkit_RESOURCES        := 
rhino_RESOURCES        := 
sal_RESOURCES        := 
device_sal_bk7231_RESOURCES        := 
sensor_RESOURCES        := 
vcall_RESOURCES        := 
vfs_RESOURCES        := 
yloop_RESOURCES        := 
activation_MAKEFILE         := ./framework/activation/activation.mk
alicrypto_MAKEFILE         := ./security/alicrypto/alicrypto.mk
atparser_MAKEFILE         := ./framework/atparser/atparser.mk
auto_component_MAKEFILE         := ./out/mqttapp@developerkit/auto_component/auto_component.mk
base64_MAKEFILE         := ./utility/base64/base64.mk
cjson_MAKEFILE         := ./utility/cjson/cjson.mk
cli_MAKEFILE         := ./tools/cli/cli.mk
mqtt_MAKEFILE         := ./framework/connectivity/mqtt/mqtt.mk
MQTTPacket_MAKEFILE         := ./framework/connectivity/mqtt/MQTTPacket/MQTTPacket.mk
developerkit_MAKEFILE         := ./board/developerkit/developerkit.mk
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
kv_MAKEFILE         := ././kernel/modules/fs/kv/kv.mk
vfs_device_MAKEFILE         := ././kernel/vfs/device/device.mk
newlib_stub_MAKEFILE         := ./utility/libc/libc.mk
log_MAKEFILE         := ./utility/log/log.mk
mbedtls_MAKEFILE         := ./security/mbedtls/mbedtls.mk
mqttapp_MAKEFILE         := ./example/mqttapp/mqttapp.mk
netmgr_MAKEFILE         := ./framework/netmgr/netmgr.mk
armv7m_MAKEFILE         := ././platform/arch/arm/armv7m/armv7m.mk
stm32l4xx_cube_MAKEFILE         := ././platform/mcu/stm32l4xx_cube/stm32l4xx_cube.mk
iotkit_MAKEFILE         := ./framework/protocol/linkkit/iotkit/iotkit.mk
rhino_MAKEFILE         := ./kernel/rhino/rhino.mk
sal_MAKEFILE         := ./device/sal/sal.mk
device_sal_bk7231_MAKEFILE         := ./device/sal/wifi/bk7231/bk7231.mk
sensor_MAKEFILE         := ./device/sensor/sensor.mk
vcall_MAKEFILE         := ./kernel/vcall/vcall.mk
vfs_MAKEFILE         := ./kernel/vfs/vfs.mk
yloop_MAKEFILE         := ./kernel/yloop/yloop.mk
activation_PRE_BUILD_TARGETS:= 
alicrypto_PRE_BUILD_TARGETS:= 
atparser_PRE_BUILD_TARGETS:= 
auto_component_PRE_BUILD_TARGETS:= 
base64_PRE_BUILD_TARGETS:= 
cjson_PRE_BUILD_TARGETS:= 
cli_PRE_BUILD_TARGETS:= 
mqtt_PRE_BUILD_TARGETS:= 
MQTTPacket_PRE_BUILD_TARGETS:= 
developerkit_PRE_BUILD_TARGETS:= 
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
kv_PRE_BUILD_TARGETS:= 
vfs_device_PRE_BUILD_TARGETS:= 
newlib_stub_PRE_BUILD_TARGETS:= 
log_PRE_BUILD_TARGETS:= 
mbedtls_PRE_BUILD_TARGETS:= 
mqttapp_PRE_BUILD_TARGETS:= 
netmgr_PRE_BUILD_TARGETS:= 
armv7m_PRE_BUILD_TARGETS:= 
stm32l4xx_cube_PRE_BUILD_TARGETS:= 
iotkit_PRE_BUILD_TARGETS:= 
rhino_PRE_BUILD_TARGETS:= 
sal_PRE_BUILD_TARGETS:= 
device_sal_bk7231_PRE_BUILD_TARGETS:= 
sensor_PRE_BUILD_TARGETS:= 
vcall_PRE_BUILD_TARGETS:= 
vfs_PRE_BUILD_TARGETS:= 
yloop_PRE_BUILD_TARGETS:= 
activation_PREBUILT_LIBRARY := ./framework/activation/./Cortex-M4/VFP/activation.a
alicrypto_PREBUILT_LIBRARY := 
atparser_PREBUILT_LIBRARY := 
auto_component_PREBUILT_LIBRARY := 
base64_PREBUILT_LIBRARY := 
cjson_PREBUILT_LIBRARY := 
cli_PREBUILT_LIBRARY := 
mqtt_PREBUILT_LIBRARY := 
MQTTPacket_PREBUILT_LIBRARY := 
developerkit_PREBUILT_LIBRARY := 
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
kv_PREBUILT_LIBRARY := 
vfs_device_PREBUILT_LIBRARY := 
newlib_stub_PREBUILT_LIBRARY := 
log_PREBUILT_LIBRARY := 
mbedtls_PREBUILT_LIBRARY := 
mqttapp_PREBUILT_LIBRARY := 
netmgr_PREBUILT_LIBRARY := 
armv7m_PREBUILT_LIBRARY := 
stm32l4xx_cube_PREBUILT_LIBRARY := 
iotkit_PREBUILT_LIBRARY := 
rhino_PREBUILT_LIBRARY := 
sal_PREBUILT_LIBRARY := 
device_sal_bk7231_PREBUILT_LIBRARY := 
sensor_PREBUILT_LIBRARY := 
vcall_PREBUILT_LIBRARY := 
vfs_PREBUILT_LIBRARY := 
yloop_PREBUILT_LIBRARY := 
activation_TYPE             := 
alicrypto_TYPE             := 
atparser_TYPE             := 
auto_component_TYPE             := kernel
base64_TYPE             := share
cjson_TYPE             := share
cli_TYPE             := kernel
mqtt_TYPE             := 
MQTTPacket_TYPE             := 
developerkit_TYPE             := kernel
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
kv_TYPE             := kernel
vfs_device_TYPE             := 
newlib_stub_TYPE             := share
log_TYPE             := share
mbedtls_TYPE             := 
mqttapp_TYPE             := 
netmgr_TYPE             := framework
armv7m_TYPE             := 
stm32l4xx_cube_TYPE             := kernel
iotkit_TYPE             := framework
rhino_TYPE             := kernel
sal_TYPE             := kernel
device_sal_bk7231_TYPE             := 
sensor_TYPE             := kernel
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
