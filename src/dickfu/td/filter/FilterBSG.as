package dickfu.td.filter
{
	import dickfu.td.common.TD;
	
	public class FilterBSG extends Filter
	{
		public function FilterBSG()
		{
			super();
		}
		
		override public function get name():String {
			return "大小组合";
		}
		
		override public function get selection():Array {
			return ["0大3小", "1大2小","2大1小","3大0小"];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.bsg) >= 0;
		}
	}
}