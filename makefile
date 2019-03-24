main:
	mkdir build
	asciidoctor-pdf -r asciidoctor-mathematical src/main/asciidoc/diplomathesis.adoc
	rm src/main/asciidoc/stem*
	mv src/main/asciidoc/diplomathesis.pdf build/diplomathesis.pdf

clean:
	rm -rf build/