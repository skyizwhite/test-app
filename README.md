# test-app
Web app written in Common Lisp

## Usage

### Run app

```bash
$ docker compose up -d
```

### Initial setup

In postgres docker container
```
$ createuser -d test-app
```
In app docker container
```
$ qlot exec utopian db create
```

### Migrate database

In app docker container
```
$ qlot exec utopian generate migration
$ qlot exec utopian db migrate
```
