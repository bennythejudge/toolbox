# install rails on my laptop

- my laptop is a macbook pro running MacOS 

```
λ sw_vers
ProductName:	Mac OS X
ProductVersion:	10.13.4
BuildVersion:	17E202
```



```
brew install rbenv ruby-build
sudo -H gem install pkg-config -v "~> 1.1"
sudo -H gem install nokogiri -- --use-system-libraries
sudo -H gem install rails
```


- this was not necessary because I had already done a long time ago

```
xcode-select --install
```

