#########
## AWS ##
#########

# Try wget, then curl for AWS instance ID
export INSTANCE_ID=$(wget -q --tries=1 --connect-timeout=1 -O - http://169.254.169.254/latest/meta-data/instance-id 2>/dev/null || \
                     curl -s --connect-timeout 1 http://169.254.169.254/latest/meta-data/instance-id 2>/dev/null)

# Set prompt host to instance ID
if [ -n "$INSTANCE_ID" ]; then
    PS1HOST="$INSTANCE_ID"
fi
