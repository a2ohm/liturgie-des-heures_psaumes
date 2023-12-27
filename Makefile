options_svg = --loglevel=PROGRESS -dcrop -dbackend=svg
options_midi = --loglevel=PROGRESS -dbackend=midi

# PSALMS
#	OFFICE=laudes make -s psaume5
#	OFFICE=vepres make -s psaume2"
OFFICE?=""

# PATH
PSALM_INV = build/psaumes/invitatoires
PSALM_LAUDES = build/psaumes/laudes
PSALM_VEPRES = build/psaumes/vepres

build/psaumes/invitatoires:
	mkdir -p $(PSALM_INV)/svg
	mkdir -p $(PSALM_INV)/midi
build/psaumes/laudes:
	mkdir -p build/psaumes/laudes/svg
	mkdir -p build/psaumes/laudes/midi
build/psaumes/vepres:
	mkdir -p build/psaumes/vepres

psaume%: build/psaumes/laudes build/psaumes/vepres
	if [ $(OFFICE) = "" ]; then \
		echo "Specify an office (see examples)."; \
		echo "   OFFICE=laudes make -s psaume5"; \
		echo "   OFFICE=vepres make -s psaume2"; \
	else \
		lilypond $(options_svg) -o build/psaumes/$(OFFICE)/svg/$@_psalmodie psaumes/$(OFFICE)/$@.ly; \
		cd ./build/psaumes/$(OFFICE)/svg/; \
		mv $@_psalmodie.cropped.svg $@_psalmodie.svg; \
		cd -; \
		# Add the midi section \
		sed -e 's/\\score {/\\score { \\midi { \\tempo 1 = 60 }/g' psaumes/$(OFFICE)/$@.ly | \
		# Remove flex \
		sed '/\+/d' | \
		# Add rest before bars \
		sed 's/\\bar "|"/r1 \\bar "|"/g' | \
		# Longer \
		sed 's/\\breve/1/g' | \
		sed 's/4$$/1/g' | \
		#sed 's/4/2/g' | \
		lilypond $(options_midi) -o build/psaumes/$(OFFICE)/midi/$@_psalmodie -; \
	fi

invitatoires: build/psaumes/invitatoires
	for file in psaumes/invitatoires/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options_svg) -o $(PSALM_INV)/svg/"$$file_root" $$file; \
		mv $(PSALM_INV)/svg/"$$file_root".cropped.svg $(PSALM_INV)/svg/"$$file_root".svg; \
	done

laudes: build/psaumes/laudes
	for file in psaumes/laudes/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options_svg) -o build/psaumes/laudes/"$$file_root" $$file; \
		mv build/psaumes/laudes/"$$file_root".cropped.svg build/psaumes/laudes/"$$file_root".svg; \
	done

vepres: build/psaumes/vepres
	for file in psaumes/vepres/*.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options_svg) -o build/psaumes/vepres/"$$file_root" $$file; \
		mv build/psaumes/vepres/"$$file_root".cropped.svg build/psaumes/vepres/"$$file_root".svg; \
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
