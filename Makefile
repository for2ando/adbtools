# Makefile for adbtools

INSTDIR=~/bin
INSTFILES=$(SRCS) $(HARDLINKS)
SRCS=adb-parsedev adb-sendkey adb_shell
HARDLINKS=adb_echo_result adb_return_result
IMPORTDIR1=../copy-android-apps
IMPORTFILES1=run.sh adbwrappers.sh globmatch.sh

install: $(INSTFILES)
	tar -cf - $^ | (cd $(INSTDIR); tar -xvf -)

diff: $(SRCS)
	$(foreach i,$^,diff -u $(INSTDIR)/$i $i;)

prepare: $(IMPORTFILES1) $(HARDLINKS)

clean:
	rm -f $(HARDLINKS) $(IMPORTFILES1)

$(HARDLINKS): adb_shell
	ln $< $@

$(IMPORTFILES1): $(IMPORTDIR1)
	ln -sf $(addprefix $^/,$@) .

$(IMPORTDIR1):
	cd $(dir $@) && git clone git@github.com:for2ando/copy-android-apps.git $(notdir $@)

