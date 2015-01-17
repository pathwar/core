level-list:
	curl https://api.github.com/orgs/pathwar/repos 2>/dev/null | jq -r '.[]|select(.name|contains("level"))|["- [", .name, "]", "(http://github.com/pathwar/", .name, ") - ", .description]|join("")'

travis:
	find . -name Dockerfile | xargs cat | grep -vi ^maintainer | bash -n
