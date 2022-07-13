# mkdir-cd from https://github.com/razzius/fish-functions
# Utility to cd to new directory on creation
function mkdir-cd
	mkdir -p -- $argv && cd -- $argv
end

