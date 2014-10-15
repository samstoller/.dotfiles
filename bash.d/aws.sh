#########
## AWS ##
#########

# Try wget, then curl for AWS instance-id
export INSTANCE_ID=$(wget -q --tries=1 --connect-timeout=1 -O - http://169.254.169.254/latest/meta-data/instance-id 2>/dev/null || \
                     curl -s --connect-timeout 1 http://169.254.169.254/latest/meta-data/instance-id 2>/dev/null)
