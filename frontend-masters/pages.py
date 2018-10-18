import sys
import requests

course=sys.argv[1]

url='https://api.frontendmasters.com/v1/kabuki/courses/{}'.format(course)
info=requests.get(url).json()
slugs=info['lessonSlugs']
web_base_url='https://frontendmasters.com/courses'
course_web_base_url='{}/{}'.format(web_base_url, course)
web_urls=['{}/{}'.format(course_web_base_url, s) for s in slugs]

print('url')
for x in web_urls:
    print(x)
