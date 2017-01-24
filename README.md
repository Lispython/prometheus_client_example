# Example project for testing prometheus_client for python

## Starting application
For start application simple run `make docker-start`


## Load testing

Change `load.ini` and run `make tank`.


## Compare result
Take data from 127.0.0.1:8051/metrics and compare with logstring `[pid: 56|app: 0|req: 1499/6003]`.
