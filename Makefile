all:
	lt-comp rl apertium-tet-por.tet.dix por-tet.autogen.bin
	lt-comp lr apertium-tet-por.tet.dix tet-por.automorf.bin apertium-tet-por.tet.acx
clean:
	rm -rf *.bin *.mode modes
