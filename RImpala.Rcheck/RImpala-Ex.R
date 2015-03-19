pkgname <- "RImpala"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('RImpala')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("RImpala_close")
### * RImpala_close

flush(stderr()); flush(stdout())

### Name: rimpala.close
### Title: Function to close the JDBC connection to Impala
### Aliases: rimpala.close
### Keywords: close ~kwd2

### ** Examples

## Not run: 
##D library(RImpala)
##D rimpala.init()
##D rimpala.connect(IP="127.0.0.1",port="21050")
##D rimpala.close()
## End(Not run)



cleanEx()
nameEx("RImpala_connect")
### * RImpala_connect

flush(stderr()); flush(stdout())

### Name: rimpala.connect
### Title: Establishes a JDBC connection to a machine running Impala
### Aliases: rimpala.connect
### Keywords: connection ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect(IP="127.0.0.1",port="21050")
##D rimpala.close()
##D rimpala.connect(IP="localhost",port="21050",principal="impala/myhost.example.com@H2.EXAMPLE.COM")
## End(Not run)



cleanEx()
nameEx("RImpala_describe")
### * RImpala_describe

flush(stderr()); flush(stdout())

### Name: rimpala.describe
### Title: Function to describe any table present in Hive's metastore
### Aliases: rimpala.describe
### Keywords: describe ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect("127.0.0.1","21050")
##D des=rimpala.describe(table="sample_table")
## End(Not run)



cleanEx()
nameEx("RImpala_init")
### * RImpala_init

flush(stderr()); flush(stdout())

### Name: rimpala.init
### Title: Adds the folder containing the jars for Impala in the Classpath
### Aliases: rimpala.init
### Keywords: connection ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init(libs="/usr/lib/impala/lib")
## End(Not run)



cleanEx()
nameEx("RImpala_invalidate")
### * RImpala_invalidate

flush(stderr()); flush(stdout())

### Name: rimpala.invalidate
### Title: Invalidates the metadata of a one or all tables
### Aliases: rimpala.invalidate
### Keywords: invalidate ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect(IP="127.0.0.1",port="21050")
##D rimpala.invalidate(table="sample")
## End(Not run)



cleanEx()
nameEx("RImpala_query")
### * RImpala_query

flush(stderr()); flush(stdout())

### Name: rimpala.query
### Title: Function to run a Query in Impala
### Aliases: rimpala.query
### Keywords: ~kwd1 ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect(IP="127.0.0.1",port="21050")
##D res = rimpala.query("Select * from sample_table")
## End(Not run)



cleanEx()
nameEx("RImpala_refresh")
### * RImpala_refresh

flush(stderr()); flush(stdout())

### Name: rimpala.refresh
### Title: Refreshes and loads the new metadata for the given table
### Aliases: rimpala.refresh
### Keywords: refresh ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect(IP="127.0.0.1",port="21050")
##D rimpala.refresh(table="sample")
## End(Not run)



cleanEx()
nameEx("RImpala_showdatabases")
### * RImpala_showdatabases

flush(stderr()); flush(stdout())

### Name: rimpala.showdatabases
### Title: Function to list all the databases present
### Aliases: rimpala.showdatabases
### Keywords: show databases ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect("127.0.0.1","21050")
##D rimpala.showdatabases()
## End(Not run)



cleanEx()
nameEx("RImpala_showtables")
### * RImpala_showtables

flush(stderr()); flush(stdout())

### Name: rimpala.showtables
### Title: Function to display the list of all the tables present
### Aliases: rimpala.showtables
### Keywords: show tables ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect(IP="127.0.0.1",port="21050")
##D rimpala.showtables()
## End(Not run)



cleanEx()
nameEx("RImpala_usedatabase")
### * RImpala_usedatabase

flush(stderr()); flush(stdout())

### Name: rimpala.usedatabase
### Title: Function to change the current working database
### Aliases: rimpala.usedatabase
### Keywords: use database ~kwd2

### ** Examples

## Not run: 
##D library("RImpala")
##D rimpala.init()
##D rimpala.connect(127.0.0.1,"21050")
##D rimpala.usedatabase(db="sample_db")
## End(Not run)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
