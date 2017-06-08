var gatekeeperSize = 'small';


function resizeGateKeeper(download_id, lead_id) {
	$( "#gatekeeper-dialog" ).dialog( "close" );
	
	if(gatekeeperSize == 'large') {
		$( "#gatekeeper-dialog" ).dialog( "option", "width", 800 );
		$( "#gatekeeper-dialog" ).dialog( "option", "height", 715 );
	} else {
		$( "#gatekeeper-dialog" ).dialog( "option", "width", 600 );
		$( "#gatekeeper-dialog" ).dialog( "option", "height", 515 );
		
	}
	$("#modalIframeId").attr("src","/gatekeeper_download?id=" + download_id + "&lead_id=" + lead_id);
	$( "#gatekeeper-dialog" ).dialog( "open" );
}

plusOn = new Image();
plusOn.src = "/images/buttons/button_plus_hover.png";
plusOff = new Image();
plusOff.src = "/images/buttons/button_plus.png";

minusOn = new Image();
minusOn.src = "/images/buttons/button_minus_hover.png";
minusOff = new Image();
minusOff.src = "/images/buttons/button_minus.png";

// Plus/Minus image replace On Function	
function toggleImageOn(pic, type) {
	var imageID = pic + "_toggle";
	eval('document.images[imageID].src = ' + type + 'On.src');

}
        
// Plus/Minus image replace Off Function	
function toggleImageOff(pic, type) {     
	var imageID = pic + "_toggle";
	eval('document.images[imageID].src = ' + type + 'Off.src');
}


// Video Gallery functions
var currentVid = '';
		
function runEffect(whichDiv) {
	// get effect type from 
	var selectedEffect = "blind";
	
	// most effect types need no options passed by default
	var options = {};

	
	// close currently open video if needed
	if(currentVid != '' && currentVid != whichDiv) {
		$( "#" + currentVid ).toggle( selectedEffect, options, 500 );
		currentVid = '';				
	}
	
	// open video
	$( "#" + whichDiv ).toggle( selectedEffect, options, 500 );
	if(currentVid == '' || currentVid != whichDiv) {
		currentVid = whichDiv;
	} else {
		currentVid = '';
	}
	$("#main>div").removeAttr("style");

	setTimeout(function() {equalHeight('yes') }, 100);
	setTimeout(function() {equalHeight('yes') }, 200);
	setTimeout(function() {equalHeight('yes') }, 300);
	setTimeout(function() {equalHeight('yes') }, 400);
	
};

// Function to display eval descriptions
var current_desc = "";	
function display_description(which_desc) {
	if(current_desc != "") {
		$('#' + current_desc).hide();
	}
	if(which_desc != "") {
		$('#' + which_desc).show();
	}
	current_desc = which_desc;
}



// Function for Customer Logos Home Animation

function get_random(numImages) {
    var ranNum= Math.floor(Math.random()*numImages);
    return ranNum;
}

function getCustomers()
{
	var whichCustomers=get_random(6);
	
	var customers=new Array(6)
	customers[0]="<img src=\"/images/home_page/customer_logos/customer_logos_att.png\" alt=\"\">";
	customers[1]="<img src=\"/images/home_page/customer_logos/customer_logos_consumers_energy.png\" alt=\"\">";
	customers[2]="<img src=\"/images/home_page/customer_logos/customer_logos_deutsche_telekom.png\" alt=\"\">";
	customers[3]="<img src=\"/images/home_page/customer_logos/customer_logos_harvard.png\" alt=\"\">";
	customers[4]="<img src=\"/images/home_page/customer_logos/customer_logos_nortel.png\" alt=\"\">";
	customers[5]="<img src=\"/images/home_page/customer_logos/customer_logos_att.png\" alt=\"\">";
	
	
	document.write(customers[whichCustomers]);
}
 
// Functions used to rate extensibility solutions
starOne = new Image();
starOne.src = "/images/mypeek/icons/rate_sub_1.gif";
starTwo = new Image();
starTwo.src = "/images/mypeek/icons/rate_sub_2.gif";
starThree = new Image();
starThree.src = "/images/mypeek/icons/rate_sub_3.gif";
starFour = new Image();
starFour.src = "/images/mypeek/icons/rate_sub_4.gif";
starFive = new Image();
starFive.src = "/images/mypeek/icons/rate_sub_5.gif";
starOff = new Image();
starOff.src = "/images/mypeek/icons/rate_sub_off.gif";

 
function rateFile(submissionId) {
	var contentElement = document.getElementById('rating');
	var URL = 'rate_submission.php?id=' + submissionId;
	loadHTML(URL, 'rating');
}

// Rate Submission Function - Used For Contest
function rateSubmission(rating) {
	document.ratingForm.newRating.value= rating;
	document.ratingForm.submit();
}

// Function that turns rating stars on
function starOn(num) { 
	if(num >=1 ) {
		document.images['stars'].src= starOne.src;
	}
	if(num >=2 ) {
		document.images['stars'].src= starTwo.src;
	}
	if(num >=3 ) {
		document.images['stars'].src= starThree.src;
	}
	if(num >=4 ) {
		document.images['stars'].src= starFour.src;
	}
	if(num >=5 ) {
		document.images['stars'].src= starFive.src;
	}	
}

// Makes sure an eval is selected on eval request forms prior to submitting
function validate_eval_selection() {
	var selected = 'no';
	var checkBoxes = document.evalRequest.elements['evals_requested[]'];
	var boxCount = checkBoxes.length
	for(var i=0; i < boxCount; i++) {
		if(checkBoxes[i].checked) {
			selected = 'yes';
		}
	}
	
	if(selected == 'no') {
		alert('Please select the eval(s) you are interested in.');
	} else {
		document.evalRequest.submit();
	}
	

}

// Phone number validation functions	
	function validate_domestic_phone_number(phoneNumber) {
		
		
		var regexObj = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*([0-9]{1,5}))?$/;
		// var regexObj = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})[-. ]?(x|ext|ext.)?([0-9]{1,5})?$/;
		if (regexObj.test(phoneNumber)) {		
			var match = regexObj.exec(phoneNumber);
			if( (match[4] !== undefined)) {
				phoneNumber = phoneNumber.replace(regexObj, "$1-$2-$3 ext.$4");
			} else {
				phoneNumber = phoneNumber.replace(regexObj, "$1-$2-$3");
			}
			return phoneNumber;
		} else {
			phoneNumber = "invalid";
			return phoneNumber;
		} 
	}
	
	function validate_international_phone_number(phoneNumber) {
		var regexObj = /^(\+{1})([0-9]{1,3})[ ]?([0-9\s]{6,14})$/;
		if (regexObj.test(phoneNumber)) {		
			phoneNumber = phoneNumber.replace(regexObj, "$1$2 $3");
			return phoneNumber;
		} else {
			phoneNumber = "invalid";
			return phoneNumber;
		} 
	}
	
	function validate_format_phone_number() {
		if(document.mypeek_registration.phone.value != '') {
			if(document.mypeek_registration.country.value == 'US' || document.mypeek_registration.country.value == 'CA') {
				var phoneNumber = validate_domestic_phone_number(document.mypeek_registration.phone.value);
				var regType = "domestic";
			} else if(document.mypeek_registration.country.value != '') {
				var phoneNumber = validate_international_phone_number(document.mypeek_registration.phone.value);
				var regType = "international";
			} else {
				var phoneNumber = validate_domestic_phone_number(document.mypeek_registration.phone.value);
				if(phoneNumber == "invalid") {
					var phoneNumber = validate_international_phone_number(document.mypeek_registration.phone.value);
				}
				if(phoneNumber == "invalid") {
					var regType = "unknown";
				}
			}
			
			if(regType == "domestic") {
				if(phoneNumber == "invalid") {
					alert('The entered phone number doesn\'t conform to the requested format for users from the United States or Canada. Phone numbers for United States and Canada need to be in the following format: 123 456-7890 x123');
				} else {
					document.mypeek_registration.phone.value = phoneNumber;
					document.mypeek_registration.submit();
				}
			} else if(regType == "international") {
				if(phoneNumber == "invalid") {
					alert('The entered phone number doesn\'t conform to the requested format for international users. International phone numbers need to be in the following format: +CC(1-3 digits)  Number(6-14 digits)');
				} else {
					document.mypeek_registration.phone.value = phoneNumber;
					document.mypeek_registration.submit();
				}
			} else {
				if(phoneNumber == "invalid") {
					alert('The entered phone number doesn\'t conform to the requested format for either domestic or international users. Phone numbers for United States and Canada need to be in the following format: 123 456-7890 x123. International phone numbers need to be in the following format: +CountryCode(1-3 digits)  Number(6-14 digits)');
				} else {
					document.mypeek_registration.phone.value = phoneNumber;
					document.mypeek_registration.submit();
				}
			}
		} else {
			document.mypeek_registration.submit();
		}
	}
	
// Page Changer function
function pageChanger(location) {
	window.opener.location= location;
	window.close();
}

// Search URL Builder Function
function searchBuilder() {
		var searchUrl = "http://" + document.domain + "/search/";
		searchUrl += document.searchForm.zoom_query.value + "/";
		searchUrl += document.searchForm.zoom_per_page.options[document.searchForm.zoom_per_page.selectedIndex].value + "/";
		
		if (document.searchForm.zoom_and[0].checked) {
			searchUrl += "0/";
		} else {
			searchUrl += "1/";	
		}
		searchUrl += document.searchForm.zoom_sort.value;
		document.location = searchUrl;
}

// Search URL Builder Function
function navSearchBuilder() {
		var searchUrl = "http://" + document.domain + "/search/";
		searchUrl += document.navSearchForm.zoom_query.value + "/";
		searchUrl += document.navSearchForm.zoom_per_page.value + "/";
		searchUrl += document.navSearchForm.zoom_and.value + "/";
		searchUrl += document.navSearchForm.zoom_sort.value;
		document.location = searchUrl;
}

//function to open smaller window
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}


// Checks Number of "upgrade" engines in cart before adding more
function checkEngines(whichEngine, numWrkEngines, numEntEngines, productID) {
	cartEngines = numWrkEngines + numEntEngines;
	if(productID == 'odnxep_dl') {
		newNum = numWrkEngines + parseInt(eval('document.' + whichEngine + '.product_quantity.options[document.' + whichEngine + '.product_quantity.selectedIndex].value'));
	} else if (productID == 'oewgp_dl') {
		newNum = numEntEngines + parseInt(eval('document.' + whichEngine + '.product_quantity.options[document.' + whichEngine + '.product_quantity.selectedIndex].value'));
	}
	if(newNum <= 3) {
		eval('document.' + whichEngine + '.submit()');
	} else {
		alert('You already have ' + cartEngines + ' OmniEngine(s) in your cart. Your selection will put you above the limit of 3 OmniEngines for this transaction.');
	}	
}

// Checks for presence of Upgrade in cart when other promo items are detected
function checkForUpgrades(hasUpgrades) {
		if(hasUpgrades == '9107333') {
			document.location='/address_form.php';
		} else {
			alert('You have items in your cart that require the selection of an AiroPeek/EtherPeek to OmniPeek Software Upgrade');
	}	
}


// ajax junction
var request;
var dest;

// Function to display short description for product listings
function show_product_info(productID) {
	var contentElement = document.getElementById(productID);
	var URL = '/content/product_descriptions/short_descriptions.php?pid=' + productID;
	loadHTML(URL, productID);
}

// Function to hide short description for product listings
function hide_product_info(productID) {
	var contentElement = document.getElementById(productID);
	var URL = '/content/product_descriptions/hide_descriptions.php?pid=' + productID;
	loadHTML(URL, productID);
}


// Function to display form for registration
function show_form(URL) {
	var contentElement = document.getElementById('regForm');
	loadHTML(URL, 'regForm');
}

// Function to submit form registration
function submit_form(URL) {
	var getVars = "/";
	getVars += "firstname=" + document.registrationForm.firstname.value;
	getVars += ";;lastname=" + document.registrationForm.lastname.value;
	getVars += ";;email=" + document.registrationForm.email.value;
	getVars += ";;phone=" + document.registrationForm.phone.value;
	getVars += ";;company=" + document.registrationForm.company.value;
	getVars += ";;address1=" + document.registrationForm.address1.value;
	getVars += ";;address2=" + document.registrationForm.address2.value;
	getVars += ";;city=" + document.registrationForm.city.value;
	getVars += ";;zip=" + document.registrationForm.zip.value;
	getVars += ";;state=" + document.registrationForm.state.options[document.registrationForm.state.selectedIndex].value;
	getVars += ";;country=" + document.registrationForm.country.options[document.registrationForm.country.selectedIndex].value
	for (var i=0; i < document.registrationForm.opt_in.length; i++)   {
  	if (document.registrationForm.opt_in[i].checked)      {
   		var rad_val = document.registrationForm.opt_in[i].value;
  	}
  }
	getVars += ";;opt_in=" + rad_val;
	getVars += ";;action=" + document.registrationForm.action.value;
	
	URL += getVars
	loadHTML(URL, 'regForm');
}
	
function processStateChange(){
    if (request.readyState == 4){
        contentDiv = document.getElementById(dest);
        if (request.status == 200){
            response = request.responseText;
            contentDiv.innerHTML = response;
        }  else {
            contentDiv.innerHTML = "Error: Status "+request.status;
        }
    }
}

function loadHTML(URL, destination){
    dest = destination;
    if(window.XMLHttpRequest){
        request = new XMLHttpRequest();
        request.onreadystatechange = processStateChange;
        request.open("GET", URL, true);
        request.send(null);
    } else if (window.ActiveXObject) {
        request = new ActiveXObject("Microsoft.XMLHTTP");
        if (request) {
            request.onreadystatechange = processStateChange;
            request.open("GET", URL, true);
            request.send();
        }
    }
}

function toggleOtherChallenge(value) {
	otherDiv = document.getElementById('otherChallenge');	
	if(value == 'other') {
		otherDiv.style.display='block';
	} else {
		otherDiv.style.display='none';
	}
}


// New Functions

function set_form_field_color(field_id) {
	if($(field_id).attr("value") != '' && $(field_id).attr("value") != $(field_id).attr("data-label")) {
		$(field_id).css('color', '#000000');
	}
}