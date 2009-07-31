/*
 * Copyright (c) 2009 the original author or authors
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package org.robotlegs.mvcs
{
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	import org.robotlegs.core.IEventBroadcaster;
	
	/**
	 * Default MVCS <code>IEventBroadcaster</code> implementation
	 */
	public class EventBroadcaster implements IEventBroadcaster
	{
		
		/**
		 * Internal
		 * The <code>IEventDispatcher</code> that we are wrapping
		 */
		protected var eventDispatcher:IEventDispatcher;
		
		/**
		 * A one-way <code>IEventDispatcher</code> wrapper
		 * This is useful for contextual actors who should never listen for events but need to dispatch them
		 * @param eventDispatcher The <code>IEventDispatcher</code> to wrap
		 */
		public function EventBroadcaster(eventDispatcher:IEventDispatcher)
		{
			this.eventDispatcher = eventDispatcher;
		}
		
		/**
		 * Dispatch an <code>Event</code>
		 * @param event The <code>Event</code> to dispatch
		 * @return
		 */
		public function dispatchEvent(event:Event):Boolean
		{
			return eventDispatcher.dispatchEvent(event);
		}
	
	}
}