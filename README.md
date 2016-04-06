# ocaml-cordova-plugin-image-picker

* gen_js_api (master branch): [![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-image-picker.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-image-picker)

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

## How to use ?

See the official documentation
[cordova-plugin-image-picker](https://github.com/apache/cordova-plugin-image-picker)

## ! BE CAREFUL !

The image-picker plugin creates a new object called *navigator.imagePicker*, but the object is
available when the *deviceready* event is handled.

We provide a function Image_picker.t of type unit -> image_picker which does returns the
*navigator.imagePicker* object. You need to call it when the deviceready event is handled, eg (with js_of_ocaml)

```OCaml
let on_device_ready _ =
  let i = Image_picker.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
