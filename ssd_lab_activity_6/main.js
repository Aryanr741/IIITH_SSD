function validate_email(email) {
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(email.value.match(mailformat)){return true}
	else{
		alert("invalid email");
		return false;
	}
}
function confirm_password(spass, cpass){
	if(spass.value != cpass.value){
		alert("password doesn't match");
	}
}
function submit(mgname,gemail,suname,teamlead) {
	alert("Name:"mgname.value
		"Email:"gemail.value
		"Username:"suname.value
		"teamlead:"teamlead.value);
	return true;
}

function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
}
document.body.addEventListener("keydown", function (ev) {
    ev = ev || window.event;
    var key = ev.which || ev.keyCode;
    var ctrl = ev.ctrlKey ? ev.ctrlKey : ((key === 17)
        ? true : false);
    if (key == 12 && ctrl) {
        document.body.style.backgroundColor = 'black';
    }
}, false);