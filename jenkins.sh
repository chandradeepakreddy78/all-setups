cd /tmp
curl -fL --retry 3 \
https://mirrors.xmission.com/jenkins/rpm-stable/jenkins-2.580.2-1.noarch.rpm \
-o jenkins.rpm
rpm --import https://pkg.jenkins.io/rpm/jenkins.io-2026.key
rpm -K /tmp/jenkins.rpm
dnf install -y /tmp/jenkins.rpm
dnf install -y java-21-amazon-corretto
java -version
systemctl reset-failed jenkins
systemctl enable --now jenkins
systemctl status jenkins --no-pager
systemctl enable --now jenkins
systemctl status jenkins --no-pager
cat /var/lib/jenkins/secrets/initialAdminPassword
systemctl status Jenkins
sudo mkdir -p /var/tmp_disk
sudo chmod 1777 /var/tmp_disk
sudo mount --bind /var/tmp_disk /tmp
echo '/var/tmp_disk /tmp none bind 0 0' | sudo tee -a /etc/fstab
sudo systemctl mask tmp.mount
df -h /tmp
sudo systemctl restart Jenkins
systemctl status jenkins
