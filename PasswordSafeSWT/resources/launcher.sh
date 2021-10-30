#!/bin/sh

LAUNCHER_DIR=$(dirname "$0")
CONTENTS_DIR=$LAUNCHER_DIR/..
JAVA_HOME=/Library/Java/JavaVirtualMachines/@javaRuntimeVersion@/Contents/Home
exec $JAVA_HOME/bin/java \
  -cp "$CONTENTS_DIR/Java/*" \
  -Xdock:icon="$CONTENTS_DIR/Resources/PasswordSafe.icns" \
  -Xdock:name=PasswordsSafe \
  -XstartOnFirstThread \
  org.pwsafe.passwordsafeswt.PasswordSafeJFace
