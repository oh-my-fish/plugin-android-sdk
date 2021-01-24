set paths $ANDROID_HOME/{tool?,platform-tool?}
  or set paths $ANDROID_SDK_ROOT/{tool?,platform-tool?}
  or set paths $HOME/Android/Sdk/{tool?,platform-tool?}

if test (count $paths) -gt 0
  set -l IFS /
  echo $paths[1] | read -la components
  set -e components[-1]
  printf '/%s' $components | read -l root

  set -gx PATH $PATH $paths
  set -gx ANDROID_HOME $root
end
