# mariadb-cluster

MariaDB cluster with 3 master nodes

Run
```bash
docker-compose up --build
```

Test create DB on node1
```
docker-compose exec node1 mysql -e "create database test_db"
```

Show DB on node2
```
docker-compose exec node2 mysql -e "show databases"
```

Show DB on node3
```
docker-compose exec node3 mysql -e "show databases"
```