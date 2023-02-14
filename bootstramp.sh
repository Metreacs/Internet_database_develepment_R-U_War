function INFO() {
        echo -e "\e[$1;49;1m> $2 \033[39;49;0m"
        # if have $3 parameter, it stands for sheep time
        if [ -n "$3" ]; then
                sleep $3
        fi
        echo ""
}
php init --env=Development --overwrite=All --delete=All
password="Yii#123456"
# run composer install
# composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
# composer install --ignore-platform-req=php
(
cat << EOF
<?php
return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connectio~n',
            'dsn' => 'mysql:host=localhost;dbname=yii22022',
            'username' => 'root',
            'password' => '${password}',
            'charset' => 'utf8mb4',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
        ],~
    ],
];
EOF
) > ./common/config/main-local.php

# create database yii22022
mysql -uroot -p${password} --connect-expired-password << EOF
create database yii22022;
EOF
# run ./data/init.sql
mysql -uroot -p${password} --connect-expired-password yii22022 < ./data/yii22022.sql
pip3 install bs4
pip3 install pymysql
python3 ./spider/spiderForBlog.py
