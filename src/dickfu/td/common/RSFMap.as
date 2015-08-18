package dickfu.td.common
{
	import flash.utils.Dictionary;
	public class RSFMap
	{
		private static var _rsfMap:Dictionary = new Dictionary();
		private static var _instance:RSFMap = new RSFMap();
		public function RSFMap()
		{
			_rsfMap[3]   = 0;
			_rsfMap[12]  = 1;
			_rsfMap[21]  = 2;
			_rsfMap[30]  = 3;
			_rsfMap[102] = 4;
			_rsfMap[111] = 5;
			_rsfMap[120] = 6;
			_rsfMap[201] = 7;
			_rsfMap[210] = 8;
			_rsfMap[300] = 9;
		}
		
		public static function getInstance():RSFMap {
			return _instance;
		}
		
		public function getMap():Dictionary {
			return _rsfMap;
		}

	}
}