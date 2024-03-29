package unit;

import php.*;

using StringTools;

class TestPhp extends Test
{
	var list : Array<Dynamic>;
	var list2 : Array<Dynamic>;
	function empty() return true;
	function testAbstractEnum() {
		eq(Abstract.getName(), "Abstract");
		var x = Const("foo");
		var s = switch(x) {
			case Const(s): s;
			case Abstract: "null";
		}
		eq("foo", s);
	}

	function testAbstractKeywordAsFunction() {
		t(empty());
	}

	function testList2() {
		list2 = new Array<Dynamic>();
		for( l in list2 ) {} // fails here
		t(true);
	}

	function testList() {
		list = new Array<Dynamic>();
		for( l in list ) {} // fails here
		t(true);
	}

	function testIssue1828() {
		var x = try {
			throw "foo";
		} catch (e:String) {
			true;
		}
		t(x);
	}

	function testIssue1521() {
		var pattern = "$a$b";
		var result = pattern.replace("$a","A").replace("$b","B");
		eq("AB", result);
	}

	function testIssue2146() {
		f(Class2146.test());
	}

	function testStupidShit9000() {
		var f = make();
		f.handle( function() {
			eq("ok", "ok");
		});
	}

	inline static function make():FunctionCallerWrapper {
		return new FunctionCaller(function(f) f());
	}

#if php7

	function testIssue6698() {
		var arr = new NativeAssocArray<Dynamic>();
		var innerArr = new NativeAssocArray<Int>();
		innerArr['one'] = 1;
		innerArr['two'] = 2;
		arr['inner'] = innerArr;

		var obj = Lib.objectOfAssociativeArray(arr);
		var innerObj = obj.inner;
		t(Global.is_object(innerObj));
		eq(1, innerObj.one);
		eq(2, innerObj.two);
	}

	/**
		Check compiler will generate proper function signature with `Ref<T>` arguments
	**/
	function testRef() {
		function modify(i:Ref<Int>) i = 10; //avoid inlining

		var i = 0;
		modify(i);
		eq(i, 10);

		var d = new DummyForRef();
		modify(d.getThis().field);
		eq(d.field, 10);
	}

	/**
		Check compiler will not fuse `Ref<T>` vars
	**/
	// function testRefAsVar() {
	// 	var modify = function(i:Ref<Int>) i = 10;
	// 	var i = 0;
	// 	modify(i);
	// 	t(true);
	// }

	function testAddOrConcat() {
		var result = add(1, 'a');
		eq(result, '1a');

		var result = add('a', 1);
		eq(result, 'a1');

		var result = add('a', 'b');
		eq(result, 'ab');

		var result = add(1, null);
		eq(result, 1);

		var result = add(null, 1);
		eq(result, 1);

		var result = add('a', null);
		eq(result, 'anull');

		var result = add(null, 'b');
		eq(result, 'nullb');
	}
	function add(a:Dynamic, b:Dynamic):Dynamic return a + b;
#end
}

private class DummyForRef {
	public var field:Int = 0;
	public function new() {}
	public function getThis() return this;
}

class Class2146 {
	var array:Array<Class2146>;
	function new() {
		array = new Array<Class2146>();
	}

	public static function test() {
		var a = new Class2146();
		var b = new Class2146();
		var c = new Class2146();
		a.array.push(b);
		b.array.push(a);
		c.array.push(a);
		return Lambda.has(c.array,b);
	}
}

enum Annotation {
	Abstract;
	Const(i:String);
}

private typedef Func = Void->Void;

private abstract FunctionCaller(Func->Void) to Func->Void {
	public function new(f:Func->Void) this = f;
}

private abstract FunctionCallerWrapper( FunctionCaller ) from FunctionCaller to FunctionCaller {
	public inline function handle(callback:Func):Void
		return (this:Func->Void)(callback);
}