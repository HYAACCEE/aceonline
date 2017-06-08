/* Custom jQuery initializations used on the site */

$(document).ready(function() {

	window.equalHeight = function equalHeight(clear){

		if(clear == 'yes') {
			$("#main>div").removeAttr("style");
		}
		
		var heightArray = $("#main>div").map( function(){
			return  $(this).height();
		}).get();
		var maxHeight = Math.max.apply( Math, heightArray);
		
		$("#left-nav-container").height(maxHeight);
		$("#page-content-container").height(maxHeight);

	}
	
	window.tabHeight = function tabHeight(clear){
		if(clear == 'yes') {
			$("#main>div").removeAttr("style");
		}
		
		maxHeight = $('#partner-tabs').height() + 150;
		$("#left-nav-container").height(maxHeight);
		$("#page-content-container").height(maxHeight);
	}
	
	window.videoHeight = function videoHeight(clear){
		if(clear == 'yes') {
			$("#main>div").removeAttr("style");
		}
		
		maxHeight = $('#videos').height() + 450;
		$("#left-nav-container").height(maxHeight);
		$("#page-content-container").height(maxHeight);

	}
	
	window.softwareHeight = function videoHeight(clear, existHeight){
		if(clear == 'yes') {
			$("#main>div").removeAttr("style");
		}
		maxHeight = $('#software-desc').height() + existHeight;
		$("#left-nav-container").height(maxHeight);
		$("#page-content-container").height(maxHeight);
	}
	
	
	
	
	window.homePanelHeight = function homePanelHeight(clear){
		if(clear == 'yes') {
			$("#main>div").removeAttr("style");
		}
		
		eventsHeight = $('#home-news-events').height();
		videoHeight = $('#home-video-customers').height();
		
		if(eventsHeight < videoHeight) {
			heightDiff = videoHeight - eventsHeight;
			$('#home-events').height( $('#home-events').height() + heightDiff);
		}
		
		if(videoHeight < eventsHeight) {
			heightDiff =  eventsHeight - videoHeight;
			$('#home-video-customers').height( $('#home-video-customers').height() + heightDiff);
		}
		
		
		// alert(eventsHeight + ' ' + videoHeight);

	

	}
	
	
	
	function setHomePanelWidth() {
		$('#s1').css('width', $(window).width());
		$('.home-panel').css('width', $(window).width());
		$('#frameNav').css('left', $(window).width()/2 + 'px');
	}
	
	window.pagerHighlightPanelNav = function pagerHighlightPanelNav(whichNav){
		
		$('#frameNav').children('div').each(function(i) {
			if(i != whichNav) {
				$(this).removeClass('activeSlide');
			} else {
				$(this).addClass('activeSlide');
			}
		});
	}
		
	window.transitionHighlightPanelNav = function transitionHighlightPanelNav(){
		var whichPanel = this;
		$('#frameNav').children('div').each(function(i) {
			if($(whichPanel).index() != i) {
				$(this).removeClass('activeSlide');
			} else {
				$(this).addClass('activeSlide');
			}
		});

	}
		

	 
	equalHeight('no');
	
	var bc = $('#home-panel-container'); 
	var controler = $('#frameNav');
	var $container = $("#s1")
	.cycle(
		{ 
			fx:      'scrollDown', 
			next:   '#right',
			timeout: 9000,
			after: transitionHighlightPanelNav
		}
	);
	$('<div id="frameNav">').appendTo(bc);
	$container.children().each(function(i) { 
  // create input 
  $('#frameNav').append('<div onMouseOver="this.style.cursor=\'pointer\';" onMouseOut="this.style.cursor=\'default\';" onClick="$(\'#s1\').cycle(' + i + '); pagerHighlightPanelNav(' + i + '); return false;">' + i + '</div>');
	});
	$("#frameNav > div:last-child").css('margin-right', '20px');
	$('</div>').appendTo(bc); 
	pagerHighlightPanelNav(0);
	$("#slideshow").cycle(
		{ 
			fx:     'fade', 
	    speed:   300, 
	    timeout: 3000
		}
	);
			
	if($('.home-panel').length != 0) {
		setHomePanelWidth();
	}
	
	$(window).resize(function() {
		if($('.home-panel').length != 0) {
			setHomePanelWidth();
		}
	});

	// Initiate uniform
	if ( !($.browser.msie && $.browser.version == 7.0) ){
		$("select, input:checkbox, input:radio, input:file, input:submit, input:button").uniform();
	}
	
	// Initiate scroll to top of page images
	$('img.return-to-top').click(function() {
		$('html, body').animate({ scrollTop: 0 }, 'slow');
  });
    
  // Initiate scroll to top of faq questions images
	$('img.return-to-faq').click(function() {
		$('html, body').animate({ scrollTop: $("#faqs").offset().top }, 'slow');
  });
    
  // Initiate gatekeeper modal window
  	$("#modalIframeId").attr("src","/gatekeeper_blank");
		$("#gatekeeper-dialog").dialog({
			autoOpen: false,
			modal: true,
			closeOnEscape: true, 
			draggable: false,
			resizable: false,
			dialogClass: 'no-close',
			width:600,
			height:515,
			title: 'WildPackets Download',
			close: function() {
				$( "#gatekeeper-dialog" ).dialog( "option", "width", 600 );
				$( "#gatekeeper-dialog" ).dialog( "option", "height", 515 );
				$("#modalIframeId").attr("src","/gatekeeper_blank");
				return false;
			}
	  });
	  
	  // Initiate MyPeek gatekeeper modal window
  	$("#modalIframeMyPeek").attr("src","/gatekeeper/gatekeeper_blank.php");
		$("#gatekeeper-mypeek-dialog").dialog({
			autoOpen: false,
			modal: true,
			closeOnEscape: true, 
			draggable: false,
			resizable: false,
			dialogClass: 'no-close',
			width:600,
			height:515,
			title: 'WildPackets Download',
			close: function() {
				$( "#gatekeeper-mypeek-dialog" ).dialog( "option", "width", 600 );
				$( "#gatekeeper-mypeek-dialog" ).dialog( "option", "height", 515 );
				$("#modalIframeMyPeek").attr("src","/gatekeeper/gatekeeper_blank.php");
				return false;
			}
	  });
	  
	  $("#store-processing-dialog").dialog({
			autoOpen: false,
			modal: true,
			closeOnEscape: false, 
			draggable: false,
			resizable: false,
			width:100,
			height:110,
			title: 'Processing Order'
  });
  
  	$('#store-overlay').click(function() {
			$( "#store-processing-dialog" ).dialog( "open" );
			$( 'a.ui-dialog-titlebar-close' ).remove();
	  });
	  
	  
	  // Initiate login box display functionality - Click
	  $("#login-link").click(function() {
	  	var sectionId = $(this).attr("id");
	  	$("#login-box").css("display", 'block');
	  });
	  
	  // Initiate login box hide functionality - Click
	  $("#login-close-link").click(function() {
	  	var sectionId = $(this).attr("id");
	  	$("#login-box").css("display", 'none');
	  });
		
		// Initiate the functionality to toggle field name/blank value in a form field text box
		$("input:text").focus(function() {
			if(!$(this).hasClass('login')) {
				if($(this).attr("value") == '' || $(this).attr("value") == $(this).attr("data-label")) {
					$(this).attr("value", '');
					$(this).css("color", '#000000');
					if($(this).attr('id') != "recaptcha_response_field" && $(this).attr('id') != "mypeek-phone") {
						field_tip_show($(this).attr('id'), $(this).attr("data-label"));
					}
				}
			}
		});
		
		// Initiate the functionality to toggle blank/field name value in a form field text box if no value is entered
		$("input:text").blur(function() {
			if(!$(this).hasClass('login')) {
				if($(this).attr("value") == '') {
					$(this).attr("value", $(this).attr("data-label"));
					$(this).css("color", '#bbbbbb');
				}
				if($(this).attr('id') != "recaptcha_response_field") {
					$('#field_tip').remove();
				}

			}
		});
		
		// Initiate the functionality to toggle visibility of the state pull down menu based on country menu change
		$("#country").change(function() {
			if($("#state_cell").length > 0) {
				if($(this).attr("value") == 'US' || $(this).attr("value") == 'CA') {
					$("#state_cell").css("display", 'block');
				} else {
					$("#state_cell").css("display", 'none');
				}
			}
		});
		
		// Initiate the functionality to toggle visibility of the state pull down menu on page load
		if($("#country").length > 0) {
			if($("#country").attr("value") == 'US' || $("#country").attr("value") == 'CA') {
				if($("#state_cell").length > 0) {
					if($("#country").attr("value") == 'US' || $("#country").attr("value") == 'CA') {
						$("#state_cell").css("display", 'block');
					} else {
						$("#state_cell").css("display", 'none');
					}
				}
			}
		}
		
		// Initiate phone field tip if needed
		if($("#phone").length > 0) {

			var phoneHint = "<b>United States &amp; Canada</b><br />";
			phoneHint += "123-456-7890<br />";
			phoneHint += "123-456-7890 x4321<br />";
			phoneHint += "<b>International</b><br />";
			phoneHint += "+CC(1-3 digits)  Number(6-14 digits)<br />";
			if($("#gatekeeper").length > 0) {
				ft_init('#phone', 'Phone Number Format', phoneHint, 200, 'yes');
			} else {
				ft_init('#phone', 'Phone Number Format', phoneHint, 200, 'no');
			}
		}
		
		if($("#mypeek-phone").length > 0) {

			var phoneHint = "<b>United States &amp; Canada</b><br />";
			phoneHint += "123-456-7890<br />";
			phoneHint += "123-456-7890 x4321<br />";
			phoneHint += "<b>International</b><br />";
			phoneHint += "+CC(1-3 digits)  Number(6-14 digits)<br />";
			if($("#gatekeeper").length > 0) {
				ft_init('#mypeek-phone', 'Phone Number Format', phoneHint, 200, 'yes');
			} else {
				ft_init('#mypeek-phone', 'Phone Number Format', phoneHint, 200, 'no');
			}
		}
		
		
		// Initiate the functionality to for download buttons
		$("#download_button").click(function() {
			if($(this).attr("data-server") == "products") {
				window.open($(this).attr("data-url"), '_blank');
			} else {
				window.open('http://www.wildpackets.com' + $(this).attr("data-label"), '_blank');
			}
		});
		
		$('span.helpful-hint').cluetip({splitTitle: '|'});
		
		// Pirobox initialization
		$().piroBox_ext({
			piro_speed : 700,
			bg_alpha : 0.4,
			piro_scroll : true
		});
		
		$(function() {
			$( "#tabs" ).tabs();
		});
		
		$(function() {
			$( "#partner-tabs" ).tabs();
		});
		
		$( "#partner-tabs" ).bind( "tabsselect", function(event, ui) {
			setTimeout(function() {
				tabHeight('clear');
			}, 50 );
		});
		
		$("h4.head").click(function() {
				setTimeout(function() {
					videoHeight('clear');
				}, 50 );
		});
		
		$(".soft-desc-toggle").click(function() {
				setTimeout(function() {
					softwareHeight('clear', 650);
				}, 50 );
		});
		
		$(".hard-desc-toggle").click(function() {
				setTimeout(function() {
					softwareHeight('clear', 750);
				}, 300 );
		});
		
		$( 'button' ).button();
		
		$( "#delivery-dialog" ).dialog({
			autoOpen:false,
			height: 440,
			width: 700,
			modal: true,
			selected: 2
		});
		
		$( ".delivery-link" )
			.click(function() {
				// $("#tabs").tabs('option', 'selected', -1);
				$("#tabs").tabs('option', 'selected', $(this).attr("id"));
				$( "#delivery-dialog" ).dialog( "open" );
				return false;
			});
		
		$( "#self-guided-registration-dialog" ).dialog({
			autoOpen:false,
			height: 430,
			width: 500,
			modal: true
		});
		
		$( ".self-guided-registration-button" )
			.button()
			.click(function() {
				$( "#self-guided-registration-dialog" ).dialog( "open" );
				$(this).blur();
		});
		
		$("#videos-list li").on("mouseover mouseout", function(e) {
			if (e.type == 'mouseover') {
				$(this).css('cursor', 'pointer');
				$("#videos-list li").not(this).dequeue().animate({opacity: "0.3"}, 300);
	    } else {
	    	$(this).css('cursor', 'default');
				$("#videos-list li").not(this).dequeue().animate({opacity: "1"}, 300);
	   	}
		});
		
		$('.tab-select').click( function(){
		  $('#tabs').tabs( "select" , $(this).attr("href") )
		});
		
		var currentVid = '';
		
		
		// MyPeek Specific Functions
		
		$('div.color-key').cluetip({splitTitle: '|'}); 
		
		var note = $( "#note" ),
			allFields = $( [] ).add( note ),
			tips = $( ".validateTips" );

		function updateTips( t ) {
			tips
				.text( t )
				.addClass( "ui-state-highlight" );
			setTimeout(function() {
				tips.removeClass( "ui-state-highlight", 1500 );
			}, 1500 );
		}

		function checkLength( o, n, min, max ) {
			if ( o.val().length > max || o.val().length < min ) {
				o.addClass( "ui-state-error" );
				updateTips( "Length of " + n + " must be between " +
					min + " and " + max + "." );
				return false;
			} else {
				return true;
			}
		}

		function checkRegexp( o, regexp, n ) {
			if ( ( regexp.test( o.val() ) ) ) {
				o.addClass( "ui-state-error" );
				updateTips( n );
				return false;
			} else {
				return true;
			}
		}
		
		
		$( "#dialog-form" ).dialog({
			autoOpen: false,
			height: 375,
			width: 650,
			modal: true,
			buttons: {
				"Add Note": {
					text: "Add Note",
					id: "action-button",
					click: function() {
						var bValid = true;
						allFields.removeClass( "ui-state-error" );
			
						bValid = bValid && checkLength( note, "note", 1, 500 );
			
						bValid = bValid && checkRegexp( note, /<[/]?([^> ]+)[^>]*>/g, "The Note cannont contain HTML" );
			
						if ( bValid ) {
							updateTips( '' );
							$("#new_note").val(note.val());
							var overlay = $("<div></div>").addClass("ui-widget-overlay").css("z-index", "1001").css("height", "100%").css("position", "fixed");
        			$("body").append(overlay);
        			$("body").css("cursor", "progress");
							$(this).dialog( "close" );
							$('#addNote').submit();
							

						}
					}
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val( "" ).removeClass( "ui-state-error" );
			}
		});
		
		
		$( "#dialog-delete" ).dialog({
			autoOpen: false,
			height: 150,
			width: 350,
			modal: true,
			buttons: {
				"Confirm Delete": {
					text: "Confirm Delete",
					click: function() {
							updateTips( '' );
							$("#new_note").val(note.val());
							var overlay = $("<div></div>").addClass("ui-widget-overlay").css("z-index", "1001").css("height", "100%").css("position", "fixed");
        			$("body").append(overlay);
        			$("body").css("cursor", "progress");
							$(this).dialog( "close" );
							$('#addNote').submit();
					}
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val( "" ).removeClass( "ui-state-error" );
			}
		});
		
		$( ".add-note" )
			.button()
			.click(function() {
				$("#action-button").html('<span class="ui-button-text">Add Note</span>');
				$( "#dialog-form" ).dialog( "open" );
				$("#sernum").val($(this).closest("td").attr("id"));
				$("#action").val('add_note');
				$("#type").attr('checked', false);

			})
			.css("font-size", "9px");
			
		$( ".edit-note" )
			.click(function() {
				$("#action-button").html('<span class="ui-button-text">Edit Note</span>');
				$( "#dialog-form" ).dialog( "open" );
				$("#note_id").val($(this).closest("span").attr("id").replace("edit-", ""));
				var noteid = "#note-" + $("#note_id").val();
				eval('$("#note").val($("' + noteid + '").html());');
				
				var typeid = "#type-" + $("#note_id").val();
				eval('var whichType = $("' + typeid + '").html();');
				if(whichType == "private") {
					$("#type").attr('checked', true);
				} else {
					$("#type").attr('checked', false);
				}
				
				$("#action").val('edit_note');
				return false;

			})
			.css("font-size", "9px");
			
			$( ".delete-note" )
			.click(function() {
				$('.ui-dialog :button').blur();
				$( "#dialog-delete" ).dialog( "open" );
				$( "#tab" ).blur();
				$("#note_id").val($(this).closest("span").attr("id").replace("delete-", ""));
				var noteid = "#note-" + $("#note_id").val();
				eval('$("#note").val($("' + noteid + '").html());');
				
				var typeid = "#type-" + $("#note_id").val();
				eval('var whichType = $("' + typeid + '").html();');
				
				$("#action").val('delete_note');
				return false;

			})
			.css("font-size", "9px");
			
			$( "#list div").css("visibility", "visible")
			$( "#list div").css("padding-left", "16px");
			

			$( "#list .head span").css("vertical-align", "middle");
			$('.accordion .head').hover(function() {
				$(this).toggleClass('ui-state-hover');
			});
			$('.accordion .head').click(function() {
				$(this).toggleClass('ui-state-active').next().toggle('fast');
				$(this).find(">:first-child").toggleClass('ui-icon-triangle-1-s');
				return false;
			}).next().hide();

});

$(window).load(function() {
	equalHeight('yes');
});


