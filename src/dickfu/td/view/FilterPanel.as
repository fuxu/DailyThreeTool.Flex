package dickfu.td.view
{
	import dickfu.td.filter.Filter;
	
	import flash.display.DisplayObject;
	import flash.events.Event;
	
	import mx.containers.Panel;
	import mx.controls.CheckBox;

	public class FilterPanel extends Panel
	{
		private var _filter:Filter;
		private var _container:DBox = new DBox();
		private var _boxes:Array = [];
		private var _idx:int = 0;
		
		public function FilterPanel(f:Filter, idx:int)
		{
			super();
			title = f.name;
			percentWidth = 100;
			_filter = f;
			_container.percentWidth = 100;
			_idx = idx;
			for(var i:int = 0; i<_filter.selection.length; i++) {
				var box:CheckBox = new CheckBox();
				box.label = _filter.selection[i];
				//box.styleName = "glass";
				box.selected = ( _filter.selected.indexOf(i) >= 0 );
				box.addEventListener(Event.CHANGE, function(e:Event):void{
					var index:int = e.currentTarget.parent.getChildIndex(e.currentTarget);
					var stage:StageBox = e.currentTarget.parent.parent.parent.parent.parent;
					if(e.currentTarget.selected) {
						stage.filterSet.select(idx, index);
					} else {
						stage.filterSet.reject(idx,index);
					}
					stage.refresh();
				});
				_container.addChild(box);
				_boxes.push(box);
			}
			addChild(_container);
		}
		
		public function get boxes():Array {
			return _boxes;
		}
	}
}