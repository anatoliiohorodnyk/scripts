#!/bin/bash

sudo useradd -m -s /bin/bash -G accgroup anatoliio
sudo usermod -aG sudo anatoliio
sudo usermod -aG docker anatoliio
sudo mkdir -p /home/anatoliio/.ssh
sudo touch /home/anatoliio/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmHyAGmnpsH1DDvPSGY0C+6JkBPUfaJv5pKTTv2wAu9ABoXlMQ4c4YLmNt7rz5bGcYSYjW6O3N5ePI/xSfqqJuuBGs8LqPdG3SNLRbtNH46YKJ/KdJOcEtWfKpuY+08MEdJ92jAKUQBeY5SJmdgiLu27DyNp0PZaiambrW61I3v75pea6xhgJWM9DWlZqd787fJTrUwRNj59u7g8UC6xT0eXNghTG23Jq24/V4E9fxmTPglHGsk5A4+TYOdvL45Qf5jFeq//R/qfcnR38YM5s6CHRTtWcp/qAsR4ZOdcedU6DI3wKp18iQLpjQ7bsICmrM7AD/Y4k9cXyNVhTLVGlemd+5bqWmuIEkni8bJs5DJOOhOyRxVAKMmBAceRY24Zy4knJxZQSzi+LZoX7mT5QKr928ZDo801QXu4sMdO4qkS9QkuwmXdiEcndA0PUtzjoQvij7QAEa44Id/lh4XM2e6a0CEcEMgH8XHsQmxSj1YnoxsoaUShaAjgWOaltoRs0= pyr\anatoliio@tsosys2' | sudo tee -a /home/anatoliio/.ssh/authorized_keys
sudo chmod 700 /home/anatoliio/.ssh
sudo chmod 600 /home/anatoliio/.ssh/authorized_keys
sudo chown -R anatoliio:anatoliio /home/anatoliio/.ssh