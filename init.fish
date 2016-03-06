set -q ANDROID_SDK_ROOT; or set -l ANDROID_SDK_ROOT /opt/android-sdk

set PATH $ANDROID_SDK_ROOT/platform-tools $ANDROID_SDK_ROOT/tools $PATH
