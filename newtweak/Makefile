include theos/makefiles/common.mk

TWEAK_NAME = newtweak
newtweak_FILES = Tweak.xm
#因为使用到了UIView和UILabel
newtweak_FRAMEWORKS = UIKit  


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
