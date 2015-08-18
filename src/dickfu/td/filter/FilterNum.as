package dickfu.td.filter
{
	import dickfu.td.common.TD;

	public class FilterNum extends Filter
	{
		public function FilterNum()
		{
			super();
		}
		
		override public function get name():String {
			return "杀码";
		}
		
		override public function get selection():Array {
			return [0,1,2,3,4,5,6,7,8,9];
		}
		
		override public function judge(num:TD):Boolean {
			return (_selected.indexOf(num.hundreds) >= 0) &&
				(_selected.indexOf(num.tens) >= 0) &&
				(_selected.indexOf(num.units) >= 0);
		}
	}
}