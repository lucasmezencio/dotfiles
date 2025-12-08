if [ -f ~/.profile ]; then
  . ~/.profile
fi

if [ -f ~/.bash_aliases ]; then
  .  ~/.bash_aliases
fi

if [ -f ~/.env.mine ]; then
  . ~/.env.mine
fi
