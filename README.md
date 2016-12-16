# Easy-PHP-GPIO
Control pins 18, 23, 24, and 25 from PHP by installing this short script. Super easy. Dead simple. Very quick.

# Installation
Add the following line via `sudo visudo`
`www-data ALL=NOPASSWD:/var/www/html/gpio/`

Move the INSTALL file to the Raspberry Pi and execute with the following command.
`sudo chmod +x INSTALL && ./INSTALL`

Wire a 4-channel SAINSMART relay board to GPIO pins 18, 23, 24, and 25.
