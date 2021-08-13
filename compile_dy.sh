#!/bin/sh
my_func(){
	./gradlew :app:assembleDouyinCnDebug;
	if [ $? -eq 0 ]; then
		echo "compile succeed"
	else
		echo "compile failed"
		return
	fi
	date;
	adb install ./app/build/outputs/apk/douyinCn/debug/app-douyin-cn-debug.apk;
	adb shell am force-stop com.ss.android.ugc.aweme;
	adb shell am start -n com.ss.android.ugc.aweme/.splash.SplashActivity;
	date;
}

my_func
