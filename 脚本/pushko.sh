#!/bin/bash
#######################################################
# this script is used to copy module files from my virtual
# machine to host, then remove debug info within the module
# file for smaller size, it should be kbs level. 
#######################################################

# module files
sunrpc="net/sunrpc/sunrpc.ko"
lockd="fs/lockd/lockd.ko"
nfs="fs/nfs/nfs.ko"
acl="fs/nfs_common/nfs_acl.ko"
gss="net/sunrpc/auth_gss/auth_rpcgss.ko"

# target host dir
dst="/mnt/hgfs/F/shellscripts/"

if [ -e $sunrpc ]
then
	cp $sunrpc $dst
	arm-eabi-strip --strip-debug $dst`basename $sunrpc`
	echo `basename $sunrpc` " copyed"
fi
if [ -e $lockd ]
then
	cp $lockd $dst
	arm-eabi-strip --strip-debug $dst`basename $lockd`
	echo `basename $lockd` " copyed"
fi
if [ -e $nfs ]
then
	cp $nfs $dst
	arm-eabi-strip --strip-debug $dst`basename $nfs`
	echo `basename $nfs` " copyed"
fi
if [ -e $acl ]
then
	cp $acl $dst
	arm-eabi-strip --strip-debug $dst`basename $acl`
	echo `basename $acl` " copyed"
fi
if [ -e $gss ]
then
	cp $gss $dst
	arm-eabi-strip --strip-debug $dst`basename $gss`
	echo `basename $gss` " copyed"
fi