package dickfu.td.filter
{
	import dickfu.td.common.TD;

	public class FilterSum extends Filter
	{
		public function FilterSum()
		{
			super();
		}
		
		override public function get name():String {
			return "和值";
		}
		
		override public function get selection():Array {
			return ["0","1","2","3","4","5","6","7","8","9",
			"10","11","12","13","14","15","16","17","18","19",
			"20","21","22","23","24","25","26","27"];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.sum) >= 0;
		}
	}
}