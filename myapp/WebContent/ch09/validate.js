function inputCheck() {
	// form�� input�� name �Ӽ����� ������ü ��������
	const {id, name} = document.forms.regForm;
	if (!id.value.match(/^[a-zA-Z0-9]{3,20}$/)) {
		alert('���̵� 3�ڿ��� 20�ڷ� �Է��ϼ���!');
		return;
	}
	if (name.value.length === 0) {
		alert('�̸��� �Է��ϼ���!');
		return;
	}
	// TODO: �ٸ� �Է� �� ����
	document.forms.regForm.submit();
}
