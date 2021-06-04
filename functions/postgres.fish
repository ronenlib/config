
function rl-postgres-install-13
  docker pull postgres:13
end

function rl-postgres-init-13
  docker run \
    -p 5432:5432 \
    --name=postgres-13 \
    -e POSTGRES_PASSWORD=root \
    -e POSTGRES_USER=root \
    -d postgres:13
end

funcsave rl-postgres-install-13;
funcsave rl-postgres-init-13;