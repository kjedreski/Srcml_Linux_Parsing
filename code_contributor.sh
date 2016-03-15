echo "Working with $*"
echo "Largest source-code file  is . . . .  "
find "$*"  -name "*.c" | xargs wc -l | sort -r -n | head -2 
echo "Source-code files that Linus Torvalds worked in . . ."
echo ".h extension:"
find "$*" -name "*.h"  | xargs grep "Linus Torvalds" | wc
echo ".c extension:"
find "$*" -name "*.c" | xargs grep "Linus Torvalds" | wc
echo "unrelated files: "
find "$*" -name "*.c" -o -name "*.h" | xargs grep "Linus Torvalds" | cut -d '/' -f7 | sort -u
echo "Largest source file, written with Linus Torvalds: "
find "$*" -name "*.c" -o -name "*.h" | xargs grep -l "Linus Torvalds" | xargs wc -l | sort -r -n | head -2
echo "name listed of first 10 of these orderred by size: "
find "$*" -name "*.c" | xargs wc -c | sort -r -n | grep -v "total" | head 
find "$*" -name "*.h" | xargs grep "Linus Torvalds" | wc -c |grep -v "total"| head
find "$*" -name "*.c" -o -name "*.h" | xargs grep -l "Linus Torvalds" | xargs wc -c | grep -v "total" | sort -r -n | head 
echo "***********DONE"
