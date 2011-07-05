define_keymap("mycrossoverpoint_keymap", $parent = content_buffer_normal_keymap);
define_key(mycrossoverpoint_keymap, "tab", null, $fallthrough);
define_key(mycrossoverpoint_keymap, "S-tab", null, $fallthrough);

define_keymap("mycrossoverpoint_edit_keymap", $parent = content_buffer_text_keymap);
define_key(mycrossoverpoint_keymap, "tab", null, $fallthrough);
define_key(mycrossoverpoint_keymap, "S-tab", null, $fallthrough);

function mycrossoverpoint_modality (buffer, element) {
  
  if (buffer.input_mode)
    buffer.keymaps.push(mycrossoverpoint_keymap);
}

define_page_mode("mycrossoverpoint_mode", 
                 $enable = function (buffer) {
                   buffer.modalities.push(mycrossoverpoint_modality);
                 },
                 $disable = function (buffer) {
                   var i = buffer.modalities.indexOf(mycrossoverpoint_modality);
                   if (i > -1)
                     buffer.modalities.splice(i, 1);
                 },
                 $display_name = "MyCrossoverPoint");

// let (re = build_url_regex($domain = "mycrossoverpoint")) {
//     auto_mode_list.push([re, mycrossoverpoint_mode]);
// };
auto_mode_list.push([build_url_regex($domain = "mycrossoverpoint.heroku",
                                     $tlds = ["com"]), 
                     mycrossoverpoint_mode]);
