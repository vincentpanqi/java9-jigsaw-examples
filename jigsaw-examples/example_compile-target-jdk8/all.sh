cat readme.md

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./clean.sh

. ./compile-jdk9-for-release8.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./compile-jdk9-for-release9.sh

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./run-jdk8.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./run-jdk9.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./run-jdk8_compiled-with-jdk8-for-release8.sh
