/*
 * Copyright (C)2005-2019 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package hl.types;

typedef BytesMapData = Abstract<"hl_bytes_map">;

abstract BytesMap(BytesMapData) {
	extern public inline function new() {
		this = alloc();
	}

	@:hlNative("std", "hballoc") static function alloc():BytesMapData {
		return null;
	}

	@:hlNative("std", "hbset")
	public function set(key:Bytes, value:Dynamic) {}

	@:hlNative("std", "hbexists")
	public function exists(key:Bytes):Bool {
		return false;
	}

	@:hlNative("std", "hbget")
	public function get(key:Bytes):Dynamic {
		return null;
	}

	@:hlNative("std", "hbremove")
	public function remove(key:Bytes):Bool {
		return false;
	}

	@:hlNative("std", "hbkeys")
	public function keysArray():NativeArray<Bytes> {
		return null;
	}

	@:hlNative("std", "hbvalues")
	public function valuesArray():NativeArray<Dynamic> {
		return null;
	}

	#if (hl_ver >= version("1.11.0"))
	@:hlNative("std", "hbclear")
	public function clear():Void {}
	#end

	extern public inline function iterator() {
		return new NativeArray.NativeArrayIterator<Dynamic>(valuesArray());
	}
}
