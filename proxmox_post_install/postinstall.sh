#!bin/bash
apt install vim
touch ~/.vimrc
cat <<EOL >>~/.vimrc
syntax enable           " enable syntax processing
set tabstop=4          " number of visual spaces per TAB
set softtabstop=4      " number of spaces in tab when editing
set expandtab          " tabs are spaces
set number              " show line numbers
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight by ,<space>
nnoremap <leader><space> :nohlsearch<CR>
EOL
mkdir .ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9inQcwNzfR4zVOmnVRqPa7nCw6ILiPsZEPfcF5JChB elias@Datamaskinen" >>~/.ssh/authorized_keys
bash -c "$(wget -qLO - https://github.com/community-scripts/ProxmoxVE/raw/main/misc/post-pve-install.sh)"
