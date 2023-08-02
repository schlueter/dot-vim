# .vim
My vim configuration. I set up this repository to more easily track my configuration across different machines and ease installation on new ones. The majority of the configuration here is (and will likely continue to be) borrowed from elsewhere. I will attempt to include attributions when possible.

## Installation

1) Clone this repo to ~/.vim

        git clone https://github.com/schlueter/dot-vim.git ~/.vim


1) Install the vim-plug script:

        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


1) Install the plugins:

        vim -c :PlugInstall -c ':mkspell! spell/*.add'


## Requirements

Node and npm are used during plugin installation to install a markdown server for the [Instant Markdown](https://github.com/suan/vim-instant-markdown) plugin.
