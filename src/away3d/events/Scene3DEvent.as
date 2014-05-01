package away3d.events
{
	import away3d.containers.ObjectContainer3D;
	import away3d.core.base.Object3D;

	import flash.events.Event;
	
	public class Scene3DEvent extends Event
	{
		public static const ADDED_TO_SCENE:String = "addedToScene";
		public static const REMOVED_FROM_SCENE:String = "removedFromScene";
		public static const PARTITION_CHANGED:String = "partitionChanged";
		
		public var object3d:Object3D;
		
		override public function get target():Object
		{
			return object3d;
		}
		
		public function Scene3DEvent(type:String, object3d:Object3D)
		{
			this.object3d = object3d;
			super(type);
		}
		
		public override function clone():Event
		{
			return new Scene3DEvent(type, object3d);
		}
	}
}
