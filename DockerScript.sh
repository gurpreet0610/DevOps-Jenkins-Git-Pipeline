if sudo docker ps |grep webdev
then
echo “already running”
else
sudo docker run -d -t -i -p 9000:80 -v /var/lib/jenkins/workspace/GitDevPull:/usr/local/apache2/htdocs/ — name webdev httpd
fi
