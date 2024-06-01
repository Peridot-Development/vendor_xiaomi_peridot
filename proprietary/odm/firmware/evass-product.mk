ifeq ($(TARGET_BOARD_PLATFORM),pineapple)
  # Copy all evass.* files
  $(foreach f,$(wildcard vendor/qcom/proprietary/evass-fw-lib/evass*),\
      $(eval PRODUCT_COPY_FILES += $(f):$(TARGET_COPY_OUT_ODM)/firmware/$(notdir $f)))
endif
