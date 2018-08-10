#Android.mk

# 鍒濆鍖栫紪璇戠洰褰曠敱缂栬瘧绯荤粺瀹屾垚: 鍙栧緱璋冪敤瀹忓嚱鏁癿y-dir鐨勮繑鍥炲�硷紙褰撳墠鐩綍锛夊瓨鏀惧埌LOCAL_PATH鍙橀噺
LOCAL_PATH := $(call my-dir)

# 闅旂绯荤粺鍙橀噺锛堥櫎浜嗘垜浠缃殑LOCAL_PATH鍙橀噺锛�
include $(CLEAR_VARS)

# 妯″潡鍚嶅瓧锛堣緭鍑哄簱鐨勫悕瀛楋級
LOCAL_MODULE := student

# 缂栬瘧涓緷璧栫殑婧愭枃浠讹紙闈炲ご鏂囦欢锛�
LOCAL_SRC_FILES := age.c student.c

# 缂栬瘧涓緷璧栫殑澶存枃浠讹紙绯荤粺澶存枃浠惰嚜鍔ㄤ緷璧栨坊鍔狅級
LOCAL_C_INCLUDES := include/age.h

# 杈撳嚭搴撶殑绫诲瀷 BUILD_SHARED_LIBRARY 鍔ㄦ�佸簱 .so锛孊UILD_STATIC_LIBRARY 闈欐�佸簱 .a锛屽彲鎵ц鏂囦欢 BUILD_EXECUTABLE
include $(BUILD_SHARED_LIBRARY)


#######


LOCAL_PATH := $(call my-dir)

#第三方的编译模块
include $(CLEAR_VARS)
LOCAL_MODULE    := student
LOCAL_SRC_FILES := libstudent.so
#下面是申明第三方头文件路径
LOCAL_EXPORT_C_INCLUDES := include
include $(PREBUILT_SHARED_LIBRARY)

#自己的编译模块
include $(CLEAR_VARS)
LOCAL_MODULE    := teacher
LOCAL_SRC_FILES := teacher.c
LOCAL_LDLIBS    += -L$(SYSROOT) -llog
LOCAL_CFLAGS    := -g
#这里引入第三方编译模块
LOCAL_SHARED_LIBRARIES := student
include $(BUILD_SHARED_LIBRARY)