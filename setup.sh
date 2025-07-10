echo "Atualizando Pacotes..."
sudo pacman -Syu
echo "Pacotes Atualizados."

echo "Instalando Yay..."
sudo pacman -S --needed base-devel git
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
echo "Yay Instalado!"

echo "Instalando Linguagens e Auxiliares ..."
sudo pacman -S nodejs
sudo pacman -S npm
sudo pacman -S go
sudo pacman -S python-pip
sudo pacman -S docker
sudo pacman -S mariadb-clients
sudo pacman -S mysql-workbench

echo "Instalando IDEs de Programação ..."
sudo pacman -S code
echo "Configurando LazyVim ..."
sudo pacman -S neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
echo "LazyVim Configurado!"

echo "Instalação Finalizada com Sucesso!"
