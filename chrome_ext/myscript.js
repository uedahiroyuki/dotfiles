// document.body.addEventListener("contextmenu",function(e){
//     if(e.altKey){
//         history.forward();
//         return false;
//     }
// });

// document.body.addEventListener("click", function (e) {
//     if(e.altKey){
//         history.back();
//     }
// });

if(chrome && chrome.runtime)
{
	window.addEventListener('mousewheel', function(e) {
		if (e.buttons == 2) {
			if (e.wheelDelta /120 > 0) {
					chrome.runtime.sendMessage('up');	
			}
			else {
				chrome.runtime.sendMessage('down');
			}
			e.preventDefault();
		}
		if (e.altKey) {
			if (e.wheelDelta /120 > 0) {
				//alert(document.body.scrollTop);
				window.scrollTo(0,(document.body.scrollTop - 300)); 
			}
			else {
				//alert(document.body.scrollTop);
				window.scrollTo(0,(document.body.scrollTop + 300)); 
			}
			e.preventDefault();
		}
	});

	window.addEventListener("contextmenu",function(e){
	    if(e.altKey){
	        history.forward();
	        return false;
	    }
	});

	window.addEventListener("click", function (e) {
	    if(e.altKey){
	    	history.back();
	    	close();



	    }
	});

	var watchMap = {
	    add: function(k){
	        watchMap[k] = Date.now();
	    },
	    contains500ms: function(k) {
	        var v = watchMap[k];
	        if (!v) {
	            return false;
	        }
	        return v >= Date.now() - 500;
	    },
	};

function fireKey(el)
{
    //Set key to corresponding code. This one is set to the left arrow key.
    var key = 37;
    if(document.createEventObject)
    {
        var eventObj = document.createEventObject();
        eventObj.keyCode = key;
        el.fireEvent("onkeydown", eventObj);   
    }else if(document.createEvent)
    {
        var eventObj = document.createEvent("Events");
        eventObj.initEvent("keydown", true, true);
        eventObj.which = key;
        el.dispatchEvent(eventObj);
    }
}

	window.addEventListener("keypress", function(e){
	    var key = String.fromCharCode(e.keyCode);
    	if(key == 'j'){
    		window.scrollBy(0,50);
    	} else if(key == 'k') {
    		window.scrollBy(0,-50);
    	} else if(key == 'l') {
        	window.scrollBy(50,0);
        	//e.preventDefault();
        	//this.dispatchEvent(new KeyboardEvent('keydown',{'key':'ArrowRight'}));
	    } else if(key == 'h') {
	        window.scrollBy(-50,0);
	        //e.preventDefault();
        	//this.dispatchEvent(new KeyboardEvent('keydown',{'key':'ArrowLeft'}));
	    } else if(key == 'G') {
	            window.scrollTo(window.pageXOffset,document.body.scrollHeight);
	    } else if(key == 'g') {
	        if (watchMap.contains500ms('g')){
	            window.scrollTo(window.pageXOffset,0);
	            delete watchMap['g'];
	        } else {
	            watchMap.add('g') 
	        }
	    } else {

	    //alert(key +"ad");
	    }
	})

    function preventOneContextMenuEvent(e) {
        e.preventDefault();
        window.removeEventListener('contextmenu', preventOneContextMenuEvent);
    }
}
