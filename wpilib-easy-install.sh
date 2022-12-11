curl -s https://api.github.com/repos/jgm/pandoc/releases/latest \
| grep "browser_download_url.*tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - \
| tar -xvf \ 
| cd -
