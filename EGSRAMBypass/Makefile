TARGET := iphone:clang:latest:7.0
ARCHS = arm64
THEOS_PACKAGE_SCHEME = rootless


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EGSRAMBypass

$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
(TWEAK_NAME)_LOGOS_DEFAULT_GENERATOR = internal
include $(THEOS_MAKE_PATH)/tweak.mk
