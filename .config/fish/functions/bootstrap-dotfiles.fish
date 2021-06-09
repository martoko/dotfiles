function bootstrap-dotfiles;
  git clone --bare git@github.com:martoko/dotfiles.git $HOME/.dotfiles
  git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no
  git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
end
