
applied: | src
	quilt push -a

src:
	mkdir src
	cp -r upstream/abcde src/abcdef
	cp -r upstream/cddb-tool src/cddb-tool-f
	chmod +x src/abcdef src/cddb-tool-f

upstreamFragment := https://git.einval.com/cgi-bin/gitweb.cgi?p=abcde.git;a=blob_plain;hb=HEAD

latest-upstream:
	curl "$(upstreamFragment);f=abcde" -f -o upstream/abcde
	curl "$(upstreamFragment);f=cddb-tool" -f -o upstream/cddb-tool

install-links:
	ln -s $$(realpath src/abcdef) ~/bin/.
	ln -s $$(realpath src/cddb-tool-f) ~/bin/.

install-dependencies-debian:
	@echo Note: Assuming a recent version of eyeD3 pre-exists from pip
	apt-get install cd-discid wget cdparanoia lame
