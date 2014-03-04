pdf: clean documentation.pdf

documentation.pdf: documentation.md scripts/filter.hs
	VSC_SITE=$(site) pandoc --filter scripts/filter.hs documentation.md -o documentation.pdf -f markdown+header_attributes+simple_tables+table_captions+grid_tables+multiline_tables

gent: site := gent
gent: pdf

leuven: site := leuven
leuven: pdf

antwerpen: site := antwerpen
antwerpen: pdf

clean:
	rm -f documentation.pdf