#!/usr/bin/env fish

function rl-mysql-install-56
  docker pull mysql/mysql-server:5.6
end

function rl-mysql-install-57
  docker pull mysql/mysql-server:5.7
end

function rl-mysql-install-8
  docker pull mysql/mysql-server:8
end

function rl-mysql-init-56
  docker run \
    -p 3306:3306 \
    --name=mysql-56 \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_ROOT_HOST=% \
    -d mysql/mysql-server:5.6
  
end

function rl-mysql-init-57
  docker run \
    -p 3306:3306 \
    --name=mysql-57 \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_ROOT_HOST=% \
    -d mysql/mysql-server:5.7
end

function rl-mysql-init-8
  docker run \
    -p 3306:3306 \
    --name=mysql-8 \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_ROOT_HOST=% \
    -d mysql/mysql-server:8
end

function rl-mysql-restart-56
  docker restart (docker ps -aqf "name=mysql-56")
end

function rl-mysql-restart-57
  docker restart (docker ps -aqf "name=mysql-57")
end

function rl-mysql-restart-8
  docker restart (docker ps -aqf "name=mysql-8")
end

function rl-mysql-stop-56
  docker stop (docker ps -aqf "name=mysql-56")
end

function rl-mysql-stop-57
  docker stop (docker ps -aqf "name=mysql-57")
end

function rl-mysql-stop-8
  docker stop (docker ps -aqf "name=mysql-8")
end

funcsave rl-mysql-install-56;
funcsave rl-mysql-install-57;
funcsave rl-mysql-install-8;
funcsave rl-mysql-init-56;
funcsave rl-mysql-init-57;
funcsave rl-mysql-init-8;
funcsave rl-mysql-restart-56;
funcsave rl-mysql-restart-57;
funcsave rl-mysql-restart-8;
funcsave rl-mysql-stop-56;
funcsave rl-mysql-stop-57;
funcsave rl-mysql-stop-8;