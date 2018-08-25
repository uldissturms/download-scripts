import sys
from pathlib import Path
import re
from html.parser import HTMLParser

course=sys.argv[1]

path='./{}/log.html'.format(course)
text=Path(path).read_text()

p=re.compile(':URL:(http.*?):URL:')

html_parser=HTMLParser()
for url in p.findall(text):
    print(html_parser.unescape(url))
