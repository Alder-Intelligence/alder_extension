# alder_extension

## Installation Extension
1. source postgresql environment file.
2. compile extension
```
make USE_PGXS=1
make install USE_PGXS=1
```
3. create extension in your database ```
CREATE EXTENSION alder_optimizer;
```

## Minirepro Usage
1. Execute ```./minirepro --help``` to look at the command line params.
2. Execute ```./minirepro database_name -t postgresql -q query_file -f output_file``` to collect the query reproduce info from PostgreSQL.
3. Execute ```./minirepro database_name -t greenplum -q query_file -f output_file -e``` to collect the query reproduce info and explain analyze result from Greenplum.
