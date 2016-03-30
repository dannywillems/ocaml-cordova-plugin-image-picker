# ocaml-cordova-plugin-image-picker

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

We don't provide a *image_picker* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *image_picker* will be set to **undefined**
because the *navigator.imagePicker* object doesn't exist when we create the variable.

We provide a function Image_picker.t of type unit -> image_picker which does returns the
*navigator.imagePicker* object. You need to call it when the deviceready event is handled, eg

```OCaml
let on_device_ready _ =
  let i = Image_picker.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
