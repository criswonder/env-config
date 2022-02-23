#!/bin/sh
install(){
	adb install ./app/build/outputs/apk/douyinCn/debug/app-douyin-cn-debug.apk;
	# adb -s $ANDROID_SERIAL install ./app/build/outputs/apk/douyinCn/debug/app-douyin-cn-debug.apk;
	date;
}

restart(){
	adb shell am force-stop com.ss.android.ugc.aweme;
	adb shell am start -n com.ss.android.ugc.aweme/.splash.SplashActivity;

	# adb -s $ANDROID_SERIAL shell am force-stop com.ss.android.ugc.aweme;
	# adb -s $ANDROID_SERIAL shell am start -n com.ss.android.ugc.aweme/.splash.SplashActivity;

	date;
}

compile(){
	./gradlew :app:assembleDouyinCnDebug;
}

unset compile_dy_options
unset compile_dy_options_default
compile_dy_options="default"
compile_dy_options_default="default"
while getopts ":n:a:h:i" optname
do
    case "$optname" in
      "n")
        echo "get option -n,value is $OPTARG"
        ;;
      "a")
        echo "get option -a ,value is $OPTARG"
        ;;
      "h")
        echo "get option -h,eg:./test.sh -n 编程珠玑 -a 守望先生"
        ;;
	  "i")
	  	echo "will not compile project"
		compile_dy_options="i"
		install;
		restart;
		;;
      ":")
        echo "No argument value for option $OPTARG"
        ;;
      "?")
        echo "Unknown option $OPTARG"
        ;;
	  "")
	    echo 'nothing'
		;;
      *)
        echo "Unknown error while processing options"
        ;;
    esac
    # echo "option index is $OPTIND"
done

compileInstallRestart(){
	if [ $compile_dy_options == $compile_dy_options_default ]; then 
		compile;
		if [ $? -eq 0 ]; then
			echo "compile succeed"
		else
			echo "compile failed"
			return
		fi
		install;
		restart;
	fi
}

compileInstallRestart;