/**
 * 
 */
$(document).ready(
		function() {

			var isPasswordValid = false;
			var isPasswordSame = false;
			
			$('input[type=password]').keyup(function() {
				var pswd = $(this).val();
				isPasswordValid = validatePassword(pswd);
				isPasswordSame = validatePasswordConfirmPasswordEuality(this);
				console.log("ppp" + isPasswordValid + "   " + isPasswordSame);
			}).focus(function() {
				$('#pswd_info').show();
			}).blur(function() {
				$('#pswd_info').hide();
			});

			function validatePassword(pswd) {
				if (validateLength(pswd) && validateLetter(pswd)
						&& validateCapitalLetter(pswd) && validateNumber(pswd)
						&& validateSpace(pswd)) {
					return true;
				} else {
					return false;
				}
			}

			function validateLength(pswd) {
				// validate the length
				if (pswd.length < 8) {
					$('#length').removeClass('valid').addClass('invalid');
					return false;
				} else {
					$('#length').removeClass('invalid').addClass('valid');
					return true;
				}
			}
			function validateLetter(pswd) {
				// validate letter
				if (pswd.match(/[A-z]/)) {
					$('#letter').removeClass('invalid').addClass('valid');
					return true;
				} else {
					$('#letter').removeClass('valid').addClass('invalid');
					return false;
				}
			}
			function validateCapitalLetter(pswd) {
				// validate capital letter
				if (pswd.match(/[A-Z]/)) {
					$('#capital').removeClass('invalid').addClass('valid');
					return true;
				} else {
					$('#capital').removeClass('valid').addClass('invalid');
					return false;
				}
			}
			function validateNumber(pswd) {
				// validate number
				if (pswd.match(/\d/)) {
					$('#number').removeClass('invalid').addClass('valid');
					return true;
				} else {
					$('#number').removeClass('valid').addClass('invalid');
					return false;
				}
			}
			function validateSpace(pswd) {
				// validate space
				if (pswd.match(/[^a-zA-Z0-9\-\/]/)) {
					$('#space').removeClass('invalid').addClass('valid');
					return true;
				} else {
					$('#space').removeClass('valid').addClass('invalid');
					return false;
				}
			}
			function validatePasswordConfirmPasswordEuality(pass) {
				var passEqual = false;
				if ($(pass).attr('id') == 'password') {

					if ($(pass).val() != $("#confirm_password").val()) {
						$('#confirmPass').removeClass('valid').addClass(
								'invalid');

						passEqual = false;
					} else {
						$('#confirmPass').removeClass('invalid').addClass(
								'valid');

						passEqual = true;
					}
				} else if ($(pass).attr('id') == 'confirm_password') {

					if ($("#password").val() != $(pass).val()) {
						$('#confirmPass').removeClass('valid').addClass(
								'invalid');

						passEqual = false;
					} else {
						$('#confirmPass').removeClass('invalid').addClass(
								'valid');

						passEqual = true;
					}

				}
				return passEqual;
			}

			$("#signUp").click(function() {
				if( isPasswordValid  && isPasswordSame){
					alert("Success");
					window.location.href="/slider";
				}
				else{
					alert("Failure");
					window.location.href="/signUp";
				}
				

			});

		});