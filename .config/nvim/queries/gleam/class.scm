; TailwindCSS class detection for Gleam attribute.class("...") patterns
(function_call
  function: (field_access
    record: (identifier) @_record
    field: (label) @_field
    (#eq? @_record "attribute")
    (#eq? @_field "class"))
  arguments: (arguments
    (argument
      value: (string
        (quoted_content) @tailwind))))

; Alternative pattern for any function named "class"
(function_call
  function: (identifier) @_function
  arguments: (arguments
    (argument
      value: (string
        (quoted_content) @tailwind)))
  (#eq? @_function "class"))