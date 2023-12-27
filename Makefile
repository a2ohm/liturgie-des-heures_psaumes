options_svg = --loglevel=PROGRESS -dcrop -dbackend=svg
options_midi = --loglevel=PROGRESS -dbackend=midi

# PSALMS
#	OFFICE=laudes make -s psaume5
#	OFFICE=vepres make -s psaume2"
OFFICE?=""

# BUILDING PATHS
PSALM_INV = build/psaumes/invitatoires
PSALM_LAUDES = build/psaumes/laudes
PSALM_VEPRES = build/psaumes/vepres

build/psaumes/invitatoires:
	mkdir -p $(PSALM_INV)/svg
	mkdir -p $(PSALM_INV)/midi
build/psaumes/laudes:
	mkdir -p $(PSALM_LAUDES)/svg
	mkdir -p $(PSALM_LAUDES)/midi
build/psaumes/vepres:
	mkdir -p $(PSALM_VEPRES)/svg
	mkdir -p $(PSALM_VEPRES)/midi

psaume%: $(PSALM_LAUDES) $(PSALM_VEPRES)
	if [ $(OFFICE) = "" ]; then \
		echo "Specify an office (see examples)."; \
		echo "   OFFICE=invitatoires make -s psaume94"; \
		echo "   OFFICE=laudes make -s psaume5"; \
		echo "   OFFICE=vepres make -s psaume2"; \
	else \
		sh build_svg.sh $(OFFICE) $@; \
		sh build_midi.sh $(OFFICE) $@; \
	fi

invitatoires: $(PSALM_INV)
	echo "Build: invitatoires"; \
	for file in psaumes/invitatoires/*.ly; do \
		psalm=`basename $$file .ly` ; \
		echo -n "\t$$psalm:"; \
		sh build_svg.sh invitatoires $$psalm; \
		echo -n " SVG"; \
		sh build_midi.sh invitatoires $$psalm; \
		echo " | MIDI"; \
	done

laudes: $(PSALM_LAUDES)
	echo "Build: laudes"; \
	for file in psaumes/laudes/*.ly; do \
		psalm=`basename $$file .ly` ; \
		echo -n "\t$$psalm:"; \
		sh build_svg.sh laudes $$psalm; \
		echo -n " SVG"; \
		sh build_midi.sh laudes $$psalm; \
		echo " | MIDI"; \
	done

vepres: $(PSALM_VEPRES)
	echo "Build: vepres"; \
	for file in psaumes/vepres/*.ly; do \
		psalm=`basename $$file .ly` ; \
		echo -n "\t$$psalm:"; \
		sh build_svg.sh vepres $$psalm; \
		echo -n " SVG"; \
		sh build_midi.sh vepres $$psalm; \
		echo " | MIDI"; \
	done

# CANTICLES
build/AT_psalmodies:
	mkdir -p build/AT_psalmodies
build/NT_refrains:
	mkdir -p build/NT_refrains

AT%: build/AT_psalmodies
	lilypond $(options_svg) -o build/AT_psalmodies/$@_psalmodie cantiques_AT/$@.ly; \
	cd ./build/AT_psalmodies/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

NT%: build/NT_refrains
	lilypond $(options_svg) -o build/NT_refrains/$@_refrain cantiques_NT/$@.ly; \
	cd ./build/NT_refrains/; \
	mv $@_refrain.cropped.svg $@_refrain.svg;

cantiques_AT: build/AT_psalmodies
	for file in cantiques_AT/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options_svg) -o build/AT_psalmodies/"$$file_root" $$file; \
		mv build/AT_psalmodies/"$$file_root".cropped.svg build/AT_psalmodies/"$$file_root".svg; \
	done

cantiques_NT: build/NT_refrains
	for file in cantiques_NT/*.ly; do \
		file_root=`basename $$file .ly`_refrain ; \
		lilypond $(options_svg) -o build/NT_refrains/"$$file_root" $$file; \
		mv build/NT_refrains/"$$file_root".cropped.svg build/NT_refrains/"$$file_root".svg; \
	done

all: invitatoires laudes vepres cantiques_AT cantiques_NT
	echo "Et voilà !"
