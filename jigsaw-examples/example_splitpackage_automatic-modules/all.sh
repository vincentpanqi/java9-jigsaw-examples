cat readme.md

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./clean.sh

. ./compile.sh

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./run.sh

echo "# -------------------------------------------------------------------------------------------------------------------------------"
. ./run_with-extended-module-path.sh
