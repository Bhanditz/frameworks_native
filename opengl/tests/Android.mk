dirs := \
	linetex \
	swapinterval \
	textures \
	tritex \

ifneq (,$(TARGET_BUILD_JAVA_SUPPORT_LEVEL))
dirs += \
	gl2_cameraeye \
	gl2_java \
	gl2_jni \
	gldual \
	gl_jni \
	gl_perfapp \
	lighting1709 \
	testLatency \
	testPauseResume \
	testViewport \

endif # JAVA_SUPPORT

ifeq (platform,$(TARGET_BUILD_JAVA_SUPPORT_LEVEL))
dirs += \
	testFramerate

endif # JAVA_SUPPORT platform

include $(call all-named-subdir-makefiles, $(dirs))
