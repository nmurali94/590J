tshark -i $(python selectinterface.py) -f "tcp port 443" -w /var/log/gamelog/.gamelog -b duration:5000