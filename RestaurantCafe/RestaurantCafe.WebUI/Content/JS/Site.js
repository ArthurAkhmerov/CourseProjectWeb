var Site={init:function(){if(!window.DOMIsReady){setTimeout(function(){Site.init()},100);return}
if((this.pm=document.getElementById('bnrCnt'))&&this.pm.childNodes.length>1){this.pn=1;setInterval(function(){if(Site.po){Site.po=false;return}
Site.showBanner()},8000)}
if((this.pp=document.getElementById('quoteBnrCnt'))&&this.pp.childNodes.length>1){this.pq=1;setInterval(function(){if(Site.pr){Site.pr=false;return}
Site.showqBanner()},10000)}},pn:1,showBanner:function(a,b){if(!this.pm){return}
document.getElementById('bnr'+this.pn).className='';if(a){this.pn=a;this.po=true}else{a=this.pn+(b||1);if(b){this.po=true}}
a--;var d=936,c=-1*d*a;if(c<(this.pm.offsetWidth-d)*-1){c=a=0}else if(c>0){c=(this.pm.offsetWidth-d)*-1;a=this.pm.getElementsByTagName('a').length-1}
document.getElementById('bnr'+(this.pn=a+1)).className='current';this.pm.style.left=c+'px'},pq:1,showqBanner:function(a){if(!this.pp){return}
this.pr=!!a;if(!a){a=1}
var d=this.pq+(a||1);d--;var c=472,b=-1*c*d;if(b<(this.pp.offsetWidth-c)*-1){b=d=0}else if(b>0){b=(this.pp.offsetWidth-c)*-1;d=this.pp.getElementsByTagName('a').length-1}
this.pq=d+1;this.pp.style.left=b+'px'},showPhoto:function(a){var b=document.getElementById('photo');if(b){if(!this.ps){this.ps=document.getElementById('photos').getElementsByTagName('a')[0]}
if(!a){a=this.ps.nextSibling;if(!a){a=document.getElementById('photos').getElementsByTagName('a')[0]}}
this.ps.className='image';a.className='image current';this.ps=a;b.src=a.href}},scrollPhotos:function(a){var e=document.getElementById('photos');if(!e){return}
var d,c=e.offsetWidth,b=document.getElementById('photo').offsetWidth,f=e.offsetLeft+b*a*-1;if(a==-1){f+=40}
if(a==1){if(f+c<b){f=(c-b-20)*-1;if(f==e.offsetLeft+20){f=0}}}else if(f>0){f=0;if(f==e.offsetLeft+20){f=(c-b-20)*-1}}
e.style.left=f+'px'},showHall:function(a){window.collection['hall_id'].bS(a);var b;if(b=document.getElementById('hallsChooseTitle')){b.style.display='none'}
if(b=document.getElementById('hallStep3')){b.style.display='none';if(b=document.getElementById('hallOrderTitle')){b.style.display='none'}}
if(b=document.getElementById('hallImage'+a)){if(this.pt){if(b=document.getElementById('hallButton'+this.pt)){b.className='buttonHref'}
if(b=document.getElementById('hallImage'+this.pt)){b.style.display='none'}}
if(b=document.getElementById('hallButton'+a)){b.className='buttonHref current'}
if(b=document.getElementById('hallImage'+a)){b.style.display='block'}
if(b=document.getElementById('hallMap')){b.style.display='block'}
this.pt=a}},hoverTable:function(a,b){var c=document.getElementById('table'+a);if(!b.onmouseout){b.onmouseout=function(){c.style.display=''}}
c.style.display='block'},chooseTable:function(a,b,c){window.collection['table_id'].bS(a);var d;if(d=document.getElementById('hallOrderTitle')){d.innerHTML='Столик №'+b+' (на '+c+' '+bd(c,['человека','человека','человек'])+')';d.style.display='block'}
if(d=document.getElementById('hallMap')){d.style.display='none'}
if(d=document.getElementById('hallStep3')){d.style.display='block'}
this.pu=a}};Site.init();