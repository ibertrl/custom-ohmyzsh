#!/bin/bash

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set Zsh as default shell
echo "Setting Zsh as default shell..."
chsh -s $(which zsh) $USER

# Install Agnoster theme
echo "Installing Agnoster theme..."
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

# Install plugins
echo "Installing plugins..."
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)/g' ~/.zshrc

# Configure zsh-syntax-highlighting
echo "Configuring zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# Configure zsh-autosuggestions
echo "Configuring zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# Configure zsh-completions
echo "Configuring zsh-completions..."
git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh/zsh-completions
echo "fpath=(~/.zsh/zsh-completions/src \$fpath)" >> ~/.zshrc
sed -i 's/^plugins=(.*)$/& autoload -U compinit \&\& compinit/' ~/.zshrc

# Add the extractPorts function to zshrc
echo "# Extract nmap information
function extractPorts(){
    ports=\"\$(cat \$1 | grep -oP '\d{1,5}/open' | awk '{print \$1}' FS='/' | xargs | tr ' ' ',')\"
    ip_address=\"\$(cat \$1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)\"
    echo -e \"\n[*] Extracting information...\n\" > extractPorts.tmp
    echo -e \"\t[*] IP Address: \$ip_address\"  >> extractPorts.tmp
    echo -e \"\t[*] Open ports: \$ports\n\"  >> extractPorts.tmp
    echo \$ports | tr -d '\n' | xclip -sel clip
    echo -e \"[*] Ports copied to clipboard\n\"  >> extractPorts.tmp
    cat extractPorts.tmp; rm extractPorts.tmp
}" >> ~/.zshrc

# Añadir función mkt() al archivo .zshrc
echo "function mkt(){
    mkdir {nmap,content,exploits,scripts}
}" >> ~/.zshrc

# Install xclip package
sudo apt-get update
sudo apt-get install xclip -y

echo "Installation complete!"
echo "Please reload your terminal to apply the changes to your shell."

# Restart terminal
echo "Restarting terminal..."
exec zsh -l