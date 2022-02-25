# how to dump a mysql DB running inside docker


```
docker exec mysqldump -u root -p'xxxx' database > file.bkp.sql
```

- works also with docker-compose

```
docker-compose exec db mysqldump -u root -p'xxxx' magento2 > /var/tmp/magento2-db.bkp.sql
```
