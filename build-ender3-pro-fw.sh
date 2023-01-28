#!/usr/bin/bash

environment=STM32F103RE_creality

platformio run -e "$environment" \
	&& find "./.pio/build/$environment" -type f -name 'firmware-*.bin' -exec mv {} . \; \
	&& find "./.pio/build/$environment" -type f -name 'firmware-*' -delete

