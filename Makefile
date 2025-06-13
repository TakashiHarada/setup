# マクロ定義
prefix = arm-none-eabi-
AS = $(prefix)as
LD = $(prefix)ld
CC = $(prefix)gcc
OBJCOPY = $(prefix)objcopy
LDFLAGS = -m armelf

# 生成規則
light.img: light.elf
	$(OBJCOPY) $< -O binary $@

light.elf: light.o init.o
	$(LD) $(LDFLAGS) $+ -o $@

light.o: light.c
	$(CC) -c $< -o $@

init.o: init.s
	$(AS) $< -o $@

clean:
	rm *.elf *.o a.out
