package dickfu.td.filter
{
	import dickfu.td.common.TD;
	
	public class Filter
	{
		protected var _selected:Array = [];
		
		public function Filter(){
			for(var i:int = 0; i < selection.length; i++) {
				_selected.push(i);
			}
		}
		// list abstract methods
		public function get selection():Array {	return []; }
		public function get name():String{ return ""; }
		
		public function judge(num:TD):Boolean{ return false; }
		
		// methods
		public function get selected():Array { return _selected; }
		public function reject(i:int):void{
			var idx:int = -1;
			if((idx = _selected.indexOf(i)) >= 0) {
				_selected.splice(idx,1);
			}
		}
		public function select(i:int):void {
			var idx:int = -1
			if((idx = _selected.indexOf(i)) < 0) {
				_selected.push(i);
			}
		}

	}
}