function bootstrap-dotfiles;
  git clone --bare git@github.com:martoko/dotfiles.git $HOME/.dotfiles
  dotfiles config --local status.showUntrackedFiles no
  dotfiles checkout
end
