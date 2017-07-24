sympy on pypyjs
===============
A test project to see if SymPy can run on PyPy.js


Install
-------

Git clone `--recusive` this repo, then

    python ./pypyjs-release-nojit/tools/module_bundler.py add ./pypyjs-release-nojit/lib/modules sympy/
    python ./pypyjs-release-nojit/tools/module_bundler.py add ./pypyjs-release-nojit/lib/modules mpmath/

You should now be able to open the `.html` files in this repo.
Recommend use Firefox (Chrome doesn't like XHR) or start a webserver in local dir.

