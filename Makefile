DEFAULT_CONFIG_FILE := config-6.12.13-current-meson64
LINUX := linuxMainLine

config:
	cp $(DEFAULT_CONFIG_FILE) $(LINUX)/.config	

clean_config:
	rm $(LINUX)/.config

image:
	make -C $(LINUX) -j$(nproc) Image

clean: clean_config
	make -C $(LINUX) clean