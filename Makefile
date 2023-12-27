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

AT%: $(PSALM_LAUDES)
	sh build_svg.sh laudes $@; \
	sh build_midi.sh laudes $@; \

NT%: $(PSALM_VEPRES)
	sh build_svg.sh vepres $@; \
	sh build_midi.sh vepres $@ 30; \

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
	for file in psaumes/laudes/psaume*.ly; do \
		psalm=`basename $$file .ly` ; \
		echo -n "\t$$psalm:"; \
		sh build_svg.sh laudes $$psalm; \
		echo -n " SVG"; \
		sh build_midi.sh laudes $$psalm; \
		echo " | MIDI"; \
	done

vepres: $(PSALM_VEPRES)
	echo "Build: vepres"; \
	for file in psaumes/vepres/psaume*.ly; do \
		psalm=`basename $$file .ly` ; \
		echo -n "\t$$psalm:"; \
		sh build_svg.sh vepres $$psalm; \
		echo -n " SVG"; \
		sh build_midi.sh vepres $$psalm; \
		echo " | MIDI"; \
	done

cantiques_AT: $(PSALM_LAUDES)
	echo "Build: AT"; \
	for file in psaumes/laudes/AT*.ly; do \
		psalm=`basename $$file .ly` ; \
		echo -n "\t$$psalm:"; \
		sh build_svg.sh laudes $$psalm; \
		echo -n " SVG"; \
		sh build_midi.sh laudes $$psalm; \
		echo " | MIDI"; \
	done

cantiques_NT: $(PSALM_VEPRES)
	echo "Build: NT"; \
	for file in psaumes/vepres/NT*.ly; do \
		psalm=`basename $$file .ly` ; \
		echo -n "\t$$psalm:"; \
		sh build_svg.sh vepres $$psalm; \
		echo -n " SVG"; \
		sh build_midi.sh vepres $$psalm 30; \
		echo " | MIDI"; \
	done

all: invitatoires laudes vepres cantiques_AT cantiques_NT
	echo "Et voilà !"
