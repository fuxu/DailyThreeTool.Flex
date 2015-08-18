package dickfu.td.filter
{
	import dickfu.td.common.TD;
	
	public class Filter36B extends Filter
	{
		public function Filter36B()
		{
			super();
		}
		
		override public function get name():String {
			return "组合";
		}
		
		override public function get selection():Array {
			return ["组六" , "组三" , "豹子"];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.val36B) >= 0;
		}
		
	}
}