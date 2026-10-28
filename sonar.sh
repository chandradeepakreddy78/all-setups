cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.10.0.133078.zip
unzip sonarqube-26.10.0.133078.zip
yum install java-21-amazon-corretto -y
id -u sonar &>/dev/null || useradd sonar
chown -R sonar:sonar sonarqube-26.10.0.133078
chmod -R 755 sonarqube-26.10.0.133078
sudo -u sonar /opt/sonarqube-26.10.0.133078/bin/linux-x86-64/sonar.sh start
