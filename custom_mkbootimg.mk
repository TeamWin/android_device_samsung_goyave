$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(MKBOOTFS) $(MINIGZIP) \
		$(recovery_uncompressed_ramdisk) \
		$(recovery_kernel)
	cp $(TARGET_RECOVERY_ROOT_OUT)/sbin/adbd $(TARGET_RECOVERY_ROOT_OUT)/sbin/adbe
	$(MKBOOTFS) $(TARGET_RECOVERY_ROOT_OUT) > $(recovery_uncompressed_ramdisk)
	$(MINIGZIP) < $(recovery_uncompressed_ramdisk) > $(recovery_ramdisk)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	@echo -e "$(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@"
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@

	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}
