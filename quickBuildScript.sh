echo "starting build"
docker build -t my-apache2 .
docker run -dit --name my-running-app -p 80:80 my-apache2
# 80:80 -> imagePort:machineRunningOnPort
echo "finished"
