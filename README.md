## My .vimrc configure file  
Be sure to `git clone` [Vundle](https://github.com/VundleVim/Vundle.vim) after using this configuration  
After that, do `:PluginInstall` to install whatever plugin it configures

-----
#### YouCompleteMe  

After install this plugin  
`cd .vim/bundle/YouCompleteMe`  
`python3 install.py -h` for all possible completers  

#### Julia YCM Server

Install `LanguageServer` package in julia  
Run the following command in `~/.vim/bundle/lsp-examples`:
```bash
./install.py --enable-julia
```

#### Markdown Preview

Visit [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) for installation instructions
