# Makefile for adbtools

INSTDIR=~/bin
INSTFILES=$(SRCS) $(HARDLINKS)
SRCS=adb-parsedev adb-sendkey adb_shell
HARDLINKS=adb_echo_result adb_return_result

install: $(INSTFILES)
	tar -cf - $^ | (cd $(INSTDIR); tar -xvf -)

diff: $(SRCS)
	$(foreach i,$^,diff -u $(INSTDIR)/$i $i;)

$(HARDLINKS): adb_shell
	ln $< $@

clean:
	rm -f $(HARDLINKS)
