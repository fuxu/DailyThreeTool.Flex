package dickfu.td.filter
{
	import dickfu.td.common.TD;
	
	public class FilterBS extends Filter
	{
		public function FilterBS()
		{
			super();
		}
		
		override public function get name():String {
			return "大小组合";
		} 
		
		override public function get selection():Array {
			return ["小小小" , "小小大" , "小大小" , "小大大" , "大小小" , "大小大" , "大大小" , "大大大"];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.bs) >= 0;
		}
	}
}