apt-get update
apt-get install nginx git python3
curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py
pip install Flask
ufw allow 'Nginx HTTP'
ufw allow 'OpenSHH'
ufw allow ssh
ufw app list
ufw enable
ufw status verbose
cp /etc/shell/nginx.conf /etc/nginx/sites-available/default
systemctl restart nginx
compressInstall
mkdir /var/www/html/hosted
cp compressed-shell-scripts-source.tar.gz /var/www/html/hosted/
if [[ $1 == '-o' ]]; 
then	
	setupOVPN 
fi

