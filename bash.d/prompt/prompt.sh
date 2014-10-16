## Prompt Definitions

MYHOST="$(hostname)"

# if AWS instance, change host with instance name
if [ -n "$INSTANCE_ID" ]; then
    MYHOST="$INSTANCE_ID"
fi

#PS1="\n\[$PS_Yellow\][\u] \[$PS_Grey\][$MYHOST] \[$PS_Green\][\w]\n\[$PS_Blue\][\W]\$(__git_ps1 \"\[$PS_Red\] [%s]\") \[$PS_Grey\]\$\[$PS_NC\] "

PS1="\[$PS_White\]\w\n\[$PS_Yellow\] \u \[$PS_Grey\][$MYHOST] \$(__git_ps1 \"\$PS_BRed\]%s\[$PS_Grey\]:\")\[$PS_Cyan\]\W \[$PS_Grey\]\$\[$PS_NC\] "
#PS1="\n\$(__git_ps1 \"\[$PS_Red\][%s] \")\[$PS_Green\][\w]\n\[$PS_Yellow\][\u] \[$PS_Grey\][$MYHOST] \[$PS_Grey\]\$\[$PS_NC\] "
#PS1="\[$PS_Green\]<\[$PS_BGreen\]\u\[$PS_Green\]@$MYHOST> \[$PS_BBlue\]\w\$(__git_ps1 \"\[$PS_Grey\]:\[$PS_Red\]%s\") \[$PS_Grey\]\$\[$PS_NC\] "
