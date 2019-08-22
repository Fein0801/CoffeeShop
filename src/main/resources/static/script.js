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