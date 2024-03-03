### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=AQUA v2.0
kernel.compiler=WeebX-Clang
kernel.made=Victor_cris (@glikched)
message.word=Thank you for using AQUA Kernel
do.devicecheck=1
do.modules=1
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=r9q
device.name2=r9q2
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
} # end attributes

# boot shell variables
block=;
is_slot_device=auto;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;
. tools/ak3-core.sh;
dump_boot;
write_boot;
flash_generic dtbo;
