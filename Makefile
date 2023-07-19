
.PHONY: clean build

build:
	echo "### Building site ###"
	mkdir _site
	pandoc -s --template templates/instanceticker.html \
		--metadata title="InstanceTickerCiT" \
		--include-in-header=scripts/analytics.js \
		-o _site/index.html README.md
	cp -r css _site
	cp -r icons _site

clean:
	rm -r _site
