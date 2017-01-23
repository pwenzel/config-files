# tag-ag setup
# https://github.com/aykamko/tag
function tag
	set -q TAG_CMD_FMT_STRING; or set -gx TAG_CMD_FMT_STRING "subl {{.Filename}}:{{.LineNumber}}"
	echo $TAG_CMD_FMT_STRING
	set -q TAG_ALIAS_FILE; or set -l TAG_ALIAS_FILE /tmp/tag_aliases
	command tag $argv; and source $TAG_ALIAS_FILE ^/dev/null
	alias ag "tag"
end
