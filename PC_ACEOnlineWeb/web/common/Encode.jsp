<script language="vbscript">
Function rsB(vIn)
  rsB = MidB(vIn,1)
End Function

Function rsChar(vIn)
  rsChar = Chr(vIn)
End Function
</script>

<script language="javascript">
//for DynaXmlHttp.GetResponseBody
function enCode(b){
  var glbEncode=new Array();
  var t=rsB(b);
  t=escape(t).replace(/%u/g,"").replace(/(.{2})(.{2})/g,"%$2%$1").replace(/%([A-Z].)%(.{2})/g,"@$1$2");
  t=t.split("@");
  var i=0,j=t.length,k;
  while(++i<j)
  {
  k=t[i].substring(0,4);
  if(!glbEncode[k])glbEncode[k]=escape(rsChar(eval("0x"+k))).substring(1,6);
  t[i]=glbEncode[k]+t[i].substring(4);
  }
  return unescape(t.join("%"));
}
</script>