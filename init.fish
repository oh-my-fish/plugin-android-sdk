set -q ANDROID_SDK_ROOT; or set -l ANDROID_SDK_ROOT /opt/android-sdk

if not contains $ANDROID_SDK_ROOT/tools $PATH
  set PATH $ANDROID_SDK_ROOT/tools $PATH
end

if not contains $ANDROID_SDK_ROOT/platform-tools $PATH
  set PATH $ANDROID_SDK_ROOT/platform-tools $PATH
end
