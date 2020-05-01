# Gigabusted

Why is pip taking up all that space? VS Code, I thought we were pals! 
Huge machine learning datasets aren't doing hard drive storage any favors either...

Some useful commands to clear out some space on your drives:

## Purge pip cache and wheels

requires pip 20.1

```{bash}
pip cache purge
```

## Clean apt cache (Linux)

#. Check your config
```{bash}
apt-config dump | grep "^Dir\( \|::Ca\)"
```

#. Check what'll be removed
```{bash}
sudo apt-get clean --dry-run
```
