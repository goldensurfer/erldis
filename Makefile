PROJECT = erldis

ERLC_OPTS = +debug_info +warn_export_all +warn_export_vars +warn_shadow_vars +warn_obsolete_guard

PLT_APPS = hipe sasl mnesia crypto compiler syntax_tools
DIALYZER_OPTS = -Werror_handling -Wrace_conditions -Wunmatched_returns | fgrep -v -f ./dialyzer.ignore-warning

DEPS_DIR = ../../deps
DEPS = gen_server2

dep_gen_server2 = http://github.com/mdaguete/gen_server2.git master

include erlang.mk
