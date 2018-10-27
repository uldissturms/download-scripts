cat $1/titles.json | jq -r '.data.getCourses[].sections[].components[].title'
