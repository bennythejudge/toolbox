# Bash Notes

### Editing string variables using parameter expansion (`%` and `#`)

```
In Bash (and ksh, zsh, dash, etc.), you can use parameter expansion with % which will
remove characters from the end of the string or # which will remove characters from the
beginning of the string. 
If you use a single one of those characters, the smallest matching string will be
removed. If you double the character, the longest will be removed.
```

(quoted from https://stackoverflow.com/questions/4168371/how-can-i-remove-all-text-after-a-character-in-bash)

- for example: remove the trailing characters following a dot in a filename:

```
bash-3.2$ a="file.yaml.gpg"
bash-3.2$ echo ${a%.*}
file.yaml
```

- second example: change the first part of the filename without changing anything past the first dot:

```
a="file.yaml.gpg"; echo "newname".${a#*.}
newname.yaml.gpg
```
