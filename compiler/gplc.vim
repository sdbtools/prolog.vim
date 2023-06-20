vim9script

# Vim compiler file
# Compiler:             GNU-Prolog Compiler
# Maintainers:          Sergey Sikorskiy <sdbtools at elgoog dot com>
# Latest Revision:      2023-06-17

if exists("g:current_compiler")
  finish
endif

if exists(":CompilerSet") != 2		# older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

g:current_compiler = 'gplc'

CompilerSet makeprg=gplc

# To include a backslash itself give two backslashes (you have to type four in a ":set" command).
const gplc_errorformat = join([
    "%*[^ ] including %f:%l%m",
    "%f:%l%m(char:%c)",
    "%f:%l:%m",
    "%f:%l-%*\\\\d:%m",
    "! Error in \"%f\"\\\\",
    " line %l : %m"],
    ",")

execute 'CompilerSet errorformat=' .. escape(gplc_errorformat, ' ')

