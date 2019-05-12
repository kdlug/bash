# Bash Best Practices

## Exit a script when a command fails

```bash
set -o errexit 
# OR
set -e
```

## Exit a script when using undeclared variable

```bash
set -o nounset
# OR
set -u
```

## Use $(cmd) instead of legacy ‘cmd’ for Substitution

```bash
# legacy
user=`echo `$USER`
# recommended
user=$(echo $USER)
```

## Use Read-only to Declare Static Variables

```bash
readonly passwd_file=”/etc/passwd”
readonly group_file=”/etc/group”
```
## Use Uppercase Names for ENVIRONMENT Variables and Lowercase for Custom Variables

All bash environment variables are named with uppercase letters, therefore use lowercase letters to name your custom variables to avoid variable name conflicts.

