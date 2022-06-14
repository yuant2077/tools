wget https://github.com/yuant2077/tools/raw/main/ssh.pub
mkdir -p ~/.ssh && cat ssh.pub >> ~/.ssh/authorized_keys
sed -i 's/^.*PasswordAuthentication.*/PasswordAuthentication no/g' /etc/ssh/sshd_config && \
sed -i 's/^.*PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config && \
sed -i 's/^.*RSAAuthentication.*/RSAAuthentication yes/g' /etc/ssh/sshd_config && \
sed -i 's/^.*PubkeyAuthentication.*/PubkeyAuthentication yes/g' /etc/ssh/sshd_config && \
sed -i 's/^.*ChallengeResponseAuthentication.*/ChallengeResponseAuthentication no/g' /etc/ssh/sshd_config
systemctl restart sshd
