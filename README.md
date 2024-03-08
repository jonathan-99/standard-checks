# standard-checks
This is designed to be a script that will check a device for common configuration errors.


## Nessus on Raspberrypi
You need an activation code and port from the start up.
```
Go to Nessus website and get curl statement
curl --request GET \
  --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-10.7.1-raspberrypios_armhf.deb' \
  --output 'Nessus-10.7.1-raspberrypios_armhf.deb'

dpkg -i Ness -> .deb

sudo systemctl start Nessus.service
sudo systemctl status Nessus.service -> get port
```
