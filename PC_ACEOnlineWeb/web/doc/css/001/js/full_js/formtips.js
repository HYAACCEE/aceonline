/*
 * JTip
 * By Cody Lindley (http://www.codylindley.com)
 * Under an Attribution, Share Alike License
 * JTip is built on top of the very light weight jquery library.
 */

//on page load (as soon as its ready) call JT_init

function ft_init(id, title, hint, width, gatekeeper){
	       $(id)
		   .focus(function(){JT_show(id, title, hint, width, gatekeeper)})
		   .blur(function(){$('#JT').remove()}); 
}

function JT_show(id, title, hint, width, gatekeeper){

	if(title == false)title="&nbsp;";
	var de = document.documentElement;
	if(gatekeeper == 'yes') {
		var w = 540;
	} else {
		var w = self.innerWidth || (de&&de.clientWidth) || document.body.clientWidth;
	}
	var inputId = id.replace("#", "");
	var hasArea = w - getAbsoluteLeft(inputId);
	var clickElementy = getAbsoluteTop(inputId) - 3; //set y position
	
	
	if(gatekeeper == "yes") {
		$("body").append("<div id='JT' class='jt-right' style='width:"+width*1+"px'><div id='JT_arrow_right' style='left:"+((width*1)+1)+"px'></div><div id='JT_close_right'>"+title+"</div><div id='JT_copy'><div class='JT_loader'><div></div></div>");//left side
		var clickElementx = getAbsoluteLeft(inputId) - ((width*1) + 15); //set x position
	} else if(hasArea>((width*1)+75)){
		$("body").append("<div id='JT' class='jt-left' style='width:"+width*1+"px'><div id='JT_arrow_left'></div><div id='JT_close_left'>"+title+"</div><div id='JT_copy'><div class='JT_loader'><div></div></div>");//right side
		var arrowOffset = getElementWidth(inputId) + 10;
		var clickElementx = getAbsoluteLeft(inputId) + arrowOffset; //set x position
	}else{
		$("body").append("<div id='JT' class='jt-right' style='width:"+width*1+"px'><div id='JT_arrow_right' style='left:"+((width*1)+1)+"px'></div><div id='JT_close_right'>"+title+"</div><div id='JT_copy'><div class='JT_loader'><div></div></div>");//left side
		var clickElementx = getAbsoluteLeft(inputId) - ((width*1) + 15); //set x position
	}
	
	$('#JT').css({left: clickElementx+"px", top: clickElementy+"px"});
	$('#JT_copy').html("<p>" + hint + "</p>");
	$('#JT').show();


}

function getElementWidth(objectId) {
	x = document.getElementById(objectId);
	return x.offsetWidth;
}

function getAbsoluteLeft(objectId) {
	// Get an object left position from the upper left viewport corner
	o = document.getElementById(objectId)
	oLeft = o.offsetLeft            // Get left position from the parent object
	while(o.offsetParent!=null) {   // Parse the parent hierarchy up to the document element
		oParent = o.offsetParent    // Get parent object reference
		oLeft += oParent.offsetLeft // Add parent left position
		o = oParent
	}
	return oLeft
}

function getAbsoluteTop(objectId) {
	// Get an object top position from the upper left viewport corner
	o = document.getElementById(objectId)
	oTop = o.offsetTop            // Get top position from the parent object
	while(o.offsetParent!=null) { // Parse the parent hierarchy up to the document element
		oParent = o.offsetParent  // Get parent object reference
		oTop += oParent.offsetTop // Add parent top position
		o = oParent
	}
	return oTop
}
