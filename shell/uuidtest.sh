
uuid=$(cut -d "=" -f 2 <<< $(blkid /dev/sda6 | awk '{print $2}'))
echo ${uuid:1:-1}
