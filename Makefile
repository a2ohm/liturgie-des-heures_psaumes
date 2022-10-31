build/psaumes:
	mkdir -p build/psaumes

build/AT_psalmodies:
	mkdir -p build/AT_psalmodies

build/NT_refrains:
	mkdir -p build/NT_refrains

options = --loglevel=PROGRESS -dcrop -dbackend=svg

all: build/psaumes build/AT_psalmodies
	for file in *.ly; do \
		case "$$file" in \
			p*) path="build/psaumes" ;; \
			A*) path="build/AT_psalmodies" ;; \
		esac; \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options) -o "$$path"/"$$file_root" $$file; \
		mv "$$path"/"$$file_root".cropped.svg "$$path"/"$$file_root".svg; \
	done

psaume%: build/psaumes
	lilypond $(options) -o build/psaumes/$@_psalmodie $@.ly; \
	cd ./build/psaumes/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

AT%: build/AT_psalmodies
	lilypond $(options) -o build/AT_psalmodies/$@_psalmodie cantiques_AT/$@.ly; \
	cd ./build/AT_psalmodies/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

NT%: build/NT_refrains
	lilypond $(options) -o build/NT_refrains/$@_refrain cantiques_NT/$@.ly; \
	cd ./build/NT_refrains/; \
	mv $@_refrain.cropped.svg $@_refrain.svg;
