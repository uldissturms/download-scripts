from os.path import isfile
import sys
import urllib.request
from urllib.parse import urlparse

course=sys.argv[1]

path='./{}/videos.txt'.format(course)

with open(path) as fp:
    for cnt, line in enumerate(fp):
        filename = urlparse(line).path.split('/')[-1]
        out = './{}/{}'.format(course, filename)
        if isfile(out):
            print('Already present:', out)
        else:
            print('Downloading:', line, 'to:', out)
            urllib.request.urlretrieve(line, out)
