package dickfu.td.filter
{
	import dickfu.td.common.TD;

	public class FilterOE extends Filter
	{
		public function FilterOE()
		{
			super();
		}
		
		override public function get name():String {
			return "奇偶组合";
		}
		
		override public function get selection():Array {
			return ["偶偶偶","偶偶奇","偶奇偶","偶奇奇","奇偶偶","奇偶奇","奇奇偶","奇奇奇"];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.oe) >= 0;
		}
		
	}
}