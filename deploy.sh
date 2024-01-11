#!/usr/bin/env bash

echo "deploying math87-site"
cd /home/george/Classes/2024-Sp-Math190/
git add .
read -p "Commit message: " msg
git commit -m "$msg"
git push origin main
