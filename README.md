Folgende Änderungen müssen noch getätigt werden:
conf->nginx->conf->roobique.com.conf
Servername ändern
root path ändern
Script_Filename bootstrap path ändern

bin->provision.sh
Eventuell Programme welche installiert werden müssen hinzufügen. 

Nach dem start in folgenden Files den Parameter sendfile auf off.
/etc/nginx/nginx.conf
/etc/nginx/nginx.conf.default


