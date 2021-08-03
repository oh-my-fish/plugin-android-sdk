# check for common Android SDK locations
for root in $ANDROID_SDK_ROOT $ANDROID_SDK_ROOT $HOME/Android/Sdk $HOME/Library/Android/sdk
  set -l paths
  if test -d $root
    # the SDK root exists as a directory so let's try to add the binary directories
    for bin in $root/cmdline-tools/latest/bin "$root/build-tools/"(ls $root/build-tools)[-1] $root/platform-tools $root/emulator 
      if test -d $bin
        set paths $paths $bin
      end
    end
    # if we added at least one path, let's add them to the real PATH set ANDROID_HOME and finish
    if test (count $paths) -gt 0
      set -gx PATH $PATH $paths
      set -gx ANDROID_HOME $root
      break
    end
   end
end
