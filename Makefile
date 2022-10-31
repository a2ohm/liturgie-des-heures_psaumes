options = --loglevel=PROGRESS -dcrop -dbackend=svg

# PSALMS
#	OFFICE=laudes make -s psaume5
#	OFFICE=vepres make -s psaume2"
OFFICE?=""

build/psaumes/invitatoires:
	mkdir -p build/psaumes/invitatoires
build/psaumes/laudes:
	mkdir -p build/psaumes/laudes
build/psaumes/vepres:
	mkdir -p build/psaumes/vepres

psaume%: build/psaumes/laudes build/psaumes/vepres
	if [ $(OFFICE) = "" ]; then \
		echo "Specify an office (see examples)."; \
		echo "   OFFICE=laudes make -s psaume5"; \
		echo "   OFFICE=vepres make -s psaume2"; \
	else \
		lilypond $(options) -o build/psaumes/$(OFFICE)/$@_psalmodie psaumes/$(OFFICE)/$@.ly; \
		cd ./build/psaumes/$(OFFICE)/; \
		mv $@_psalmodie.cropped.svg $@_psalmodie.svg; \
	fi

invitatoires: build/psaumes/invitatoires
	for file in psaumes/invitatoires/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options) -o build/psaumes/invitatoires/"$$file_root" $$file; \
		mv build/psaumes/invitatoires/"$$file_root".cropped.svg build/psaumes/invitatoires/"$$file_root".svg; \
	done

laudes: build/psaumes/laudes
	for file in psaumes/laudes/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options) -o build/psaumes/laudes/"$$file_root" $$file; \
		mv build/psaumes/laudes/"$$file_root".cropped.svg build/psaumes/laudes/"$$file_root".svg; \
	done

vepres: build/psaumes/vepres
	for file in psaumes/vepres/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options) -o build/psaumes/vepres/"$$file_root" $$file; \
		mv build/psaumes/vepres/"$$file_root".cropped.svg build/psaumes/vepres/"$$file_root".svg; \
	done

# CANTICLES
build/AT_psalmodies:
	mkdir -p build/AT_psalmodies
build/NT_refrains:
	mkdir -p build/NT_refrains

AT%: build/AT_psalmodies
	lilypond $(options) -o build/AT_psalmodies/$@_psalmodie cantiques_AT/$@.ly; \
	cd ./build/AT_psalmodies/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

NT%: build/NT_refrains
	lilypond $(options) -o build/NT_refrains/$@_refrain cantiques_NT/$@.ly; \
	cd ./build/NT_refrains/; \
	mv $@_refrain.cropped.svg $@_refrain.svg;

cantiques_AT: build/AT_psalmodies
	for file in cantiques_AT/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options) -o build/AT_psalmodies/"$$file_root" $$file; \
		mv build/AT_psalmodies/"$$file_root".cropped.svg build/AT_psalmodies/"$$file_root".svg; \
	done

cantiques_NT: build/NT_refrains
	for file in cantiques_NT/*.ly; do \
		file_root=`basename $$file .ly`_refrain ; \
		lilypond $(options) -o build/NT_refrains/"$$file_root" $$file; \
		mv build/NT_refrains/"$$file_root".cropped.svg build/NT_refrains/"$$file_root".svg; \
	done

all: invitatoires laudes vepres cantiques_AT cantiques_NT
	echo "Et voilà !"
