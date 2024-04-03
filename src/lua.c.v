#flag -I/usr/local/include/luajit-2.1
#flag -L/usr/local/lib
#flag -R/usr/local/lib
#flag -lluajit-5.1
#flag -lm
#include "lua.h"
#include "lauxlib.h"

pub struct C.lua_State {}

fn C.luaL_newstate() &C.lua_State
fn C.luaL_openlibs(&C.lua_State)
fn C.lua_close(&C.lua_State)
fn C.luaL_dostring(&C.lua_State, &char) int

fn print_hello_from_lua() {
	println("HELLO")
	lstate := C.luaL_newstate()
	_ := C.luaL_dostring(lstate, c"print('hello')")
	C.lua_close(lstate)
}
