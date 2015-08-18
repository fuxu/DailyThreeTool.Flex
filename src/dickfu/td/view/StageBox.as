package dickfu.td.view
{
	import dickfu.td.common.ResSet;
	import dickfu.td.common.ResType;
	import dickfu.td.filter.*;
	
	import mx.containers.Canvas;
	import mx.containers.HDividedBox;
	import mx.containers.Panel;
	import mx.containers.VBox;
	import mx.controls.TextArea;

	public class StageBox extends HDividedBox
	{
		private var _filter:VBox = new VBox();
		private var _result:Panel = new Panel();
		private var _resText:TextArea = new TextArea();
		private var _fs:FilterSet;
		private var _rs:Array;
		
		public function StageBox(type:int)
		{
			super();
			percentHeight = 100; percentWidth  = 100;
			var c:Canvas = new Canvas();
			var fs:Array = [];
			c.percentWidth        =  10; c.percentHeight        = 100;
			_filter.percentWidth  =  90; _filter.percentHeight  = 100;
			_result.percentWidth  =  70; _result.percentHeight  = 100;
			_resText.percentWidth = 100; _resText.percentHeight = 100;
			_result.addChild(_resText);
			_filter.setStyle("horizontalCenter", 0);
			_filter.setStyle("verticalGap", 10);
			switch(type) {
				case ResType.GROUP :
				label = "组选";
				_rs = ResSet.GROUP;
				fs.push(new FilterBSG(), new FilterOEG(), new FilterJump(),
						new FilterSum(), new FilterRSF(), new FilterNum(),
						new FilterNoNum(), new Filter36B());
				break;
				case ResType.DIRECT :
				default :
				label = "单选";
				_rs = ResSet.DIRECT;
				fs.push(new FilterBS(), new FilterOE(), new FilterJump(),
						new FilterSum(), new FilterRSF(), new FilterNum(),
						new FilterNoNum(), new Filter36B() );
			}
			_fs = new FilterSet(fs);
			for(var i:int = 0; i < fs.length; i++) {
				_filter.addChild(new FilterPanel(fs[i],i));
			}
			c.addChild(_filter);
			addChild(c);addChild(_result);
			
			result = _rs;
		}
		
		public function set result(res: Array):void {
			_result.title = "结果 : (共 " + res.length + " 组)";
			_resText.text = res.join("\t");
			/*
			for(var t:String in res) {
				var l:Label = new Label();
				l.text = t;
				_resText.addChild(l);
			}
			*/
		}
		
		public function get filterSet():FilterSet {
			return _fs;
		}
		
		public function refresh():void {
			var res:Array = [];
			for(var i:int = 0; i < _rs.length; i++) {
				if(_fs.filt(_rs[i])) {
					res.push(_rs[i]);
				}
			}
			result = res;
		}
	}
}