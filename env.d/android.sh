# soft global overrides
[[ -z "$ANDROID_HOME" && -d "/opt/boxen/homebrew/opt/android-sdk" ]] && {
  export ANDROID_HOME=/opt/boxen/homebrew/opt/android-sdk
}
[[ -z "$ANDROID_NDK_HOME" && -d "/opt/boxen/homebrew/opt/android-ndk" ]] && {
  export ANDROID_NDK_HOME=/opt/boxen/homebrew/opt/android-ndk
}