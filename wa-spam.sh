clear
cat banner.txt
echo - Connect your phone to this laptop using USB Cable
echo - Android Only
echo 
echo

read -p 'Message: ' uservar
read -p 'Country Code: ' usercod
read -p 'phone number: ' userph
adb shell am start -a android.intent.action.VIEW -d "https://api.whatsapp.com/send?phone=+[$usercod][$userph]&msg=$uservar"
sleep 5 
for (( ; ; ))
do
   echo "Press (ctrl + c) to stop"
   adb shell input text "$uservar"
   adb shell input keyevent 66
   clear
done




