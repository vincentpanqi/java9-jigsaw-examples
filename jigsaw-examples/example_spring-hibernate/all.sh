cat readme.md

echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./clean.sh

sh ./compile.sh

echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./run-test.sh
sh ./run.sh
