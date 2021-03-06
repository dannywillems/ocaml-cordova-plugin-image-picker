# ocaml-cordova-plugin-image-picker

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-image-picker/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-image-picker.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-image-picker)

Binding to
[cordova-plugin-image-picker](https://github.com/apache/cordova-plugin-image-picker)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-image-picker-example).

## What does cordova-plugin-image-picker do ?

```
This plugin defines a global image-picker object, which describes the image-picker's
hardware and software. Although the object is in the global scope, it is not
available until after the deviceready event.
```

Source: [cordova-plugin-image-picker](https://github.com/apache/cordova-plugin-image-picker)

## Repository branches and tags

Only gen_js_api is developed.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-image-picker https://github.com/dannywillems/ocaml-cordova-plugin-image-picker.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-image-picker [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin activity indicator with
```Shell
cordova plugin add cordova-plugin-image-picker
```

## How to use ?

See the official documentation
[cordova-plugin-image-picker](https://github.com/apache/cordova-plugin-image-picker)
