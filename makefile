all:
	@$(MAKE) clear
	@$(MAKE) thesis

thesis:
	@echo
	@echo "\033[4m\033[1mBuilding thesis\033[0m"
	@echo
	@mkdir build
	@asciidoctor-pdf -r asciidoctor-mathematical -r asciidoctor-diagram src/main/asciidoc/diplomathesis.adoc
	@rm src/main/asciidoc/stem*
	@rm src/main/asciidoc/frienddia*
	@mv src/main/asciidoc/diplomathesis.pdf build/diplomathesis.pdf

clear:
	@echo
	@echo "\033[4m\033[1mClearing output folder\033[0m"
	@echo
	@rm -rf build/ || true