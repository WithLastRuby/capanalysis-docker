
 
![screenshot](https://i.imgur.com/7Fidgao.png)

# capanalysis-docker
- dockerized capanalysis
- using image debian:latest (2020.08.30)

# run
```
sh run.sh
```

# max file upload size
```
vim upload.ini

file_uploads = On
memory_limit = 64M
upload_max_filesize = 64M
post_max_size = 64M
max_execution_time = 600
```


# file location capanalysis, postgresql (linux)
```
$ docker volume inspect cap
[
    {
        "CreatedAt": "2020-08-30T07:30:39Z",
        "Driver": "local",
        "Labels": {},
        "Mountpoint": "/var/lib/docker/volumes/cap/_data",
        "Name": "cap",
        "Options": {},
        "Scope": "local"
    }
]
$ docker volume inspect db
[
    {
        "CreatedAt": "2020-08-30T07:30:38Z",
        "Driver": "local",
        "Labels": {},
        "Mountpoint": "/var/lib/docker/volumes/db/_data",
        "Name": "db",
        "Options": {},
        "Scope": "local"
    }
] 

cd /var/lib/docker/volumes/db/_data
```
# file location cap, db in WSL2
```
# cd /mnt/wsl/docker-desktop-data/data/docker/volumes/cap/_data

# ls -al 
total 52
drwxr-xr-x 8 www-data www-data  4096 Aug 30 16:30 .
drwxr-xr-x 3 root     root      4096 Aug 30 16:30 ..
drwxr-xr-x 3 www-data www-data  4096 Aug 30 16:30 bin
drwxr-xr-x 2 www-data www-data  4096 Aug 30 16:30 cfg
drwxr-xr-x 3 www-data www-data  4096 Aug 30 16:30 db
-rw-r--r-- 1 www-data www-data 18092 Apr 17  2018 LICENSE
drwxr-xr-x 2 www-data www-data  4096 Aug 30 16:30 log
drwxr-xr-x 2 www-data www-data  4096 Aug 30 16:30 tmp
drwxr-xr-x 7 www-data www-data  4096 Dec 26  2018 www


# cd /mnt/wsl/docker-desktop-data/data/docker/volumes/db/_data/11/main
# ls -al
 
drwx------ 19 sshd messagebus 4096 Aug 30 16:30 .
drwxr-xr-x  3 sshd messagebus 4096 Aug 30 16:30 ..
drwx------  6 sshd messagebus 4096 Aug 30 16:30 base
drwx------  2 sshd messagebus 4096 Aug 30 16:30 global
drwx------  2 sshd messagebus 4096 Aug 30 16:27 pg_commit_ts
drwx------  2 sshd messagebus 4096 Aug 30 16:27 pg_dynshmem
drwx------  4 sshd messagebus 4096 Aug 30 16:36 pg_logical
...

```

