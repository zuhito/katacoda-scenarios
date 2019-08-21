echo "This is automatically run when the scenario"
echo "v 0.0.2"

pwd

ls -lha .

echo "Waiting to complete"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Done"