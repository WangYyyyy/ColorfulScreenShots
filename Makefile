include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ColorfulScreenShots
ColorfulScreenShots_FILES = Tweak.xm
THEOS_DEVICE_IP = 192.168.6.239

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
