; let ... in
(let_expression ; Line 170
  (value_definition
    "let" @delimiter
    ("rec" @delimiter)?)
  "in" @delimiter @sentinel) @container

(match_expression ; Line 182
  "match" @delimiter
  "with" @delimiter
  ("|"  @delimiter (match_case))+) @container

; I can't get it to collapse else if into one
(if_expression ; Line 193
  "if" @delimiter
  (then_clause "then" @delimiter)
  (else_clause "else" @delimiter)*) @container

(for_expression ; Line 208
  "for" @delimiter
  "to" @delimiter
  (do_clause
    "do" @delimiter
    "done" @delimiter)) @container

(while_expression ; Line 219
  "while" @delimiter
  (do_clause
    "do" @delimiter
    "done" @delimiter)) @container

;;; Copied over from rainbow-delimiters

(array_get_expression ; Line 8
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(coercion_expression ; Line 122
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(constructed_type ; Line 14
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(local_open_expression ; Line 27
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(module_parameter ; Line 38
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(package_expression ; Line 31
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(parenthesized_expression ; Line 6
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(parenthesized_module_expression ; Line 47
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(parenthesized_operator ; Line 25
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(parenthesized_pattern ; Line 23
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(parenthesized_type ; Line 12
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(object_expression ; Line 54
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(typed_pattern ; Line 18
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(typed_expression ; Line 50
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(list_expression ; Line 18
  "[" @delimiter
  "]" @delimiter @sentinel) @container

(list_pattern ; Line 63
  "[" @delimiter
  "]" @delimiter @sentinel) @container

(array_expression ; Line 68
  "[|" @delimiter
  "|]" @delimiter @sentinel) @container

(array_pattern ; Line 73
  "[|" @delimiter
  "|]" @delimiter @sentinel) @container

(attribute ; Line 84
  "[@" @delimiter
  "]" @delimiter @sentinel) @container

(item_attribute ; Line 90
  "[@@" @delimiter
  "]" @delimiter @sentinel) @container

(floating_attribute ; Line 93
  "[@@@" @delimiter
  "]" @delimiter @sentinel) @container

(record_pattern ; Line 104
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(record_expression ; Line 99
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(record_declaration ; Line 96
  "{" @delimiter
  "}" @delimiter @sentinel) @container

; Can't find an example
; (record_binding_pattern
;   "{" @delimiter
;   "}" @delimiter @sentinel) @container

(class_binding ; Line 127
  "[" @delimiter
  "]" @delimiter @sentinel) @container


(polymorphic_variant_type ; Line 130
  "[<" @delimiter
  "]" @delimiter @sentinel) @container

(polymorphic_variant_type ; Line 137
  "[>" @delimiter
  "]" @delimiter @sentinel) @container

(string_get_expression ; Line 77
  "[" @delimiter
  "]" @delimiter @sentinel) @container

(extension ; Line 140
  "[%" @delimiter
  "]" @delimiter @sentinel) @container

(item_extension ; Line 147
  "[%%" @delimiter 
  "]" @delimiter @sentinel) @container

(quoted_item_extension ; Line 150
  "{%%" @delimiter
  "}" @delimiter @sentinel) @container

(quoted_string ; Line 81
  "{" @delimiter
  "}" @sentinel) @container

(bigarray_get_expression ; Line 158
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(object_copy_expression ; Line 166
  "{<" @delimiter
  ">}" @delimiter @sentinel) @container

