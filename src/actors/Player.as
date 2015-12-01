package actors 
{
	import utils.Controller;	
	import flash.events.Event;
	/**
	 * ...
	 * @author yanick007
	 */
	public class Player extends Paddle 
	{
		private var controller:Controller;
		private var speed:Number = 0;
		private var _maxSpeed:Number = 15;
		
		public function get maxSpeed():Number
		{
			return _maxSpeed;
		}
		
		public function set maxSpeed(NmaxSpeed:Number):void
		{
			_maxSpeed = NmaxSpeed;
		}
		public function Player() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);		
		}		
		private function init(e:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			controller = new Controller(stage);
			this.addEventListener(Event.ENTER_FRAME, loop);			
		}
		private function loop(e:Event):void 
		{
			if (controller.up)
			{
				//augmenter la vitesse de raquette//
				speed = -_maxSpeed;
			}
			else if(controller.down)
			{
				//diminuer la vitesse de raquette//
				speed = _maxSpeed;
			}else
			{
				if (speed > 0) speed--;
				if (speed < 0) speed++;
				
			}
			if (controller.fire)
			{
				
				
			}
			this.x += speed;
		}
		
	}

}