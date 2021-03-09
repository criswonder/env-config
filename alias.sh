#flutter concern
alias flutterxg='export FLUTTER_HOME=/Users/hongyun/source/work-flutter/flutter;export PATH=${FLUTTER_HOME}/bin:${PATH}'
alias fluttergh='export FLUTTER_HOME=/Users/hongyun/source/personal/flutter;export PATH=${FLUTTER_HOME}/bin:${PATH}'
fluttergh
alias fgu='flutter pub get;flutter pub upgrade'

#git alias
alias gs='git status'
alias gpush='git push'
alias gpushn='git push --no-verify'
alias gpt='git push --tags'
alias gpr='git pull --rebase'
alias gcko='git checkout '
alias gclo='git clone '
alias gc='git clean '
alias gb='git branch '
alias gamd='git commit --amend '
alias grpo='git remote prune origin'
alias gsth='git stash'

# sample gl -10
alias gl='git log'

#grep history alias
alias gh='history|grep '
alias hg='history|grep '

#adb 
alias adbg='adb logcat |grep '
alias adbcg='adb logcat -c;adb logcat |grep '
alias adbc='adb logcat -c;adb logcat '
alias add='adb devices'

#gradle debug
alias openDebug='cp /Users/hongyun/source/personal/env-config/open_debug.properties ~/.gradle/gradle.properties'
alias closeDebug='cp /Users/hongyun/source/personal/env-config/close_debug.properties ~/.gradle/gradle.properties'

#实验中的
alias .='echo $PWD'
alias rm='rm -i'
alias cdG='cd /Users/hongyun/source/personal/'

#安装ve插件
alias cve='./gradlew :plugins:vesdkplugin:clean :plugins:vesdkplugin:assemblDebug'
alias ive='adb push ./plugins/vesdkplugin/build/outputs/apk/debug/vesdkplugin-debug.apk sdcard/Android/data/com.ss.android.article.video/files/.patchs/;adb shell am force-stop com.ss.android.article.video 2>&1 | tee /dev/tty;adb shell am start -n com.ss.android.article.video/.activity.SplashActivity;date'
alias cive='./gradlew :plugins:vesdkplugin:clean :plugins:vesdkplugin:assemblDebug;adb push ./plugins/vesdkplugin/build/outputs/apk/debug/vesdkplugin-debug.apk sdcard/Android/data/com.ss.android.article.video/files/.patchs/;adb shell am force-stop com.ss.android.article.video 2>&1 | tee /dev/tty;adb shell am start -n com.ss.android.article.video/.activity.SplashActivity;date'

#./gradlew :plugins:vesdkplugin:assemblRelease
#重启西瓜app
alias rapp='adb shell am force-stop com.ss.android.article.video 2>&1 | tee /dev/tty;adb shell am start -n com.ss.android.article.video/.activity.SplashActivity;'

#查看alias
alias wcmd='which-command'
alias frl='flutter run --local-engine-src-path=$FLUTTER_ENGINE_SRC --local-engine=$FLUTTER_ENGINE'

#运行本地jetty的plant uml render server
alias jettyrun='cd /Users/hongyun/source/personal/plantuml-server;mvn jetty:run'

#systrace
alias st-start='python /Users/hongyun/Library/Android/sdk/platform-tools/systrace/systrace.py'  
# alias st-start-gfx-trace='st-start -t 8 gfx input view sched freq wm am hwui workq res dalvik sync disk load perf hal rs idle mmc'

#ffmpeg相关
alias ffprobe='ffprobe -hide_banner'
alias ffmpeg='ffmpeg -hide_banner'
alias ffplay='ffplay -hide_banner'
alias mffprobe='my_func(){ adb pull $1 mffprobe_tmp.mp4;ffprobe -hide_banner mffprobe_tmp.mp4};my_func'
alias m='./localbuild;date'