cat readme.md

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./clean.sh

. ./compile.sh

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./javadoc.sh

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./depvis-vis.sh
. ./depvis-print.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./run.sh
