IGNORE_DEPS += edown eper eunit_formatters meck node_package rebar_lock_deps_plugin rebar_vsn_plugin reltool_util
C_SRC_DIR = /path/do/not/exist
C_SRC_TYPE = rebar
DRV_CFLAGS = -fPIC
export DRV_CFLAGS
ERLANG_ARCH = 64
export ERLANG_ARCH
ERLC_OPTS = +debug_info
export ERLC_OPTS

DEPS += emqttc
dep_emqttc = git https://github.com/emqtt/emqttc.git v0.2.1-beta
DEPS += poolboy
dep_poolboy = git https://github.com/devinus/poolboy.git 1.5.1


rebar_dep: preprocess pre-deps deps pre-app app

preprocess::

pre-deps::

pre-app::

include ../../erlang.mk