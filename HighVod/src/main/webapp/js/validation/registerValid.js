/**
 * 회원가입 유효성검사
 */

$.validator.setDefaults({
	errorPlacement : function(error, element) {
		error.appendTo(element.parent().parent().next().children());
	},
	onkeyup : function(element) {
		$(element).valid()
	},
	onfocusout : function(element) {
		$(element).valid()
	},
	onsubmit : true
});

$.validator.addMethod("alphanum", function(value, element) {
	return this.optional(element) || /^[a-z0-9]+$/.test(value);
});
$.validator.addMethod("korNick", function(value, element) {
	return this.optional(element) || /^[가-힣]+$/.test(value);
});
$.validator.addMethod("birthNum", function(value, element) {
	return this.optional(element) || /^[0-9]+$/.test(value);
});

function registerValid() {
	$("#registerForm").validate({
		rules : {
			userId : {
				required : true,
				minlength : 4,
				maxlength : 12,
				alphanum : true,
				remote : {
					url : "http://localhost:8080/MyMoney/userIdDupCheck.do",
					type : "post"
				}
			},
			userPw : {
				required : true,
				minlength : 4,
				maxlength : 16
			},
			userPwChk : {
				required : true,
				equalTo : "#userPw"
			},
			userName : {
				required : true,
				korNick : true
			},
			userEmail : {
				required : true,
				email : true
			},
			userBirth : {
				required : true,
				minlength : 6,
				maxlength : 6,
				birthNum : true
			}
		},
		messages : {
			userId : {
				required : "아이디는 필수입니다.",
				minlength : jQuery.validator.format("{0}자 이상 입력하세요."),
				maxlength : jQuery.validator.format("최대 {0}자 이하입니다."),
				alphanum : "영문자와 숫자만 이용가능합니다.",
				remote : "이미 사용중인 아이디 입니다."
			},
			userPw : {
				required : "비밀번호는 필수입니다.",
				minlength : jQuery.validator.format("{0}자 이상 입력하세요."),
				maxlength : jQuery.validator.format("최대 {0}자 이하입니다.")
			},
			userPwChk : {
				required : "비밀번호 확인은 필수입니다.",
				equalTo : "입력한 비밀번호와 틀립니다."
			},
			userName : {
				required : "이름은 필수입니다.",
				korNick : "한글 이름만 가능합니다."
			},
			userEmail : {
				required : "이메일 주소는 필수 입니다.",
				email : "이메일 형식에 맞게 입력해주세요."
			},
			userBirth : {
				required : "생년월일은 필수입니다.",
				minlength : jQuery.validator.format("{0}자리로 입력해주세요"),
				maxlength : jQuery.validator.format("{0}자리로 입력해주세요"),
				birthNum : "숫자만 입력 가능합니다."
			}
		}
	});
}


//$('.register #registerBtn').submit(function() {
//	$('#password2').attr("disabled", true)
//	$('#birthYear').attr("disabled", true)
//	$('#birthMonth').attr("disabled", true)
//	$('#birthDay').attr("disabled", true)
//})
//
//$("#loginForm").validate({
//	rules : {
//		userid : {
//			required : true,
//		},
//		password : {
//			required : true,
//		}
//	},
//	messages : {
//		userid : {
//			required : "아이디는 필수입니다.",
//		},
//		password : {
//			required : "비밀번호는 필수입니다.",
//		}
//	}
//});
//$("#registerEditForm").validate({
//	rules : {
//		tel : {
//			required : true,
//			telCheck : true
//		},
//		email : {
//			required : true,
//			email : true
//		},
//		password : {
//			required : true,
//			minlength : 4,
//			maxlength : 10
//		},
//		password2 : {
//			required : true,
//			equalTo : "#password"
//		},
//	},
//	messages : {
//		tel : {
//			required : "전화번호는 필수입니다.",
//			telCheck : "'-'를 포함해서 입력해주세요."
//		},
//		email : {
//			required : "이메일 주소는 필수 입니다.",
//			email : "이메일 형식에 맞게 써주세요."
//		},
//		password : {
//			required : "비밀번호는 필수입니다.",
//			minlength : jQuery.validator.format("{0}자 이상 입력하세요."),
//			maxlength : jQuery.validator.format("{0}자 이하로 입력하세요.")
//		},
//		password2 : {
//			required : "비밀번호확인은 필수입니다.",
//			equalTo : "위에 입력하신 것과 다릅니다."
//		}
//	},
//	errorPlacement : function(error, element) {
//		error.appendTo(element.parent().parent().next().children().eq(1));
//	}
//});
//$("#resumeForm").validate({
//	rules : {
//		title : {
//			required : true,
//		},
//		hopejob : {
//			required : true,
//		},
//		location : {
//			required : true,
//		},
//		time : {
//			required : true,
//		},
//		pay : {
//			required : true,
//		}
//	},
//	messages : {
//		title : {
//			required : "제목을 적어주세요.",
//		},
//		hopejob : {
//			required : "희망하는 업종을 적어주세요.",
//		},
//		location : {
//			required : "희망 근무지역을 적어주세요.",
//		},
//		time : {
//			required : "희망 근무일시를 적어주세요.",
//		},
//		pay : {
//			required : "원하는 급여정보를 적어주세요. 특별히 없다면 '협의'라고 적어주세요.",
//		}
//	},
//	errorPlacement : function(error, element) {
//		error.appendTo(element.parent().parent().next().children().eq(1));
//	}
//});
//$("#resumeEditForm").validate({
//	rules : {
//		title : {
//			required : true,
//		},
//		hopejob : {
//			required : true,
//		},
//		location : {
//			required : true,
//		},
//		time : {
//			required : true,
//		},
//		pay : {
//			required : true,
//		}
//	},
//	messages : {
//		title : {
//			required : "제목을 적어주세요.",
//		},
//		hopejob : {
//			required : "희망하는 업종을 적어주세요.",
//		},
//		location : {
//			required : "희망 근무지역을 적어주세요.",
//		},
//		time : {
//			required : "희망 근무일시를 적어주세요.",
//		},
//		pay : {
//			required : "원하는 급여정보를 적어주세요. 특별히 없다면 '협의'라고 적어주세요.",
//		}
//	},
//	errorPlacement : function(error, element) {
//		error.appendTo(element.parent().parent().next().children().eq(1));
//	}
//});
//$("#registerStoreForm").validate({
//  rules : {
//    sname : {
//      required : true,
//    },
//    cob : {
//      required : true,
//    },
//    brn : {
//      required : true,
//    },
//    tel : {
//      required : true,
//      telCheck : true
//    },
//    address : {
//      required : true,
//    },
//    beaconno : {
//      beaconno : true,
//      required : true
//    },
//    payday : {
//      required : true,
//      birthDay : true,
//      range : [ 1, 31 ]
//    }
//  },
//  messages : {
//    sname : {
//      required : "필수 정보입니다.",
//    },
//    cob : {
//      required : "필수 정보입니다.",
//    },
//    brn : {
//      required : "필수 정보입니다.",
//    },
//    tel : {
//      required : "필수 정보입니다.",
//      telCheck : "-를 포함해서 입력해주세요."
//    },
//    address : {
//      required : "필수 정보입니다."
//    },
//    beaconno : {
//      required : "필수 정보입니다.",
//      beaconno : "8자리 숫자만 입력가능합니다."
//    },
//    payday : {
//      required : "필수 정보입니다.",
//      birthDay : "1~30 사이의 수를 입력해주세요.",
//      range : "1~30 사이의 수를 입력해주세요."
//    }
//  },
//  errorPlacement : function(error, element) {
//    error.appendTo(element.next('span'));
//  }
//})