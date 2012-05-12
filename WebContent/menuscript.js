/*** SET BUTTON'S FOLDER HERE ***/
var buttonFolder = "buttons/";

/*** SET BUTTONS' FILENAMES HERE ***/
upSources = new Array("browseUp.png","orderHistoryUp.png","accountUp.png","logoutUp.png","addUp.png","deleteUp.png","statsUp.png","homeUp.png","aboutUsUp.png","emailUp.png","helpUp.png");

overSources = new Array("browseOver.png","orderHistoryOver.png","accountOver.png","logoutOver.png","addOver.png","deleteOver.png","statsOver.png","homeOver.png","aboutUsOver.png","emailOver.png","helpOver.png");


//*** NO MORE SETTINGS BEYOND THIS POINT ***//
totalButtons = upSources.length;



//*** MAIN BUTTONS FUNCTIONS ***//
// PRELOAD MAIN MENU BUTTON IMAGES
function preload() 
{
	var x;
	for ( x=0; x<totalButtons; x++ ) {
		buttonUp = new Image();
		buttonUp.src = buttonFolder + upSources[x];
		buttonOver = new Image();
		buttonOver.src = buttonFolder + overSources[x];
	}
}

// SET MOUSEOVER BUTTON
function setOverImg(But, ID) {
	document.getElementById('button' + But + ID).src = buttonFolder + overSources[But-1];
}

// SET MOUSEOUT BUTTON
function setOutImg(But, ID) {
	document.getElementById('button' + But + ID).src = buttonFolder + upSources[But-1];
}


//preload();