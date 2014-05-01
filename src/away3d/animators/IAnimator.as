package away3d.animators
{
	import away3d.core.base.IRenderable;
	import away3d.core.base.SubGeometryBase;
	import away3d.entities.Mesh;

	/**
	 * Provides an interface for animator classes that control animation output from a data set subtype of <code>AnimationSetBase</code>.
	 *
	 * @see away3d.animators.IAnimationSet
	 */
	public interface IAnimator
	{
		/**
		 * Returns the animation data set in use by the animator.
		 */
		function get animationSet():IAnimationSet;
		
		function getRenderableSubGeometry(renderable:IRenderable, sourceSubGeometry:SubGeometryBase):void;

		/**
		 * Used by the mesh object to which the animator is applied, registers the owner for internal use.
		 *
		 * @private
		 */
		function addOwner(mesh:Mesh):void
		
		/**
		 * Used by the mesh object from which the animator is removed, unregisters the owner for internal use.
		 *
		 * @private
		 */
		function removeOwner(mesh:Mesh):void

		/**
		 * Returns a shallow clone (re-using the same IAnimationSet) of this IAnimator.
		 */
		function clone():IAnimator;
		
		function dispose():void;
	}
}
