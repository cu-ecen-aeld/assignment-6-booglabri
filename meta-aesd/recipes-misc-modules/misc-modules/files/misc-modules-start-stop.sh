#!/bin/sh

case "$1" in
    start)
        echo "Starting misc-modules"
        /usr/bin/module_load faulty
        /usr/bin/module_load hello
        ;;
    stop)
        echo "Stopping misc-modules"
        /usr/bin/module_unload faulty
        /usr/bin/module_unload hello
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
esac

exit 0
