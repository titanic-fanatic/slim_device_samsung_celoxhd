## SlimBean Build Instructions for Celox HD

First you will need to setup your build environment to build Android 4.1.x. Instruction on how to do that can be found here:

http://source.android.com/source/initializing.html


### Setup your working dir and repo, then init the repo:
```
1) mkdir ~/slim-jb
2) cd ~/slim-jb
3) curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo
4) chmod a+x ~/bin/repo
5) repo init -u git://github.com/SlimRoms/platform_manifest.git -b jb
```
Stay in ~/slim-jb for the rest of the commands.


### Include the local_manifest.xml to sync these additional repositories:
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="SlimRoms/device_samsung_msm8660-common" path="device/samsung/msm8660-common" remote="github" revision="jb" />
  <project name="CyanogenMod/android_kernel_samsung_msm8660-common" path="kernel/samsung/msm8660-common" remote="github" revision="jellybean" />
  <project name="titanic-fanatic/slim_device_samsung_celoxhd" path="device/samsung/celoxhd" remote="github" revision="jellybean" />
  <project name="titanic-fanatic/android_vendor_samsung_celoxhd" path="vendor/samsung/celoxhd" remote="github" revision="jellybean" />
</manifest>
```


### Download or update all repositories:
```
repo sync -j4   
```
NOTE: The "4" may be replaced by # of CPU cores on your PC


### Optimize your Linux installation for future rebuilds:
```
echo "export USE_CCACHE=1" >> ~/.bashrc
prebuilt/linux-x86/ccache/ccache -M 20G
source ~/.bashrc
```
NOTE: 20GB cache here, but can be changed later


### Ready to build!
```
. build/envsetup.sh
brunch slim_celoxhd-eng
```

Subsequent builds only require the brunch command above unless you modified BoardConfig.mk, you'll need to clean out the build output folder before running brunch (in order to pick up its changes). In that case, run this before using brunch:
```
make clobber
```


### OPTIONAL: If you want to build ClockworkMod:
```
. build/envsetup.sh
. build/tools/device/makerecoveries.sh cm_celoxhd-eng 
```

