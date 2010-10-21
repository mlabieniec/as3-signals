package org.osflash.signals.natives.sets {
	import org.osflash.signals.natives.NativeSignal;

	import flash.events.AsyncErrorEvent;
	import flash.events.IOErrorEvent;
	import flash.events.NetStatusEvent;
	import flash.net.NetStream;

	/**
	 * @author Jon Adams
	 */
	public class NetStreamSignalSet extends EventDispatcherSignalSet {

		public var asyncError:NativeSignal;
		public var ioError:NativeSignal;
		public var netStatus:NativeSignal;

		public function NetStreamSignalSet(target:NetStream) {
			super(target);
			_signals.push(asyncError = new NativeSignal(target, AsyncErrorEvent.ASYNC_ERROR, AsyncErrorEvent));
		}
	}
}