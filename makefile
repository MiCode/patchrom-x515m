#
# Makefile for u8860
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := HTCCamera

local-modified-jars := HTCExtension

local-miui-modified-apps := Phone ThemeManager Mms MiuiHome Settings MiuiSystemUI
# All apks from MIUI
local-miui-removed-apps  := LatinIME MiuiGallery MediaProvider

# All apps need to be reserved from original ZIP file
local-phone-apps := ApplicationsProvider AppSharing BackupRestoreConfirmation BrcmBluetoothServices \
	CertInstaller CustomizationSettingsProvider DefaultContainerService DFPI DrmProvider GoogleTTS \
	HTC_IME HTCCamera HtcFMRadio HTMLViewer KeyChain LiveWallpapers LMW \
	NoiseField OneTimeInitializer PhaseBeam PluginManager SDCardWizard SharedStorageBackup SmartNetwork \
	talkback TrimIt UploadProvider Usage UserDictionaryProvider WifiRouter FaceLock HtcMusicEnhancer HTCAlbum \
	MediaProvider HtcVideoPlayer

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

	@echo CID default xml
	cp other/default.xml $(ZIP_DIR)/system/customize/CID/default.xml

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo add system app
	cp other/system_app/* $(ZIP_DIR)/system/app/

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/
	cp other/system_xbin/* $(ZIP_DIR)/system/xbin/

	@echo delete redundance files
	rm -f $(ZIP_DIR)/system/customize/resource/*.png
	rm -f $(ZIP_DIR)/system/customize/resource/*.jpg
	rm -rf $(ZIP_DIR)/system/media/weather
	rm -rf $(ZIP_DIR)/system/media/video
	rm -f $(ZIP_DIR)/system/bin/su
local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip
