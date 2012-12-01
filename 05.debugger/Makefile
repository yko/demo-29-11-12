all: 06.embedded

06.embedded: 06.embedded.c
	gcc -o 06.embedded 06.embedded.c `perl -MExtUtils::Embed -e ccopts -e ldopts`

clean:
	rm -f 06.embedded
