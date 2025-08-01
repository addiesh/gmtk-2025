set -e
./build.sh
git push
butler push shell addiesh/gmtk-2025:html-jam
