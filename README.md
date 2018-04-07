# macsettings

(Last update, 2018-04-07, MacOS High Sierra version 10.13.4)

## Initial Setup and Installation List
- Apple account, App Store, iTune, iCloud
- Google account, Gmail
- [Google Japanese Input](https://www.google.co.jp/ime/)
- DaisyDisk 
- Dropbox, Evernote
- Wallet 
- Skype, LINE, twitter, Facebook, ZOOM, Slack
- [MacTex](http://tug.org/mactex/mactex-download.html), TexShop ([Installation hint](http://osksn2.hep.sci.osaka-u.ac.jp/~taku/osx/install_ptex.html))
- [Sublime](https://www.sublimetext.com)
- Papers3
- Xcode, Xcode command line tool by `xcode-select --install`, and agree to license `sudo xcodebuild -license`
- [Homebrew](https://brew.sh)

## Physics and Astronomy
- [XQuartz](https://xquartz.macosforge.org) for HEASoft
- [HEASoft](https://heasarc.gsfc.nasa.gov/lheasoft/download.html)
- ds9 

## Setups
- change to zsh `chsh -s /bin/zsh`
- set `.zshrc`

## Homebrew 
- 

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
