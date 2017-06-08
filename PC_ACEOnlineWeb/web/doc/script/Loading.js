 
var ie5 = (document.all && document.getElementsByTagName);

var step = 0;
function setSB(v, el, inforEl, message) {
  if (ie5 || document.readyState == "complete") {
    filterEl = el.children[0];
    valueEl = el.children[1];
    
    if (filterEl.style.pixelWidth > 0) {
      var filterBackup = filterEl.style.filter;
      filterEl.style.filter = "";
      filterEl.style.filter = filterBackup;
    }
    
    filterEl.style.width = v + "%";
    
    inforEl.innerText = message;
  }
}
function setSBByStep(v, el, inforEl, message) {
  if (ie5 || document.readyState == "complete") {
    step = step + v;
    filterEl = el.children[0];
    valueEl = el.children[1];
    
    if (filterEl.style.pixelWidth > 0) {
      var filterBackup = filterEl.style.filter;
      filterEl.style.filter = "";
      filterEl.style.filter = filterBackup;
    }
    
    filterEl.style.width = step + "%";
    
    inforEl.innerText = message;
  }
}

var arg1="";
var arg2="";
function fakeProgress(v, el,ea) {
  if(v==0){
    arg1=el;
    arg2=ea;
  }
  
  if (v >= 101){
    v=0;
  }
  
  setSB(v, document.all(arg1), document.all(arg2), "数据加载中……");
  window.setTimeout("fakeProgress(" + (v + 1) + ","+arg1+","+arg2+")", 20);
}