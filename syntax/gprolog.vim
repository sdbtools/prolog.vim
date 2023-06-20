" Vim syntax file
" Language:    GNU-Prolog v1.5
" Maintainers: Sergey Sikorskiy <sdbtools at elgoog dot com>

" include standard prolog syntax file
runtime! syntax/prolog.vim

" Check meaning of "prolog_highlighting_clean" and "prolog_highlighting_no_keyword" in syntax/prolog.vim.

if !exists("prolog_highlighting_no_keyword")
	syn keyword  prologKeyword built_in built_in_fd elif else endif foreign
    syn keyword  prologKeyword discontiguous ensure_linked ensure_loaded if
    syn keyword  prologKeyword include initialization public
endif

if !exists("prolog_highlighting_clean")

  " some keywords
  " some common predicates are also highlighted as keywords
  " is there a better solution?
  if !exists("prolog_highlighting_no_keyword")
    " GNU-Prolog specific
    syn keyword prologKeyword   abort absolute_file_name acyclic_term add_linedit_completion
    syn keyword prologKeyword   add_stream_alias add_stream_mirror architecture argument_counter
    syn keyword prologKeyword   argument_list argument_value atom_property between
    syn keyword prologKeyword   bind_variables break call_det call_with_args callable
    syn keyword prologKeyword   change_directory character_count close_input_atom_stream
    syn keyword prologKeyword   close_input_chars_stream close_input_codes_stream
    syn keyword prologKeyword   close_output_atom_stream close_output_chars_stream
    syn keyword prologKeyword   close_output_codes_stream compare consult cpu_time
    syn keyword prologKeyword   create_pipe current_alias current_atom
    syn keyword prologKeyword   current_bip_name current_mirror current_stream
    syn keyword prologKeyword   date_time decompose_file_name delete delete_directory
    syn keyword prologKeyword   delete_file directory_files display display_to_atom
    syn keyword prologKeyword   display_to_chars display_to_codes environ exec
    syn keyword prologKeyword   expand_term false file_exists file_permission
    syn keyword prologKeyword   file_property flatten for forall fork_prolog format
    syn keyword prologKeyword   format_to_atom format_to_chars format_to_codes
    syn keyword prologKeyword   g_array_size g_assign g_assignb g_dec g_deco g_inc
    syn keyword prologKeyword   g_inc g_inco g_link g_read g_reset_bit g_set_bit
    syn keyword prologKeyword   g_test_reset_bit g_test_set_bit get get0 get_key
    syn keyword prologKeyword   get_key_no_echo get_linedit_prompt get_print_stream
    syn keyword prologKeyword   get_seed ground host_name hostname_address is_absolute_file_name
    syn keyword prologKeyword   is_list is_relative_file_name keysort last
    syn keyword prologKeyword   last_read_start_line_column length line_count line_position
    syn keyword prologKeyword   list list_or_partial_list listing load lower_upper
    syn keyword prologKeyword   make_directory maplist max_list member memberchk
    syn keyword prologKeyword   min_list msort name name_query_vars name_singleton_vars
    syn keyword prologKeyword   new_atom nth number_atom numbervars open_input_atom_stream
    syn keyword prologKeyword   open_input_chars_stream open_input_codes_stream
    syn keyword prologKeyword   open_output_atom_stream open_output_chars_stream
    syn keyword prologKeyword   open_output_codes_stream os_version partial_list
    syn keyword prologKeyword   permutation phrase phrase popen portray_clause
    syn keyword prologKeyword   predicate_property prefix print print_to_atom
    syn keyword prologKeyword   print_to_chars print_to_codes prolog_file_name
    syn keyword prologKeyword   prolog_pid put random randomize read_atom
    syn keyword prologKeyword   read_from_atom read_from_chars read_from_codes
    syn keyword prologKeyword   read_integer read_number read_pl_state_file
    syn keyword prologKeyword   read_term_from_atom read_term_from_chars
    syn keyword prologKeyword   read_term_from_codes read_token
    syn keyword prologKeyword   read_token_from_atom read_token_from_chars
    syn keyword prologKeyword   read_token_from_codes real_time
    syn keyword prologKeyword   remove_stream_mirror rename_file retractall reverse
    syn keyword prologKeyword   see seeing seek seen select send_signal set_bip_name
    syn keyword prologKeyword   set_linedit_prompt set_seed set_stream_buffering
    syn keyword prologKeyword   set_stream_eof_action set_stream_line_column
    syn keyword prologKeyword   set_stream_type setarg shell skip sleep socket
    syn keyword prologKeyword   socket_accept socket_bind socket_close socket_connect
    syn keyword prologKeyword   socket_listen sort spawn statistics stop stream_line_column
    syn keyword prologKeyword   stream_position sublist subsumes_term subtract succ
    syn keyword prologKeyword   suffix sum_list syntax_error_info system system_time
    syn keyword prologKeyword   tab tell telling temporary_file temporary_name
    syn keyword prologKeyword   term_expansion term_hash term_ref term_variables
    syn keyword prologKeyword   told top_level unget_byte unget_char unget_code unlink
    syn keyword prologKeyword   user_time wait working_directory write_canonical_to_atom
    syn keyword prologKeyword   write_canonical_to_chars write_canonical_to_codes
    syn keyword prologKeyword   write_pl_state_file write_term_to_atom
    syn keyword prologKeyword   write_term_to_chars write_term_to_codes
    syn keyword prologKeyword   write_to_atom write_to_chars write_to_codes
    syn keyword prologKeyword   writeq_to_atom writeq_to_chars writeq_to_codes

  endif

  syn match   prologOperator "#\\\?/\\\|#\\\?==>\|#=\?<#\?\|#\\\?=#\?\|#\\\?<=>\|##\|#>=\?#\?\|#\\\?\\/\?"

endif

let b:current_syntax = "gprolog"

