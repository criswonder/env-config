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
nm_sub_dir="ndk-bundle/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/arm-linux-androideabi/bin"
export ANDROID_HOME=/Users/hongyun/Library/Android/sdk
#export NDK=/Users/hongyun/fish/android-sdk-macosx/ndk-bundle
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/${nm_sub_dir}
# export NDK_HOME=/Users/hongyun/dev/ndk/android-ndk-r15c
# export NDK_HOME=/Users/hongyun/dev/ndk/android-ndk-r16b
export PATH="/Users/hongyun/homebrew/opt/openjdk/bin:$PATH"
#CPPFLAGS="-I/Users/hongyun/homebrew/opt/openjdk/include"
export PATH="/Users/hongyun/homebrew/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"


#flutter cn镜像 https://flutter.cn/community/china
# export PUB_HOSTED_URL=https://pub.flutter-io.cn
export PUB_HOSTED_URL=http://dart-pub.byted.org
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

##java 相关的
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
java8
#flutter debug
# export FLUTTER_ENGINE_SRC='/Users/hongyun/source/personal/githubflutter/engine/src'
# export FLUTTER_ENGINE='/Users/hongyun/source/personal/githubflutter/engine/src/out/android_debug_unopt_arm64'

# set the number of open files to be 1024
# https://ss64.com/bash/ulimit.html
# -S   Set a soft limit for the given resource.
# -n   The maximum number of open file descriptors. 
ulimit -S -n 1024

[ -f ~/.tbenv/bundler-exec.sh ] && source ~/.tbenv/bundler-exec.shcd 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/Users/hongyun/source/personal/depot_tools:/usr/local/opt/curl-openssl/bin:$PATH

# homebrew配置
export HOMEBREW_NO_AUTO_UPDATE=true

#pixel
# export ANDROID_SERIAL=9A261FFBA007DC
#pad
# export ANDROID_SERIAL=M4BPHZAB2EYF4PG
#mix
# export ANDROID_SERIAL=65cb7254
#samsung foldable
# export ANDROID_SERIAL=R38N405YM4K
# empty
# export ANDROID_SERIAL=''


source /Users/hongyun/source/personal/env-config/alias.sh

