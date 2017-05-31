# prettify.rb

add_header_proc do
  <<-HTML
	<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js?skin=desert"></script>
	<script type="text/javascript"><!--
	(function() {
	    var addEvent = function() {};
	    if (document.addEventListener) {
	        addEvent = function(node, type, handler) {
	            node.addEventListener(type, handler, false);
	        };
	    }
	    else if (document.attachEvent) {
	        addEvent = function(node, type, handler) {
	            node.attachEvent('on' + type, function(e) {
	                handler.call(node, e || window.event);
	            });
	        };
	    }

	    var highligntClass = 'prettyprint';
	    addEvent(window, 'load', function() {
	        var div = document.getElementsByTagName("div");
	        for (var i=0, len=div.length; i<len; i++) {
	            if(div[i].className !== "body") {
	                continue;
	            }

	            var pre = div[i].getElementsByTagName("pre"),
	                parentNode = null;
	            for(var j=0, plen=pre.length; j<plen; j++) {
	                parentNode = pre[j].parentNode;
	                if ((parentNode && parentNode.className.indexOf("gist-highlight") !== -1) || (parentNode && parentNode.className.indexOf("line-data") !== -1)) {
	                    continue;
	                }

	                pre[j].className = highligntClass;
	            }
	        }

	        PR.prettyPrint();

	        var onNodeInserted = function(e) {
	            var node = e.target,
	                pre = node.getElementsByTagName("pre"),
	                parentNode = null;

	            for (var i=0, len=pre.length; i<len; i++) {
                    parentNode = pre[i].parentNode;
	                if ((parentNode && parentNode.className.indexOf("gist-highlight") !== -1) || (parentNode && parentNode.className.indexOf("line-data") !== -1)) {
	                    continue;
	                }

	                pre[i].className = highligntClass;
	            }

	            if (i > 0) {
	                PR.prettyPrint();
	            }
	        };

	        addEvent(document.body, 'AutoPagerize_DOMNodeInserted', onNodeInserted);
	        addEvent(document.body, 'AutoPatchWork.DOMNodeInserted', onNodeInserted);
	    });
	})();
	// --></script>
	HTML
end
