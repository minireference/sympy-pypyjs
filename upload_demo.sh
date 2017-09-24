#!/usr/bin/env bash

echo "Creating pypyjs_sympy_demo.tgz archive..."
rm pypyjs_sympy_demo.tgz
tar -czf pypyjs_sympy_demo.tgz \
    --exclude='^sympy' \
    --exclude='^mpmath' \
    index.html \
    css \
    js \
    pypyjs-release-nojit/

echo "Uploading pypyjs_sympy_demo.tgz to server ..."
scp pypyjs_sympy_demo.tgz minireference.com:~/www/minireference/static/tmp/

echo "Exteacting into /static/tmp/pypyjs_sympy_demo/ ..."
ssh ivan@minireference.com <<'ENDSSH'
#commands to run on remote host
cd ~/www/minireference/static/tmp/
rm -rf pypyjs_sympy_demo
mkdir pypyjs_sympy_demo
cp pypyjs_sympy_demo.tgz pypyjs_sympy_demo/
cd pypyjs_sympy_demo/
tar -xzf pypyjs_sympy_demo.tgz
echo DONE deploying: see https://minireference.com/static/tmp/pypyjs_sympy_demo/
ENDSSH
