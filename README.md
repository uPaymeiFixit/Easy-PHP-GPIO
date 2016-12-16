# Easy-PHP-GPIO
Control pins 18, 23, 24, and 25 from PHP by installing this short script. Super easy. Dead simple. Very quick.

# Installation
Add the following line via `sudo visudo`

```bash
www-data ALL=NOPASSWD:/var/www/html/gpio/
```

Download and install with the following command
```bash
wget https://raw.githubusercontent.com/uPaymeiFixit/Easy-PHP-GPIO/master/INSTALL && ./INSTALL
```

# Hardware Setup
Wire a 4-channel SAINSMART relay board to GPIO pins 18, 23, 24, and 25.
