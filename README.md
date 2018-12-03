## My .vimrc configure file  
Be sure to `git clone` [Vundle](https://github.com/VundleVim/Vundle.vim) after using this configuration  
After that, do `:PluginInstall` to install whatever plugin it configures

-----
#### YouCompleteMe  

After install this plugin  
`cd .vim/bundle/YouCompleteMe`  
`python3 install.py --clang-completer` --for C/C++  
add `--java-completer` for Java  
add `--cs-completer` for C#  
add `--go-completer` for Go  
add `--rust-completer` for Rust  

or simply `python3 install.py --all`
