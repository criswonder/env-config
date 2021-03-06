#flutter concern
alias flutterg='export FLUTTER_HOME=/Users/hongyun/source/personal/flutter-sdk/flutter;export PATH=${FLUTTER_HOME}/bin:${PATH}'
alias flutterf='export FLUTTER_HOME=/Users/hongyun/source/work/app/fwn_idlefish/flutter;export PATH=${FLUTTER_HOME}/bin:${PATH}'
flutterf
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

# sample gl -10
alias gl='git log'


#grep history alias
alias gh='history|grep '
alias hg='history|grep '
alias adbg='adb logcat |grep '
alias adbcg='adb logcat -c;adb logcat |grep '
alias adbc='adb logcat -c;adb logcat '

#gradle debug
alias openDebug='cp /Users/hongyun/source/personal/env-config/open_debug.properties ~/.gradle/gradle.properties'
alias closeDebug='cp /Users/hongyun/source/personal/env-config/close_debug.properties ~/.gradle/gradle.properties'

#实验中的
alias .='echo $PWD'
alias rm='rm -i'
alias cdG='cd /Users/hongyun/source/personal/'