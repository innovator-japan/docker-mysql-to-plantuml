# mysql-to-plantuml
Docker container to output PlantUML from MySQL using [Database-to-PlantUML](https://github.com/Hywan/Database-to-PlantUML).

## Supported tags
- `latest` only

## Usage
```
$ docker container run innovatorjapan/mysql-to-plantuml:latest [OPTIONS]
```

### Popular usage
```
docker container run --rm --network="mysql" innovatorjapan/mysql-to-plantuml:latest -d "mysql:host=mysql_host:3306" -s test_db > test.uml
```
In this example, connect to the `mysql` network and resolve `mysql_host`. And output `test_db` schema to test.uml.

## Options
| Name, shorthand | Default | Description |
| --- | --- | --- |
| --database-schema, -s |  | Database name (required) |
| --database-dsn, -d | "mysql:host=localhost" | Database DSN (optional) |
| --database-user, -u | "root" | Database username (optional) |
| --database-password, -p | "" | Database password (optional) |
| --help, -h |  | print help |
