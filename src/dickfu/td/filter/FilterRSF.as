package dickfu.td.filter
{
	import dickfu.td.common.TD;

	public class FilterRSF extends Filter
	{
		public function FilterRSF()
		{
			super();
		}
		
		override public function get name():String {
			return "复隔中";
		}
		
		override public function get selection():Array {
			return ["003", "012","021","030","102","111","120","201","210","300"];
		}
		
		override public function judge(num:TD):Boolean {
			return _selected.indexOf(num.rsf) >= 0;
		}
	}
}