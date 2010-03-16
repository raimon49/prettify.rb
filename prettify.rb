# prettify.rb

add_header_proc do
  <<-HTML
  <link href="prettify.css" type="text/css" rel="stylesheet" />
  <script type="text/javascript" src="prettify.js"></script>
  <script type="text/javascript"><!--
  function google_prettify(){
    var div=document.getElementsByTagName("div");
    for(var i=0;i<div.length;i++){
      if(div[i].className!="body") continue;
      var pre=div[i].getElementsByTagName("pre");
      for(var j=0;j<pre.length;j++){
        pre[j].className="prettyprint";
      }
    }
    prettyPrint();

    if (document.body.addEventListener) {
        document.body.addEventListener('AutoPagerize_DOMNodeInserted', function(e) {
            var node = e.target;
            var pre = node.getElementsByTagName("pre");

            for (var i=0, len=pre.length; i<len; i++) {
                pre[i].className = "prettyprint";
            }

            if (i > 0) {
                prettyPrint();
            }
        }, 
        false);
    }
  }
  if(window.addEventListener){
    window.addEventListener('load',google_prettify,false);
  }else if(window.attachEvent){
    window.attachEvent('onload',google_prettify);
  }else{
    window.onload=google_prettify;
  }
  // --></script>
  HTML
end
