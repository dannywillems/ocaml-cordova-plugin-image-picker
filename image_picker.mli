(* -------------------------------------------------------------------------- *)
class options : Ojs.t ->
  object
    inherit Ojs.obj

    method maximum_images_count   : int
    method width                  : int
    method height                 : int
    method quality                : int
  end

val create_options :
  ?maximum_images_count:(int [@js.default 15])    ->
  ?width:int                                      ->
  ?height:int                                     ->
  ?quality:(int [@js.default 100])                ->
  unit                                            ->
  options
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
class image_picker : Ojs.t ->
  object
    inherit Ojs.obj

    method get_pictures :   (string array -> unit)                          ->
                            (string -> unit)                                ->
                            ?opt:(options [@js.default create_options ()])  ->
                            unit                                            ->
                            unit
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> image_picker
[@@js.get "window.imagePicker"]
(* -------------------------------------------------------------------------- *)
