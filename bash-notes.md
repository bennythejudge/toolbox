# Bash Notes

### Editing string variables using parameter expantion (`%` and `#`)

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
a="file.yaml.gpg"; echo ${a%.*}
file.yaml
```