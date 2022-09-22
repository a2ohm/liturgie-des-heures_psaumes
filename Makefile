build/psaumes:
	mkdir -p build/psaumes

build/psaumes_midi:
	mkdir -p build/psaumes_midi

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

psaume%: build/psaumes build/psaumes_midi
	# export svg
	lilypond $(options) -o build/psaumes/$@_psalmodie $@.ly; \
	cd ./build/psaumes/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

	# export midi
	# sed : ajoute une pause en fin de mesure puis ajoute le parametre MIDI
	sed -e 's/\\bar "|"/r1 \\bar "|"/g' $@.ly | \
	sed 's/\\score {/\\score { \\midi { \\tempo 1 = 120 }/g' | \
	lilypond -o build/psaumes_midi/$@_psalmodie -;

AT%: build/cantiques
	lilypond $(options) -o build/cantiques/$@_psalmodie $@.ly; \
	cd ./build/cantiques/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

NT%: build/cantiques
	lilypond $(options) -o build/cantiques/$@_refrain $@.ly; \
	cd ./build/cantiques/; \
	mv $@_refrain.cropped.svg $@_refrain.svg;
