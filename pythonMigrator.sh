//cd into each repo and run this script
cd package
cp install.py install_backup.py
/Users/vibhorekapoor/Library/Python/3.9/bin/2to3 install.py -w
sed -i '' 's/file = open(filename, "rb")/file = open(filename, "r")/g' install.py
sed -i '' 's|#! /usr/bin/env python|#! /usr/bin/env python3|' install.py
cd ..
sed -i '' 's|/usr/bin/python|/usr/bin/python3|g' assembly/pom.xml
git add package/install.py assembly/pom.xml
git commit -m "JIRA_TICKET python migration"
git push origin master
