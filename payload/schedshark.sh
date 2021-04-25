crontab -l > mycron

echo "@reboot $PWD/shark.sh" >> mycron
echo "0 0 * * *  $PWD/shark.sh" >> mycron
​
crontab mycron
rm mycron