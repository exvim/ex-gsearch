# Intro

Project browser for exVim

## Requirements

- Vim 6.0 or higher.
- [exvim/ex-utility](https://github.com/exvim/ex-utility) 

## Installation

This plugin follows the standard runtime path structure, and as such it can 
be installed with a variety of plugin managers:
    
To install using [Vundle](https://github.com/gmarik/vundle):

    # add this line to your .vimrc file
    Bundle 'exvim/ex-gsearch'

To install using [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone https://github.com/exvim/ex-gsearch

To install using [NeoBundle](https://github.com/Shougo/neobundle.vim):

    # add this line to your .vimrc file
    NeoBundle 'exvim/ex-gsearch'

[Download zip file](https://github.com/exvim/ex-gsearch/archive/master.zip):

    cd ~/.vim
    unzip ex-gsearch-master.zip
    copy all of the files into your ~/.vim directory

## Known Issues

If you use mkid and meet the following problem on Windows:

```
mkid: can't read entire the language map file 'your/path/of/the/id-lang.map': No such 
file or directory
```

This is because the `id-lang.map` you specified is not use the `unix` fileformat.
You can fix this by open the file in Vim and type:

```vim
:set fileformat=unix 
```
then save it.
