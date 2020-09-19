# macsettings

(Last update, 2018-09-07, macOS High Sierra version 10.13.4)

## Initial Setup and Installation List
- Apple account, App Store, iCloud, (iTunes)
- Google account, Gmail
- [Google Japanese Input](https://www.google.co.jp/ime/)
- DaisyDisk 
- Dropbox, Evernote, Google Drive
- Wallet 
- LINE, twitter, Facebook, ZOOM, Slack
- [Sublime](https://www.sublimetext.com)
- Xcode, Xcode command line tool by `xcode-select --install`, and agree to license `sudo xcodebuild -license`

## Terminal 
- [iceberg](http://cocopon.github.io/iceberg.vim/) (see [link](https://qiita.com/samuraibrass/items/1bf4ff34e8682f762682))

## Homebrew 
- [Homebrew](https://brew.sh)
- brew install wget
- brew install gcc (fortran is required for HEASoft install)

## Physics and Astronomy
- [XQuartz](https://xquartz.macosforge.org) for HEASoft
- [HEASoft](https://heasarc.gsfc.nasa.gov/lheasoft/download.html)
- ds9 

## Setups
- change to zsh `chsh -s /bin/zsh`
- set `.zshrc` (wget from this repository)

## python
### pyenv 
```
git clone git://github.com/yyuu/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
```


### pyenv-virtualenv
```
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
```

### Generate a new python environment
- A new python environment is generated via `pyenv virtualenv [version] <virtualenv-name>`. For example, 
```
pyenv install 2.7.14
pyenv rehash
pyenv virtualenv 2.7.14 py2.7.14env1
pyenv versions
pyenv global py2.7.14env1 
pyenv versions
```

### Insallation of python modules
```
pip install astropy
```

### Remote Sublime
see: https://qiita.com/UJ_Person/items/e04ef2e4ba7288cb5b25

crontab -e を sublime で行うには、https://askubuntu.com/questions/844064/how-can-i-set-sublime-as-default-text-editor-for-crontab　を参照。
sublime-wait を作った上で、
```
export EDITOR='/path/to/sublime-wait'
```
を設定ファイルに書き込む。

## Obsolete applications
- [MacTex](http://tug.org/mactex/mactex-download.html), TexShop ([Installation hint](http://osksn2.hep.sci.osaka-u.ac.jp/~taku/osx/install_ptex.html))
- Skype
- Papers3

