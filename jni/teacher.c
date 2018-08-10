#include <jni.h>
#include "include/age.h"


int add_one(int age) {
	age += 1;
	return age;
}

JNIEXPORT jint JNICALL Java_com_example_ndkdemo_MainActivity_get(JNIEnv *env,
		jobject obj);

JNIEXPORT jint JNICALL Java_com_example_ndkdemo_MainActivity_get(JNIEnv *env,
		jobject obj) {
	int result = get_five_years_later_age(12);
	result = add_one(result);
	return result;
}
