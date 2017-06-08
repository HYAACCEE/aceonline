var ubox = null;
function createUploadBox(box_id, action, fileObjName, cfun){
  this.action = action;
  this.fileObjName = fileObjName;
  this.cfun = cfun;
  this.box_id = box_id;
  ubox = this;
}
function loadUploadBox_img(scriptData, maxsize){
  loadUploadBox(scriptData, '*.jpg;*.gif;*.jpeg;*.png;*.bmp', maxsize);
}
function loadUploadBox_audio(scriptData, maxsize){
  loadUploadBox(scriptData, '*.mp3;*.wmv;*.rm', maxsize);
}
function loadUploadBox_vidio(scriptData, maxsize){
  loadUploadBox(scriptData, '*.avi;*.wma;*.rm;*.mp4', maxsize);
}
function loadUploadBox_file(scriptData, maxsize){
  loadUploadBox(scriptData, '*.doc;*.xls;*.txt;*.xml;*.rtf', maxsize);
}
function loadUploadBox(scriptData, fileExt, maxsize) {
  document.getElementById(ubox.box_id).innerHTML = '';
  var textObj = document.createElement("span");
  document.getElementById(ubox.box_id).appendChild(textObj);
  textObj.innerHTML = "<input id=uploadify type=file name="+fileObjName+">&nbsp;&nbsp;<span id=status-message></span><div id=custom-queue></div>";
    
  if(ubox){
	    $('#uploadify').uploadify({
	         'uploader'       : '../doc/uploadify.swf',
	         'script'         : ubox.action,
	         'method'         : 'POST',
	         'scriptData'     : scriptData,
	         'fileDataName'   : ubox.fileObjName,
	         'cancelImg'      : '../doc/script/uploadify/cancel.png',
	         'folder'         : '',
	         'sizeLimit'      : maxsize*1024, //设置单个文件大小限制，单位为byte
	         'multi'          : true,
	         'auto'           : false,
	         'fileExt'        : fileExt,//允许的格式
	         'fileDesc'       : '支持格式 ('+fileExt+')', //如果配置了以下的'fileExt'属性，那么这个属性是必须的
	         'queueID'        : 'custom-queue',
	         'queueSizeLimit' : 10,
	         'simUploadLimit' : 10,
	         'removeCompleted': false,
	         'buttonText'     : 'SELECT FILES',         
	         'onSelectOnce'   : function(event,data) {
	               $('#status-message').html(data.filesSelected + ' 个文件准备上传.&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:jQuery(\'#uploadify\').uploadifyUpload()">开始上传</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:jQuery(\'#uploadify\').uploadifyClearQueue()">取消所有上传</a>');
	            },
	         'onAllComplete'  : function(event,data) {
	               $('#status-message').html(data.filesUploaded + ' 个文件上传成功, ' + data.errors + ' 个文件上传错误.&nbsp;&nbsp;<a href="javascript:jQuery(\'#uploadify\').uploadifyClearQueue()">清空</a>');
	               if(ubox.cfun) eval(ubox.cfun);
	            }
	    });
	  }else{
	    alert('请创建ubox！');
	  }
}
