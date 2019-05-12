# Bash Best Practices

## Exit a script when a command fails

```bash
set -o errexit 
# OR
set -e
```

`-e` indicates that from that point forward, all errors will trigger an EXIT signal. 

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

## Add help

It's useful to include a `-h` or `--help` flag which prints usage information about the script

```bash
if [[ ${#@} -ne 0 ]] && [[ "${@#"--help"}" = "" ]]; then
  printf -- '...help...\n';
  exit 0;
fi;
```

## Check if command is available

Command is a bash built-in.

`command -v binary-name`

```bash
docker=$(command -v docker);
if [ "$docker" != "0" ]; then
  print -e -- 'Docker is not installed';
  exit 127;
```

## Use exit codes

```bash
127 - command not found
0 - success
1 - general errors such as "divide by zero" and other impermissible operations
```
