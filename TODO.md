TODO
====

List of things to get done.

General
-------

* Change `-mfloat-abi=softfp` to `-mfloat-abi=hard` when new devkitARM is
  released.

SQLite
------

* Implement `sqlite3_os_init` and `sqlite3_os_end`, or replace
  `-DSQLITE_OS_OTHER=1` with `-DSQLITE_OS_UNIX=1`?
* Remove `--disable-threadsafe` and implement locking mechanism.
