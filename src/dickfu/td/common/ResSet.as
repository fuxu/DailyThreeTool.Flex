package dickfu.td.common
{
	public class ResSet
	{
		private static var _res:Array = [[],[]];
		
		public static function get DIRECT():Array {
			if(_res[ResType.DIRECT].length == 0) {
				for(var i:int = 0; i < 1000; i++) {
					_res[ResType.DIRECT].push(new TD(i));
				}
			}
			return _res[ResType.DIRECT];
		}
		
		public static function get GROUP(): Array {
			if(_res[ResType.GROUP].length == 0) {
				for(var a:int = 0; a < 10; a++) {
					for(var b:int = a; b < 10; b++) {
						for(var c:int = b; c < 10; c++) {
							_res[ResType.GROUP].push(new TD(a * 100 + b * 10 + c));
						}
					}
				}
			}
			return _res[ResType.GROUP];
		}
	}
}