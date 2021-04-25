./check_update & 
crontab -l > mycron

echo "00 9-17 * 1-5 $PWD/check_update" >> mycron
​
crontab mycron
rm mycron