build/psaumes:
	mkdir -p build/psaumes

build/cantiques:
	mkdir -p build/cantiques

all: build/psaumes build/cantiques
	for file in *.ly; do \
		case "$$file" in \
			p*) path="build/psaumes" ;; \
			A*) path="build/cantiques" ;; \
		esac; \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond -dcrop -dbackend=svg -o "$$path"/"$$file_root" $$file; \
		mv "$$path"/"$$file_root".cropped.svg "$$path"/"$$file_root".svg; \
	done

psaume%: build/psaumes
	# export svg
	lilypond -dcrop -dbackend=svg -o build/psaumes/$@_psalmodie $@.ly; \
	cd ./build/psaumes/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;
	# export midi
	# sed : ajoute une pause en fin de mesure puis ajoute le parametre MIDI
	sed -i.bak -e 's/\\bar "|"/r1 \\bar "|"/g' -e 's/\score {/\score { \\midi { \\tempo 1 = 120 }/g' $@.ly;
	lilypond -dcrop -dbackend=svg -o build/psaumes/$@_psalmodie $@.ly; \
	mv $@.ly.bak $@.ly;

AT%: build/cantiques
	lilypond -dcrop -dbackend=svg -o build/cantiques/$@_psalmodie $@.ly; \
	cd ./build/cantiques/; \
	mv $@_psalmodie.cropped.svg $@_psalmodie.svg;

NT%: build/cantiques
	lilypond -dcrop -dbackend=svg -o build/cantiques/$@_refrain $@.ly; \
	cd ./build/cantiques/; \
	mv $@_refrain.cropped.svg $@_refrain.svg;

