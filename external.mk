include $(sort $(wildcard $(BR2_EXTERNAL_MSQUID_PATH)/package/*/*.mk))

define MSQUID_UBOOT_REGISTER_DTS
	cp -f $(BR2_EXTERNAL_MSQUID_PATH)/board/squidpi/linux/sun8i-v3s.dtsi $(@D)/arch/arm/dts/
	grep -q "sun8i-v3lp-squidpi.dtb" $(@D)/arch/arm/dts/Makefile || \
		sed -i '/sun8i-v3s-licheepi-zero.dtb/a dtb-$$(CONFIG_MACH_SUN8I_V3S) += sun8i-v3lp-squidpi.dtb' $(@D)/arch/arm/dts/Makefile
endef

UBOOT_PRE_CONFIGURE_HOOKS += MSQUID_UBOOT_REGISTER_DTS