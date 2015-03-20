LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= libaec

LOCAL_SRC_FILES := 	webrtc/common_audio/ring_buffer.c \
	webrtc/common_audio/signal_processing/randomization_functions.c \
	webrtc/modules/audio_processing/utility/delay_estimator_wrapper.c \
	webrtc/modules/audio_processing/utility/delay_estimator.c \
	webrtc/modules/audio_processing/aec/aec_core.c \
	webrtc/modules/audio_processing/aec/aec_core_neon.c \
	webrtc/modules/audio_processing/aec/aec_rdft.c \
	webrtc/modules/audio_processing/aec/aec_rdft_neon.c \
	webrtc/modules/audio_processing/aec/aec_resampler.c \
	webrtc/modules/audio_processing/aec/echo_cancellation.c 
	
LOCAL_CFLAGS := -DWEBRTC_ARCH_ARM_NEON -DWEBRTC_ARCH_ARM_V7 -march=armv7-a -mfloat-abi=softfp -mfpu=neon

LOCAL_C_INCLUDES := $(LOCAL_PATH)

include $(BUILD_SHARED_LIBRARY)
