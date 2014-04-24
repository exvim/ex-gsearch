# Intro

ex-gsearch is a global search plugin for Vim. By default it use id-utils as its search engine.
In ex-gsearch, you can:

- List search result in ex-gsearch window.
- Filter search result by ex-gsearch's powerful filter method.
- Jump to the search result.

ex-gsearch is also a part of [exVim](https://github.com/exvim/main) project

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
    brew install id-utils

**Linux**

    ## use pat-get
    apt-get install id-utils

    ## use yum
    yum install id-utils

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

You will see the a ID file generated under your directory. 

Start your Vim and try to global search a word by `:GS your-word`. You will see
a search window opened and the search results of `your-word` in it. 

You can jump to search result by hit the `Enter` on the result line. You can also
filter the search result by press `/` and search your filter word. After that press
`<leader>r` and ex-gsearch will help you filter the result.

More details, check `:help exgsearch`.
