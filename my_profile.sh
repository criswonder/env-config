export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ll='ls -al'

HISTFILESIZE=50000
HISTSIZE=10000
HISTTIMEFORMAT='%F %T '
HISTCONTROL=erasedups

PROMPT_COMMAND="history -a"

#aosp 指定编译目录
export OUT_DIR_COMMON_BASE=/Volumes/ubuntu-extra/out
nm_dir="ndk-bundle/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/arm-linux-androideabi/bin"
export ANDROID_HOME=/Users/hongyun/environment/android-sdk-macosx
#export NDK=/Users/hongyun/fish/android-sdk-macosx/ndk-bundle
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/${nm_dir}
#export NDK_HOME=/Users/hongyun/source/cpp/ffmpeg/android-ndk-r17c

alias flutterg='export FLUTTER_HOME=/Users/hongyun/source/flutter/flutter;export FLUTTER_ROOT=/Users/hongyun/source/flutter/flutter;export PATH=${FLUTTER_HOME}/bin:${PATH}'
alias flutterf='export FLUTTER_HOME=/Users/hongyun/source/fwn_idlefish/flutter;export PATH=${FLUTTER_HOME}/bin:${PATH}'
flutterf
export DEPOT_TOOLS=/Users/hongyun/source/flutter/depot_tools
export CQUERY=/Users/hongyun/source/cpp/cquery/build/release/bin
export PATH=${FLUTTER_HOME}/bin:${PATH}:${DEPOT_TOOLS}:${CQUERY}


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

#grep history alias
alias gh='history|grep '
alias hg='history|grep '
alias adbg='adb logcat |grep '
alias adbcg='adb logcat -c;adb logcat |grep '
alias adbc='adb logcat -c;adb logcat '

#gradle debug
alias openDebug='cp /Users/hongyun/source/personal/env-config/open_debug.properties ~/.gradle/gradle.properties'
alias closeDebug='cp /Users/hongyun/source/personal/env-config/close_debug.properties ~/.gradle/gradle.properties'
# set the number of open files to be 1024
ulimit -S -n 1024

#ffmpeg pkg-config
export FFMPEG_PKG_HOME=/usr/local/Cellar/ffmpeg/4.1.4/lib/pkgconfig
export PKG_CONFIG_PATH=${FFMPEG_PKG_HOME}:/usr/local/lib/pkgconfig
#flutter bin pana
export PATH="$PATH":"$HOME/source/flutter/flutter/.pub-cache/bin":"$FLUTTER_HOME/bin/cache/dart-sdk/bin":"$HOME/.pub-cache/bin"


[ -f ~/.tbenv/bundler-exec.sh ] && source ~/.tbenv/bundler-exec.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"

