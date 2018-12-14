chrome.runtime.onMessage.addListener(function(msg, sender, sendResponse) {
	Array.prototype.slice.call(document.getElementsByTagName("img")).forEach(function(el){ el.remove(); });
	Array.prototype.slice.call(document.getElementsByTagName("iframe")).forEach(function(el_ifm){
		if(!!el_ifm.id  && el_ifm.id.indexOf("aswift")  >= 0) el_ifm.remove();
		if(!!el_ifm.src && el_ifm.src.indexOf("amazon") >= 0) el_ifm.remove();
	});
});