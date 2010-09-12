# prettify.rb

add_header_proc do
  <<-HTML
	<link href="prettify.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="prettify.js"></script>
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
	            if(div[i].className !== "body") continue;

	            var pre = div[i].getElementsByTagName("pre");
	            for(var j=0, plen=pre.length; j<plen; j++) {
	                pre[j].className = highligntClass;
	            }
	        }

	        prettyPrint();

            var onNodeInserted = function(e) {
	            var node = e.target;
	            var pre = node.getElementsByTagName("pre");
	
	            for (var i=0, len=pre.length; i<len; i++) {
	                pre[i].className = highligntClass;
	            }
	
	            if (i > 0) {
	                prettyPrint();
	            }
            };

	        addEvent(document.body, 'AutoPagerize_DOMNodeInserted', onNodeInserted);
	        addEvent(document.body, 'AutoPatchWork.DOMNodeInserted', onNodeInserted);
	    });
	})();
	// --></script>
	HTML
end
