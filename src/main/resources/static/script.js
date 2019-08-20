var monthArray = [ "January", "February", "March", "April", "May", "June",
		"July", "August", "September", "October", "November", "December" ];

generateMonthDropdown();
generateDayDropdown();
generateYearDropdown(2019, 150);

function generateMonthDropdown() {
	var monthBox = document.getElementById("month_box");

	monthBox.innerHTML = "<option value=''></option>";
	for (var i = 0; i < monthArray.length; i++) {
		monthBox.innerHTML += "<option value='" + monthArray[i] + "'>"
				+ monthArray[i] + "</option>";
	}
}

function generateDayDropdown() {
	var dayBox = document.getElementById("day_box");
	dayBox.innerHTML = "<option value=''></option>";

	for (var i = 1; i <= 31; i++) {
		var day = "0";

		if (i < 10) {
			day += i;
		} else {
			day = i;
		}

		dayBox.innerHTML += "<option value='" + day + "'>" + day + "</option>";
	}
}

function generateYearDropdown(currentYear, yearsBack) {
	var yearBox = document.getElementById("year_box");
	yearBox.innerHTML = "<option value=''></option>";

	for (var i = 0; i < yearsBack; i++) {
		yearBox.innerHTML += "<option value='" + (currentYear - i) + "'>"
				+ (currentYear - i) + "</option>";
	}
}

function checkBirthday() {
	dayBox.setCustomValidity('');
	
	var monthBox = document.getElementById("month_box");
	var dayBox = document.getElementById("day_box");
	var yearBox = document.getElementById("year_box");

	var month = monthBox.value;
	var day = parseInt(dayBox.value, 10);
	var year = yearBox.value;
	var daysInMonth = 0;

	switch (month) {
	case "February":
		if (isLeapYear(year)) {
			daysInMonth = 29;
		} else {
			daysInMonth = 28;
		}
		break;
	case "April":
	case "June":
	case "September":
	case "November":
		daysInMonth = 30;
		break;
	default:
		daysInMonth = 31;
		break;
	}
	
	if(day > daysInMonth) {
		alert('There are only ' + daysInMonth + ' days in ' + month);
		return false;
	} else {
		return true;
	}		
}

function isLeapYear(year) {
	if (year % 400 === 0) {
		return true;
	} else if (year % 100 === 0) {
		return false;
	} else if (year % 4 === 0) {
		return true;
	}
	return false;
}
/*
 * Credit where credit is due:
 * 
 * https://stackoverflow.com/questions/9142527/can-you-require-two-form-fields-to-match-with-html5
 * 
 * Originally, I copy-pasted the code from the page, but then I changed it to
 * work with any 2 text input fields, when passed the id's.
 */
function check(id1, id2) {
	var input = document.getElementById(id2);
	if (input.value !== document.getElementById(id1).value) {
		input.setCustomValidity('Passwords must match.');
	} else {
		input.setCustomValidity('');
	}
}

function showPassword() {
	var arr = [];

	for (var i = 1; i <= 2; i++) {
		arr[i - 1] = document.getElementById("password_field_" + i);
	}

	for (var i = 0; i < arr.length; i++) {
		if (arr[i].type === "password") {
			arr[i].type = "text";
		} else {
			arr[i].type = "password";
		}
	}
}