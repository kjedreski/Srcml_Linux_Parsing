# Kevin Jedreski
# use srcml to create a report in markdown format


srcml "$*" -o report.xml

echo "# Code Summary"
echo "* Directory: $*"
echo "* Files: " 
find "$*" -type f  | wc -l


