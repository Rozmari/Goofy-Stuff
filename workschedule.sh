#echo -e "$rem" | mailx -A gmail -s "Schedule for the date of $date." recipient@some.com

week=$(date +%m-%d)

echo "Hello, this will prompt you for what dates you work and email your ol' pal telling them. What days do you work this week?"
echo "FORMAT: 'Tuesday, the 30th, at 3PM, Wednesday, the 31st, at 12PM.'"
echo "Period at the end for politeness."

read dates
echo -n "Who are you sending this to? "
read receiver


echo $date >> /dev/null

echo "On the week of $week, I work $dates -- Thanks!" | mailx -A gmail -s "Schedule for the date of $week." $receiver
