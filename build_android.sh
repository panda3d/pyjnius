export ANDROID_SDK_ROOT=$HOME/local/android
export PATH=$HOME/local/android/ndk-bundle/toolchains/llvm/prebuilt/linux-x86_64/bin/:$PATH

rm -rf build
export CC=aarch64-linux-android21-clang
export CXX=aarch64-linux-android21-clang++
export LDSHARED="$CC -shared"
export CFLAGS="-I$HOME/panda3d2/thirdparty/android-libs-arm64/python/include/python3.8 -I$HOME/panda3d2/built-droid-arm64/include"
export LDFLAGS="$HOME/panda3d2/thirdparty/android-libs-arm64/python/lib/libpython3.8.so $HOME/panda3d2/built-droid-arm64/lib/libpanda.so"
python3.8 setup.py bdist_wheel --plat-name android_arm64

rm -rf build
export CC=x86_64-linux-android21-clang
export CXX=x86_64-linux-android21-clang++
export LDSHARED="$CC -shared"
export CFLAGS="-I$HOME/panda3d2/thirdparty/android-libs-x86_64/python/include/python3.8 -I$HOME/panda3d2/built-droid-x86_64/include"
export LDFLAGS="$HOME/panda3d2/thirdparty/android-libs-x86_64/python/lib/libpython3.8.so $HOME/panda3d2/built-droid-x86_64/lib/libpanda.so"
python3.8 setup.py bdist_wheel --plat-name android_x86_64

rm -rf build
export CC=armv7a-linux-androideabi19-clang
export CXX=armv7a-linux-androideabi19-clang++
export LDSHARED="$CC -shared"
export CFLAGS="-I$HOME/panda3d2/thirdparty/android-libs-armv7a/python/include/python3.8 -I$HOME/panda3d2/built-droid-armv7a/include"
export LDFLAGS="$HOME/panda3d2/thirdparty/android-libs-armv7a/python/lib/libpython3.8.so $HOME/panda3d2/built-droid-armv7a/lib/libpanda.so"
python3.8 setup.py bdist_wheel --plat-name android_armv7a

rm -rf build
export CC=i686-linux-android19-clang
export CXX=i686-linux-android19-clang++
export LDSHARED="$CC -shared"
export CFLAGS="-I$HOME/panda3d2/thirdparty/android-libs-x86/python/include/python3.8 -I$HOME/panda3d2/built-droid-x86/include"
export LDFLAGS="$HOME/panda3d2/thirdparty/android-libs-x86/python/lib/libpython3.8.so $HOME/panda3d2/built-droid-x86/lib/libpanda.so"
python3.8 setup.py bdist_wheel --plat-name android_x86

rm -rf build
