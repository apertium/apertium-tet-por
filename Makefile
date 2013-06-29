all:
	lt-comp rl apertium-tet-por.tet.dix por-tet.autogen.bin
	lt-comp lr apertium-tet-por.tet.dix tet-por.automorf.bin apertium-tet-por.tet.acx
	lt-comp lr apertium-tet-por.tet-por.dix tet-por.autobil.bin
	lt-comp rl apertium-tet-por.tet-por.dix por-tet.autobil.bin
	cg-comp apertium-tet-por.tet-por.rlx tet-por.rlx.bin
	lrx-comp apertium-tet-por.tet-por.lrx tet-por.autolex.bin
	lt-comp lr apertium-tet-por.post-por.dix tet-por.autopgen.bin
	apertium-preprocess-transfer apertium-tet-por.tet-por.t1x tet-por.t1x.bin
	apertium-preprocess-transfer apertium-tet-por.tet-por.t2x tet-por.t2x.bin
	apertium-preprocess-transfer apertium-tet-por.tet-por.t3x tet-por.t3x.bin
	apertium-preprocess-transfer apertium-tet-por.tet-por.t4x tet-por.t4x.bin
	apertium-gen-modes modes.xml
	cp *.mode modes/
	lt-comp rl apertium-tet-por.por.dix tet-por.autogen.bin

clean:
	rm -rf *.bin *.mode modes
