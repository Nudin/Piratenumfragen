#!/bin/bash

./makeusable.sh
./plotit
cp *png online
cp *svg online
read -p "Bearbeitungskomentar: " comment
git commit -a -m "$comment"
git push origin master
cd online
git commit -a -m "$comment"
git push origin gh-pages
