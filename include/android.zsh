export ANDROID_HOME="/Volumes/Storage/Developer/androidsdk"
export ANDROID_SDK="/Volumes/Storage/Developer/androidsdk"

if [ -d "$ANDROID_HOME/build-tools" ]; then
    PATH="$ANDROID_HOME/build-tools/$(ls ${ANDROID_HOME}/build-tools | sort -r | head -1):$PATH"
fi

NDKROOT="/Volumes/Storage/Developer/ndk"
if [ -d "$NDKROOT" ]; then
	export ANDROID_NDK="$NDKROOT/$(ls ${NDKROOT} | sort -r | head -1)"
	PATH="$PATH:$ANDROID_NDK:$ANDROID_NDK/toolchains/llvm/prebuilt/darwin-x86_64/bin"
fi
