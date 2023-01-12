function inputCheck() {
	// form과 input의 name 속성으로 문서객체 가져오기
	const {id, name} = document.forms.regForm;
	if (!id.value.match(/^[a-zA-Z0-9]{3,20}$/)) {
		alert('아이디를 3자에서 20자로 입력하세요!');
		return;
	}
	if (name.value.length === 0) {
		alert('이름을 입력하세요!');
		return;
	}
	// TODO: 다른 입력 값 검증
	document.forms.regForm.submit();
}
