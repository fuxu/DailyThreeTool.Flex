package dickfu.td.filter
{
	import dickfu.td.common.TD;
	
	public class FilterSet
	{
		private var _filters:Array;
		public function FilterSet(fs:Array)
		{
			_filters = fs;
		}
		
		public function get filters():Array {
			return _filters;
		}
		
		public function filt(num:TD):Boolean {
			for(var i:int = 0; i < _filters.length; i++) {
				if(!_filters[i].judge(num)) {
					return false;
				}
			}
			return true;
		}
		
		public function select(idx:int, value:int): void {
			_filters[idx].select(value);
		}
		
		public function reject(idx:int, value:int): void {
			_filters[idx].reject(value);
		}
	}
}