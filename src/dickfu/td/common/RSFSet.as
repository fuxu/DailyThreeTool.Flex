package dickfu.td.common
{
	public class RSFSet
	{
		private static var _instance:RSFSet = new RSFSet();
		private var _repeatedNum:Array = [0,1,2];
		private var _separatedNum:Array = [3,4,5];
		private var _finalNum:Array = [6,7,8,9];
		public function RSFSet(){}
				
		public static function getInstance():RSFSet {
			return _instance;
		}
		
		public function test(r:Array, s:Array, f:Array):Boolean {
			var t:Array = [0,1,2,3,4,5,6,7,8,9];
			var tTest:Array = [false, false, false, false, false, false, false, false, false, false];
			if(r.length + s.length + f.length == 10) {
				for(var i:int; i<t.length; i++) {
					if(r.indexOf(t[i])>=0) {tTest[i] = true;}
					if(!tTest[i] && s.indexOf(t[i])>=0) {tTest[i] = true;}
					if(!tTest[i] && f.indexOf(t[i])>=0) {tTest[i] = true;}
				}
			}
			return tTest.indexOf(false) >= 0 ? false : true;
		}
		
		public function assign(r:Array, s:Array, f:Array):Boolean {
			if(!this.test(r, s, f)) return false;
			_repeatedNum = r;
			_separatedNum = s;
			_finalNum = f;
			return true;
		}
		
		public function get repeated():Array { return _repeatedNum; }
		public function get separated():Array { return _separatedNum; }
		public function get final():Array { return _finalNum; }
	}
}