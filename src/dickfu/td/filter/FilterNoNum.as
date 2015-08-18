package dickfu.td.filter
{
	import dickfu.td.common.TD;

	public class FilterNoNum extends Filter
	{
		public function FilterNoNum()
		{
			super();
		}
		
		override public function get name():String {
			return "胆码";
		}
		
		override public function get selection():Array {
			return [0,1,2,3,4,5,6,7,8,9];
		}
		
		override public function judge(num:TD):Boolean {
			return (_selected.indexOf(num.hundreds) >= 0) ||
				(_selected.indexOf(num.tens) >= 0) ||
				(_selected.indexOf(num.units) >= 0);
		}
		
	}
}