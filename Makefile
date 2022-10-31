build/psaumes/laudes:
	mkdir -p build/psaumes/laudes
build/psaumes/vepres:
	mkdir -p build/psaumes/vepres

build/AT_psalmodies:
	mkdir -p build/AT_psalmodies

build/NT_refrains:
	mkdir -p build/NT_refrains

options = --loglevel=PROGRESS -dcrop -dbackend=svg

# all: build/psaumes build/AT_psalmodies
# 	for file in *.ly; do \
# 		case "$$file" in \
# 			p*) path="build/psaumes" ;; \
# 			A*) path="build/AT_psalmodies" ;; \
# 		esac; \
# 		file_root=`basename $$file .ly`_psalmodie ; \
# 		lilypond $(options) -o "$$path"/"$$file_root" $$file; \
# 		mv "$$path"/"$$file_root".cropped.svg "$$path"/"$$file_root".svg; \
# 	done

# Psalms are organized by office
#	OFFICE=laudes make -s psaume5
#	OFFICE=vepres make -s psaume2"
OFFICE?=""

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

AT%: build/AT_psalmodies
	lilypond $(options) -o build/AT_psalmodies/$@_psalmodie cantiques_AT/$@.ly; \
	cd ./build/AT_psalmodies/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

NT%: build/NT_refrains
	lilypond $(options) -o build/NT_refrains/$@_refrain cantiques_NT/$@.ly; \
	cd ./build/NT_refrains/; \
	mv $@_refrain.cropped.svg $@_refrain.svg;
