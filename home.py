# Extracting the File: Web Browser → “http://webiopi.trouch.com/DOWNLOADS.html” → Extract the file 
 


# Commands: 
 
sudo apt-get update 
sudo apt-get upgrade 
 
cd /home/pi/Downloads      # Move to the downloaded folder 
 
tar xvzf WebIOPi-0.7.1.tar.gz 
 
cd WebIOPi-0.7.1 
 
wget https://raw.githubusercontent.com/doublebind/raspi/master/webiopi-pi2bplus.patch 
 
patch -p1 -i webiopi-pi2bplus.patch 
 
sudo ./setup.sh 
sudo reboot 
sudo webiopi -d -c /etc/webiopi/config 
sudo /etc/init.d/webiopi start 



# Connections:
    # Pin no.3(GPIO 2) → LED-1 of LED Module 
    # Pin no.6(GND) → GND of LED Module 
    # Ethernet Cable → RaspberryPi 

# Web Control Process: Open Web Browser → “http://(URL):8000/” → User Name: (webiopi) → Password: (raspberry) → WebIOPI Main Menu → GPIO Header → (Control over the LED Module through the interface system showcasing the automation system structure)

#get ip add using:  hostname -I 
