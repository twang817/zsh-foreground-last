foreground-last() {
    if [[ $(jobs | wc -l ) -ne 0 ]]; then
        fg %%
    else 
	echo "No jobs found."
	zle reset-prompt
	zle -R
    fi
}
zle -N foreground-last
bindkey '^Z' foreground-last
