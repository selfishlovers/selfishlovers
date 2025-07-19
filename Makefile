.PHONY: all clean sitemap

all: sitemap

clean:
	rm -f docs/sitemap.xml

sitemap:
	@lastmod=$$(stat -f "%Sm" -t "%Y-%m-%d" docs/index.html); \
	echo '<?xml version="1.0" encoding="UTF-8"?>' > docs/sitemap.xml; \
	echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">' >> docs/sitemap.xml; \
	echo '  <url>' >> docs/sitemap.xml; \
	echo '    <loc>https://selfishlovers.com/</loc>' >> docs/sitemap.xml; \
	echo "    <lastmod>$$lastmod</lastmod>" >> docs/sitemap.xml; \
	echo '    <changefreq>daily</changefreq>' >> docs/sitemap.xml; \
	echo '    <priority>1.0</priority>' >> docs/sitemap.xml; \
	echo '  </url>' >> docs/sitemap.xml; \
	echo '</urlset>' >> docs/sitemap.xml
