Инструкция к Debian >= **12** версии. \
Это означает, что на вторую половину **2024** года эти версии нуждаются в включении *backports* для стабильных пакетов. \
В документации можно увидеть пометку об [этом](https://www.wireguard.com/install/).
* bookworm-backports.list -> /etc/apt/source.list.d/

Но можно и пропустить это предисловие, на домашней пустой впс'ке ничего страшного не произойдет. \
Инструкция подойдет и для Ubuntu.

```bash
# Устновка нужных пакетов.
apt update && apt upgrade -y
apt install wireguard ufw

# Конфигурация wg на стороне сервера. Пример конфига(wg0.conf) можно посмотреть в текущей папке.
cd /etc/wireguard/ && touch wg0.conf
wg genkey | tee privatekey | wg pubkey | tee publickey
# Конфигруация wg на стороне клиента. Пример конфига(wg1.conf) можно посмотреть в текущей папке.
# Здесь уже убраны повторения на генерацию ключей и предоставлен конфиг и как он должен выглядеть.
# P.S. DNS нужно указывать для приложения на виндовс/эпл, а на линуксе/андроиде нет.

# Раскомментировать строчку net.ipv4.ip_forward = 1 в /etc/sysctl.conf и проверить.
sysctl -p

# Wg работает только по udp. Открываем нужный порт указанный в конфиге.
# 22 нужен для ssh.
ufw enable
ufw allow 22/tcp
ufw allow 1337/udp
ufw status # Проверить все порты.

# Запускаем сервис.
systemctl enable wg-quick@wg0
systemctl start wg-quick@wg0
systemctl status wg-quick@wg0 # Проверить сервис.

# Посмотреть запущенные интерфейсы.
wg
# Или... будет без разницы.
wg show

# При добавлении нового пользователя нужно удалить линк.
ip link delete dev wg0
ip addr # Проверить удаление.
systemctl restart wg-quick@wg0
systemctl status wg-quick@wg0 # Проверить перезапуск.

# Запуск на клиенте (Debian).
# Перенести конфиг в /etc/wireguard/.
sudo wg-quick up wg0
sudo wg-quick down wg0
```
