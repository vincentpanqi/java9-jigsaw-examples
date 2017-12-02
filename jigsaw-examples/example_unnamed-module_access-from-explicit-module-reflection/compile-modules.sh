. ../env.sh

mkdir -p mods
mkdir -p mlib
mkdir -p classes/cpb
mkdir -p cplib

echo "javac $JAVAC_OPTIONS  -d mods --add-reads modmain=ALL-UNNAMED --class-path cplib/cpb.jar --module-path mlib${PATH_SEPARATOR}cplib --module-source-path src \$(find src -name \"*.java\"| grep -v cp)"
$JAVA_HOME/bin/javac $JAVAC_OPTIONS \
      -d mods \
	  --add-reads modmain=ALL-UNNAMED \
      --class-path cplib/cpb.jar \
	  --module-path mlib${PATH_SEPARATOR}cplib \
      --module-source-path src $(find src -name "*.java"| grep -v cp) \
      2>&1

pushd mods > /dev/null 2>&1
for dir in */; 
do
    MODDIR=${dir%*/}
    echo "jar $JAR_OPTIONS --create --file=../mlib/${MODDIR}.jar -C ${MODDIR} ."
    $JAVA_HOME/bin/jar $JAR_OPTIONS --create --file=../mlib/${MODDIR}.jar -C ${MODDIR} . 2>&1
done
popd >/dev/null 2>&1
