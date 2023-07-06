# [История команд в терминале](#anchor)
## [Task 1](#anchor)
    cat > home_animals.txt
    собаки: Булдог, Той-терьер, Мастиф
    кошки: Сиамская, Сомалийская
    хомяки: Китайский, Сирийский, Кэмпбелл
    
    cat > pack_animals.txt
    лошади: Астурийский, Баскский, Бельгийский верховой, Галицийский
    верблюды: одногорбый, двугорбый, дикий
    ослы: Пуатусский, Каталонский, Карликовый средиземноморский
    
    cat home_animals.txt pack_animals.txt > animals.txt
    cat animals.txt
    mv animals.txt mans_friends.txt
    cat mans_friends.txt

## [Task 2](#anchor)

    mkdir nursery
    mv mans_friends.txt nursery
    cd nursery/
    ls

## [Task 3](#anchor)

    sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.23-1_all.deb
    sudo dpkg -i mysql-apt-config_0.8.23-1_all.deb
    sudo apt-get update
    sudo apt-get install mysql-server

## [Task 4](#anchor)

    sudo wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-ce-cli_23.0.0-1~ubuntu.22.04~jammy_amd64.deb
    sudo dpkg -i docker-ce-cli_23.0.0-1~ubuntu.22.04~jammy_amd64.deb
    sudo dpkg -r docker-ce-cli