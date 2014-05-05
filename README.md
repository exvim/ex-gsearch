- - -
- [Intro](#intro)
- [Requirements](#requirements)
- [Installation](#installation)
  - [Install ex-utility](#install-ex-utility)
  - [Install id-utils](#install-id-utils)
  - [Install ex-gsearch](#install-ex-gsearch)
- [Usage](#usage)

For more details, check [exVim's Docs: Global Search](http://exvim.github.io/docs/global-search)

- - -

# Intro

ex-gsearch is a global search plugin for Vim. By default it use id-utils as its search engine.
In ex-gsearch, you can:

- List search result in ex-gsearch window.
- Filter search result by ex-gsearch's powerful filter method.
- Jump to the search result.

ex-gsearch is also a part of [exVim](https://github.com/exvim/main) project.

## Requirements

- Vim 6.0 or higher.
- [exvim/ex-utility](https://github.com/exvim/ex-utility) 
- [id-utils](http://www.gnu.org/software/idutils/)

## Installation

### Install ex-utility

ex-gsearch is written based on [exvim/ex-utility](https://github.com/exvim/ex-utility). This 
is the basic library of ex-vim-plugins. Follow the readme file in ex-utility to install it first.

### Install id-utils

ex-gsearch used id-utils as its default search engine. id-utils is a GNU project,
you can easily install it on Mac and Linux. For Windows user, you can download it from 
GNU-Win32 project: http://gnuwin32.sourceforge.net/packages/id-utils.htm 

**Mac**

    ## use Homebrew
    brew install idutils

**Linux**

    ## use pat-get
    apt-get install idutils

    ## use yum
    yum install idutils

    ## or compile id-utils from source

**Windows**

download it from [GNU-Win32](http://gnuwin32.sourceforge.net/packages/id-utils.htm)

### Install ex-gsearch

ex-gsearch follows the standard runtime path structure, and as such it can 
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

## Usage

Enter your project, use `mkid` command create your ID file:

```bash
mkid .
```

For more details about using `mkid`, read [mkid-invocation](http://www.gnu.org/software/idutils/manual/idutils.html#mkid-invocation).
You can also specified your search file by editing id-utils'
[language-map](http://www.gnu.org/software/idutils/manual/idutils.html#Language-map). 

You will see a ID file generated under your directory. 

Start your Vim and try to global search a word by `:GS your-word`. A search window will 
open and the search results of `your-word` will be listed in it. 

You can jump to the search result by hit the `Enter` on the listed lines. You can also
filter the search results by use `/` and do a search on your filter word. After confirmed 
your search, press `<leader>r` and ex-gsearch will help you filter the result.

More details, check `:help exgsearch`.
