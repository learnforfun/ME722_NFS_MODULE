rem push module files to phone
rem adb push nfs_acl.ko /sdcard/ko/
adb push sunrpc.ko /sdcard/ko/
adb push lockd.ko /sdcard/ko/
adb push nfs.ko /sdcard/ko/
adb push auth_rpcgss.ko /sdcard/ko/