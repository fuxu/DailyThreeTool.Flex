package dickfu.td.filter
{
	import dickfu.td.common.TD;

	public class FilterOEG extends Filter
	{
		public function FilterOEG()
		{
			super();
		}
		
		override public function get name():String {
			return "奇偶组合";
		}
		
		override public function get selection():Array {
			return ["0奇3偶", "1奇2偶","2奇1偶","3奇0偶"];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.oeg) >= 0;
		}
		
	}
}