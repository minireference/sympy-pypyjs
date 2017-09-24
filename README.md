sympy on pypyjs
===============
A test project to see if SymPy runs on PyPy.js. Seems to run fine...


TODO
----

  - Try other python-->js compilers
  - Port the editor tab PyPy.js





Install
-------

Git clone `--recusive` this repo, then

    python ./pypyjs-release-nojit/tools/module_bundler.py add ./pypyjs-release-nojit/lib/modules sympy/
    python ./pypyjs-release-nojit/tools/module_bundler.py add ./pypyjs-release-nojit/lib/modules mpmath/

You should now be able to open the `.html` files in this repo.
Recommend use Firefox (Chrome doesn't like XHR) or start a webserver in local dir.


Deploy
------

    ./upload_demo.sh



Manual testing
--------------
1. Go to https://minireference.com/static/tmp/pypyjs_sympy_demo/
2. **WAIT 10 seconds** (sympy module is loading async)
3. Copy paste the following code into the bottom box:

```
x = symbols('x')
print( solve(x-3,x) )
print( solve(x**2-3,x) )
print( simplify(sin(x)**2 + cos(x)**2) )
```


