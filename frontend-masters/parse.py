import sys
from pathlib import Path
import re
from html import unescape

course=sys.argv[1]

path='./{}/log.html'.format(course)
text=Path(path).read_text()

p=re.compile(':URL:(http.*?):URL:')

for url in p.findall(text):
    print(unescape(url))
