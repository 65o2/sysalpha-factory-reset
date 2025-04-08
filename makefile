#

compile := motorola-6800-assembler/bin/as0
make_bin := objcopy 

all: bin/ic17.532

bin/ic17.532: src/main.s68
	@${compile} src/main.s68 -l > bin/main.lst
	@mkdir -p bin
	@objcopy  --input-target=srec --output-target=binary src/main.s19 bin/image.bin
	@split -b 4k bin/image.bin bin/image_
	@mv bin/image_aa bin/ic20.532
	@mv bin/image_ab bin/ic14.532
	@mv bin/image_ac bin/ic17.532

clean:
	@rm -rf bin/

