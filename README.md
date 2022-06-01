# Vim Docsis

Syntax highlighting and matching rules for Docsis config files

## Installation

If you use [Vundle](https://github.com/gmarik/vundle), add the following lines
to your `~/.vimrc`:

```vim
Plugin 'shadowwa/vim-docsis'
```

Then run inside Vim:

```vim
:so ~/.vimrc
:PluginInstall
```

If you use [Pathogen](https://github.com/tpope/vim-pathogen), do this:

```sh
cd ~/.vim/bundle
git clone https://github.com/shadowwa/vim-docsis.git
```

For [vim-plug](https://github.com/junegunn/vim-plug) users:

```vim
Plug 'shadowwa/vim-docsis'
```

in your `.vimrc` or `init.vim`, then restart Vim and run `:PlugInstall`.

### Folding

Folding is enabled for headers by default.

The following commands are useful to open and close folds:

- `zr`: reduces fold level throughout the buffer
- `zR`: opens all folds
- `zm`: increases fold level throughout the buffer
- `zM`: folds everything all the way
- `za`: open a fold your cursor is on
- `zA`: open a fold your cursor is on recursively
- `zc`: close a fold your cursor is on
- `zC`: close a fold your cursor is on recursively
