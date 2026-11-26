include $(sort $(wildcard $(BR2_EXTERNAL_MSQUID_PATH)/package/*/*.mk))

define MSQUID_UBOOT_REGISTER_DTS
	cp -f $(BR2_EXTERNAL_MSQUID_PATH)/board/squidpi/linux/sun8i-v3lp-squidpi.dts $(@D)/dts/upstream/src/arm/allwinner/
endef

UBOOT_PRE_CONFIGURE_HOOKS += MSQUID_UBOOT_REGISTER_DTS