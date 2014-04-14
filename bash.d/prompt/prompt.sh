## Prompt Definitions

MYHOST="$(hostname)"

# if AWS instance, change host with instance name
if [ -n "$INSTANCE_ID" ]; then
    MYHOST="$INSTANCE_ID"
fi

PS1="\[$PS_Green\]<\[$PS_BGreen\]\u\[$PS_Green\]@$MYHOST> \[$PS_BBlue\]\w\$(__git_ps1 \"\[$PS_Grey\]:\[$PS_Red\]%s\") \[$PS_Grey\]\$\[$PS_NC\] "