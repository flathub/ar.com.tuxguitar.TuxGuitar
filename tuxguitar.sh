#!/bin/sh

LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/app/lib/
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/app/jre/lib/
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib
CLASSPATH=${CLASSPATH}:/app/lib/tuxguitar.jar
CLASSPATH=${CLASSPATH}:/app/lib/tuxguitar-ui-toolkit.jar
CLASSPATH=${CLASSPATH}:/app/lib/tuxguitar-ui-toolkit-swt.jar
CLASSPATH=${CLASSPATH}:/app/lib/tuxguitar-lib.jar
CLASSPATH=${CLASSPATH}:/app/lib/tuxguitar-editor-utils.jar
CLASSPATH=${CLASSPATH}:/app/lib/tuxguitar-gm-utils.jar
CLASSPATH=${CLASSPATH}:/app/lib/tuxguitar-awt-graphics.jar
CLASSPATH=${CLASSPATH}:/app/lib/swt.jar
CLASSPATH=${CLASSPATH}:/app/lib/gervill.jar
CLASSPATH=${CLASSPATH}:/app/lib/itext-pdf.jar
CLASSPATH=${CLASSPATH}:/app/lib/itext-xmlworker.jar
CLASSPATH=${CLASSPATH}:/app/lib/commons-compress.jar
CLASSPATH=${CLASSPATH}:/app/lib/icedtea-sound.jar
CLASSPATH=${CLASSPATH}:/app/share/
CLASSPATH=${CLASSPATH}:/app/dist/

##MAINCLASS
MAINCLASS=org.herac.tuxguitar.app.TGMainSingleton
##JVM ARGUMENTS
VM_ARGS="-Xmx512m"

export CLASSPATH
export LD_LIBRARY_PATH

${JAVA} ${VM_ARGS} -cp :${CLASSPATH} -Dtuxguitar.share.path="/app/share/" -Djava.library.path="${LD_LIBRARY_PATH}" ${MAINCLASS} "$1" "$2"