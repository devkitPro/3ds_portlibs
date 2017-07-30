TODO
====

List of things to get done.

General
-------

* implement proper dependency chains

SQLite
------

* Implement `sqlite3_os_init` and `sqlite3_os_end`, or replace
  `-DSQLITE_OS_OTHER=1` with `-DSQLITE_OS_UNIX=1`?
* Remove `--disable-threadsafe` and implement locking mechanism.
