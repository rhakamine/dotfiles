
# ================== CUSTOM LINES =======================================
# Add git branch if its present to PS1
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
fi
unset color_prompt force_color_prompt

# if tmux is executable, X is running, and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
	[ -z "${TMUX}" ] && { tmux attach || tmux; } >/dev/null 2>&1
fi

# Always use virtualenv, do not mess with system python
if [ -n "$VIRTUAL_ENV" ]; then
	. "$VIRTUAL_ENV/bin/activate"
else
	source $HOME/.config/envs/py/bin/activate
fi
