NAME=draft-spaghetti-sidrops-rpki-crl-numbers

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text

clean:
	rm -f *.html *.txt
