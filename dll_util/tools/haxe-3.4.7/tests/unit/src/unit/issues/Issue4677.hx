package unit.issues;

class Issue4677 extends Test {
	function test() {
		var x = switch ("foo") {
			case _1: _1;
		}
		eq("foo", x);
	}
}