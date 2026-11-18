#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:50331648:4cbd95e65572cec4029b245d5a3fcbbff3991a0a; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:50331648:4cbd95e65572cec4029b245d5a3fcbbff3991a0a && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
