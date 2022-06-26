
applied: | src
	quilt push -a

src:
	mkdir src
	cp -r upstream/abcde src/abcdef
	chmod +x src/abcdef

upstreamUrl := https://git.einval.com/cgi-bin/gitweb.cgi?p=abcde.git;a=blob_plain;f=abcde;hb=HEAD

latest-upstream:
	curl "$(upstreamUrl)" -f -o upstream/abcde
