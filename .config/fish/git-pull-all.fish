# Runs `git pull` over all directories in the current working directory
# Use GNU Parallel for faster update than for loop 
# `git -C` runs git as if it was started in <path> instead of the current working directory.
# `bash c` is prefixed to work around argument compatibility issues with Fish and parallel
# https://stackoverflow.com/questions/3497123/run-git-pull-over-all-subdirectories/33557279#33557279
function git-pull-all
	bash -c 'ls -d */ | parallel git -C {} pull'
end
