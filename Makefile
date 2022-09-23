build/psaumes:
	mkdir -p build/psaumes

build/cantiques:
	mkdir -p build/cantiques

options = --loglevel=PROGRESS -dcrop -dbackend=svg

all: build/psaumes build/cantiques
	for file in *.ly; do \
		case "$$file" in \
			p*) path="build/psaumes" ;; \
			A*) path="build/cantiques" ;; \
		esac; \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond $(options) -o "$$path"/"$$file_root" $$file; \
		mv "$$path"/"$$file_root".cropped.svg "$$path"/"$$file_root".svg; \
	done

psaume%: build/psaumes
	lilypond $(options) -o build/psaumes/$@_psalmodie $@.ly; \
	cd ./build/psaumes/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

AT%: build/cantiques
	lilypond $(options) -o build/cantiques/$@_psalmodie $@.ly; \
	cd ./build/cantiques/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

NT%: build/cantiques
	lilypond $(options) -o build/cantiques/$@_refrain $@.ly; \
	cd ./build/cantiques/; \
	mv $@_refrain.cropped.svg $@_refrain.svg;
