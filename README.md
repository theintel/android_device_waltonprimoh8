[![Building recovery](https://github.com/waltontwrp/Recovery-Builder-NoKernel/actions/workflows/recovery.yml/badge.svg)](https://github.com/waltontwrp/Recovery-Builder-NoKernel/actions/workflows/recovery.yml)

The recovery builds up without issues but doesn’t work when flashed to the device. Probably the device tree is not properly configured.

TWRP Device Tree for Walton Primo H8
===========================================

Primo H8 is a low-end smartphone from Walton.
 
## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
OS	| Android 8.0 (Oreo), upgradable to Android 8.1	
CPU     | Quad-core 1.5 GHz Cortex-A53
Chipset | Mediatek MT6739WW (28 nm)
GPU     | PowerVR GE8100
Memory  | 2GB/3GB RAM
Storage | 16GB/32GB
MicroSD | up to 128 GB (dedicated slot)
Battery | Removable Li-Po 4000 mAh battery
Resolution | 720 x 1440 pixels, 18:9 ratio (~295 ppi density)
Camera (Rear)  | 13 MP	
Camera (Front)  | 5 MP
Features| Fingerprint (rear-mounted), accelerometer, proximity	

## Device picture

![](https://www.mobiledokan.com/wp-content/uploads/2019/03/Walton-Primo-H8-Gold.jpg)


## Getting Started ##
---------------

To get started with OMNI sources to build TWRP, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

# repo init

To initialize your local repository using the OMNIROM trees to build TWRP, use a command like this:

    repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

To initialize a shallow clone, which will save even more space, use a command like this:
# repo init

    repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

# repo sync

If you are a first time builder then do check Imp_for_first_time_builders.txt file.
 Then to sync up:

    repo sync -j(nproc) -c

## To Build ##
---------------

Build the TWRP recovery using below command.

    cd <source-dir>; export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch omni_YU5014-eng; mka recoveryimage
