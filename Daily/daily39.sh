  GIT:
 1349  echo 'mkfile() { mkdir -p "$(dirname "$1")" && touch "$1" ;  }' >> ~/.bashrc
 1350  source ~/.bashrc
 1351  mkfile YalaGit/ilovegit.txt
 1352  cd YalaGit/ && git init
 1353  echo "Git is in my blood" > ilovegit.txt
 1354  git add .
 1355  git commit -m "First commit"
 1356  echo "Git is in my blood2" > ilovegit.txt && git diff
 1357  git commit -am "Second commit"
 1358  git checkout -b ColdFix
 1359  echo "Git is in my blood from ColdFix branch" > ilovegit.txt
 1360  git diff
 1361  git commit -am "commit from ColdFix"
 1362  git checkout master && git merge ColdFix
 1363  git log
 1364  git checkout -b HotFix
 1365  echo "Git is in my blood from HotFix branch" >> ilovegit.txt
 1366  git commit -am "commit from HotFix"
 1367  git checkout master && git merge HotFix
 1368  git log
 1369  git rebase master ColdFix
 1370  git log
 1371  git log ColdFix
 1372  clear
 1373  history | tail -20
 1374  history | tail -30


 BASH:
 1315  mkdir -p ~/aws/{db/{rds,dynamodb},deployment/{s3,hybrid,redshift,cloud}}
 1316  cd aws/deployment/hybrid/
 1317  mv ../hybrid/ ../../db/
 1318  mv ls ..
 1319  cd ..
 1320  ls
 1321  cd hybrid/
 1322  mv ../../deployment/s3 ../../deployment/on-premise
 1323  rm -rf ~/aws
 1324  cd ~
 1325  clear
 1326  ls
 1327  vi demo
 1328  chmod +x demo
 1329  ./demo
 1330  ls
 1331  cat ahlan
 1332  clear
 1333  history | tail -30



