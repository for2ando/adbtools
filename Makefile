# Makefile for copy-android-apps

INSTDIR=~/bin

install: adb-parsedev adb-sendkey adb_shell adb_echo_result adb_return_result
	tar -cf - $^ | (cd $(INSTDIR); tar -xvf -)

diff: adb-sendkey adb_echo_result adb_return_result adb_shell
	$(foreach i,$^,diff -u $(INSTDIR)/$i $i;)

adb_echo_result adb_return_result: adb_shell
	ln $< $@



