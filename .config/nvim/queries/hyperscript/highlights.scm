[
  "behavior"
  "def"
;  "eventsource"
;  "js"
  "set"
  "init"
  "on"
;  "socket"
;  "worker"

  "return"
  "end"
  "add"
  "append"
] @keyword

[
	(event_name)
    (IDENTIFIER)
    (OBJECT_ACCESS)
    (symbol)
    (CLASS_REF)
    (TARGET_EXPRESSION)
] @variable

[
  "to"
  "on"
  "then"
  (operator)
] @operator

[
	(STRING)
] @string

[
	(NUMBER)
  (OBJECT_LITERAL)
] @literal

(comment) @comment

[
	(command)
] @call
