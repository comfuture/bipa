package tutorial
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	/**
	 * XML 파일을 읽어들이는 예제
	 */
	public class ReadingXML
	{
		public function ReadingXML()
		{
			var loader:URLLoader = new URLLoader();
			var request:URLRequest = new URLRequest("asset/test.xml");
			loader.addEventListener(Event.COMPLETE, onXMLLoad);
			loader.load(request);
		}
		
		private function onXMLLoad(event:Event):void
		{
			var loader:URLLoader = URLLoader(event.target);
			trace(loader.data);
		}
	}
}