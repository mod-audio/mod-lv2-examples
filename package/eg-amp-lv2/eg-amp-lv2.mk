######################################
#
# eg-amp
#
######################################

EG_AMP_LV2_VERSION = 76653e0458894ddd9855be4e75e3d78c2521ec70
EG_AMP_LV2_SITE = $(call github,moddevices,mod-lv2-examples,$(EG_AMP_LV2_VERSION))
EG_AMP_LV2_DEPENDENCIES =
EG_AMP_LV2_BUNDLES = eg-amp.lv2

EG_AMP_LV2_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)/examples/eg-amp.lv2/

define EG_AMP_LV2_BUILD_CMDS
	$(EG_AMP_LV2_TARGET_MAKE)
endef

define EG_AMP_LV2_INSTALL_TARGET_CMDS
	$(EG_AMP_LV2_TARGET_MAKE) install DESTDIR=$(TARGET_DIR)/
endef

$(eval $(generic-package))
