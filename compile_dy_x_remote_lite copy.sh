#!/bin/sh
install(){
	./start.sh pull -f plugins/dylite/tools_plugin/build/outputs/apk/dyliteCn/debug/tools_plugin-dylite-cn-debug.apk;
	adb push plugins/dylite/tools_plugin/build/outputs/apk/dyliteCn/debug/tools_plugin-dylite-cn-debug.apk /sdcard/Android/data/com.ss.android.ugc.aweme.lite/files/.patchs/;
	date;
}

restart(){
	adb shell am force-stop com.ss.android.ugc.aweme.lite;
	adb shell am start -n com.ss.android.ugc.aweme.lite/com.ss.android.ugc.aweme.splash.SplashActivity;
	date;
}

compile(){
	./start.sh eval "rm switch.local.yml && ./gradlew app:clean :app:assembleDyliteCnDebug -PopenMira=true" --max-workers=64
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