package dickfu.td.common
{
	import flash.utils.Dictionary;
	
	public class TD
	{
		private static var _rsfMap:Dictionary = RSFMap.getInstance().getMap();
		private static var _rsfSet:RSFSet = RSFSet.getInstance();
		
		private static function odd(num:int):int {
			return num % 2 == 0 ? 0 : 1;
		}
		
		private static function big(num:int):int {
			return num > 4 ? 1 : 0;
		}
		
		private static function cal36b(h:int, t:int, u:int):int {
			var c:int = 0;
			if(h == t) { c++; }
			if(t == u) { c++; }
			if(h == u) { c += (h == t) ? 0 : 1 ; }
			return c;
		}
		
		private var _value:int;
		private var _hundreds:int;
		private var _tens:int;
		private var _units:int;
		private var _sum:int;
		private var _bs:int;
		private var _bsg:int;
		private var _min:int;
		private var _max:int;
		private var _jump:int;
		private var _rsf:int;
		private var _oe:int;
		private var _oeg:int;
		private var _36b:int;
		
		public function TD(num:int)		
		{
			_value = num;
			_hundreds = Math.floor(num/100);
			_tens = Math.floor(num/10)%10;
			_units = num%10;
			_sum = _hundreds + _tens + _units;
			_max = Math.max(_hundreds, _tens, _units);
			_min = Math.min(_hundreds, _tens, _units);
			_jump = _max - _min;
			_bs = big(_hundreds) * 4 + big(_tens) * 2 + big(_units);
			_bsg = big(_hundreds) + big(_tens) + big(_units);
			_oe = odd(_hundreds) * 4 + odd(_tens) * 2 + odd(_units);
			_oeg = odd(_hundreds) + odd(_tens) + odd(_units);
			_36b = cal36b(_hundreds, _tens, _units);
		}
		
		public function get val36B():int { return _36b; }
		public function get value():int { return _value; }
		public function get sum():int { return _sum; }
		public function get min():int { return _min; }
		public function get max():int { return _max; }
		public function get jump():int { return _jump; }
		public function get bs():int { return _bs; }
		public function get bsg():int { return _bsg; }
		public function get oe():int { return _oe; }
		public function get oeg():int { return _oeg; }
		public function get hundreds():int { return _hundreds; }
		public function get tens():int { return _tens; }
		public function get units():int { return _units; }
		public function get rsf():int {
			var r:Array = _rsfSet.repeated,s:Array = _rsfSet.separated,f:Array = _rsfSet.final;
			var rsfNum:int = 0;
			rsfNum += r.indexOf(_hundreds)>=0?100:0;
			rsfNum += r.indexOf(_tens)>=0?100:0;
			rsfNum += r.indexOf(_units)>=0?100:0;
			rsfNum += s.indexOf(_hundreds)>=0?10:0;
			rsfNum += s.indexOf(_tens)>=0?10:0;
			rsfNum += s.indexOf(_units)>=0?10:0;
			rsfNum += f.indexOf(_hundreds)>=0?1:0;
			rsfNum += f.indexOf(_tens)>=0?1:0;
			rsfNum += f.indexOf(_units)>=0?1:0;
			_rsf = _rsfMap[rsfNum];
			return _rsf;
		}
		
		public function toString():String {
			return "" + _hundreds + _tens + _units;
		}

	}
}