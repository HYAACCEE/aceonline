
function field_tip_show(id, label){
	$('#field_tip').remove();
	var de = document.documentElement;
	var w = self.innerWidth || (de&&de.clientWidth) || document.body.clientWidth;
	
	ft_top= $("#" + id).offset().top - 23;
	ft_left= $("#" + id).offset().left + 6;
	ft_width= $("#" + id).width() - 15;

	$("body").append("<div id='field_tip' style='width:" + ft_width + "px;'><div id='field_tip_copy'></div></div>");
	$('#field_tip').css({left: ft_left+"px", top: ft_top+"px"});
	$('#field_tip_copy').html(label);
	$('#field_tip').show();


}

