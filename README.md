# rMousier
  
An extension for the excellent rMouse package. This package extends the functionality of the `specialKey()` function in rMouse to allow for the use of `CTRL` and `ALT` as well as the ability to hold and release those keys explicitly.  
**This package requires rMouse to work.**   
  
## Functions
  
- `extra_specialKey()` works just like `rMouse::specialKey` but accepts `CTRL` and `ALT` as values for the `key` argument   
- `hold_specialKey()` holds `CTRL` or `ALT` until `release_specialKey()` is called with the same key  
- `release_specialKey()` releases `CTRL` or `ALT` after being called by `hold_specialKey()`
  
## Installation
  
Some users (namely me) have experienced issues with installing through `devtools::install_github()`. I suspect the reason for this is, at least on my system, I have both 32 and 64 bit versions of R installed. This has worked for me, though, so if you're having issues installing this package, give this a shot:  
  
```{r}
devtools::install_github('bradisbrad/rMousier', INSTALL_opts=c("--no-multiarch"))
```
  
## Suggestions?   
  
Yep, this package has basically one and a half functions. It's all I needed. Feel free to send any suggestions my way.  
  
Dejan, if you're out there, you can just cannibalize this into `rMouse`. I'd be fine with that. 
