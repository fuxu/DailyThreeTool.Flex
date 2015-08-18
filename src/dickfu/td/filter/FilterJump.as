package dickfu.td.filter
{
	import dickfu.td.common.TD;
	
	public class FilterJump extends Filter
	{
		public function FilterJump()
		{
			super();
		}
		
		override public function get name():String {
			return "跨度";
		}
		
		override public function get selection():Array {
			return [0,1,2,3,4,5,6,7,8,9];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.jump) >= 0;
		}
		
	}
}