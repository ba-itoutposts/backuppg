# This project will be used for backup postgres databases
Script is written in python and takes 2 arguments. --action backup and --config <configfile>. In the config file(pgsql.conf in this repo) you need to specify a few arguments.
# USAGE
1) Create a file named pgsql.conf with the following content
```[postgresql]
host= <<IP or dns Name of postgres>> 
port=<<port of postgres>>
db=<<name or list of dbs>> seperated by comma that want to backup>
user=<USER NAME>
password=<<Password of USER>>```
  
   
