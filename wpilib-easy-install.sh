curl -s https://api.github.com/repos/wpilibsuite/allwpilib/releases/latest \
| grep "browser_download_url.*tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - -O wpilib.tar.gz
 tar -xf wpilib.tar.gz
 find / -maxdepth 3 -type d -name "WPILib*" 2>/dev/null \
| cd 
