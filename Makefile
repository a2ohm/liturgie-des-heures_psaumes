build:
	mkdir build

all: build
	for file in *.ly; do \
		file_root=`basename $$file .ly`_psalmodie ; \
		lilypond -dcrop -dbackend=svg -o build/"$$file_root" $$file; \
		mv ./build/"$$file_root".cropped.svg ./build/"$$file_root".svg; \
	done

psaume%: build
	lilypond -dcrop -dbackend=svg -o build/$@_psalmodie $@.ly; \
	mv build/$@_psalmodie.cropped.svg build/$@_psalmodie.svg;