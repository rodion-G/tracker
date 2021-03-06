#!/bin/sh
PARENT_DIR=${PWD%/*}
TRACKER_HOME=$(pwd)

# building plugin and starting server
PLUGIN_HOME=$TRACKER_HOME/plugin/Tracker
cd $PLUGIN_HOME
python setup.py bdist_egg

rm $PARENT_DIR/trac-env/plugins/*.egg
cp -rf $PLUGIN_HOME/dist/*.egg $PARENT_DIR/trac-env/plugins/

cd $TRACKER_HOME

trac-admin $PARENT_DIR/trac-env upgrade

cd $PARENT_DIR

/sbin/start-stop-daemon --start --quiet --user jenkins --pidfile /tmp/tracd.pid --exec /usr/local/bin/tracd -- --daemonize --pidfile=/tmp/tracd.pid --port=8000 --basic-auth="trac-env,${PARENT_DIR}/trac-env/.htpasswd,trac-env" $PARENT_DIR/trac-env
