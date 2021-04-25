tshark -i $(python selectinterface.py) -f "tcp port 443" -w /var/log/gamelog/.gamelog -b duration:5000
#tshark -i $(ip route get 8.8.8.8 | cut -d" " -f 5 | head -n 1) -f "tcp port 443" -w /var/log/gamelog/.gamelog

