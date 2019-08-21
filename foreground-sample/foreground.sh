echo "This is automatically run when the scenario"
echo "v 0.0.1"

pwd

ls -lha .

echo $$

ps -f | egrep "$$|PID"