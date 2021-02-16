package board;
/*
	자바빈(java bean)
		: 사용자가 정의한 자바 클래스를 의미한다.
		. jsp에서 자바빈이 필수적인 것은 아니다.
			- 비즈니스 로직과 프리젠테이션 로직을 분리해서 프로그램을 깔끔하게 처리
			- 다른 JSP에서도 공통으로 재사용 할 수 있다.
			
		. 설계규약
			첫째. 생성자가 필요하다면, 반드시 기본생성자를 포함해야 한다.
			둘째. 속성은 getter() setter()메서드가 정의되야 한다.
			셋째. getter()는 파라미터가 없어야 한다.
			넷째 . 해당 속성과 타입이 일치하는 파라미터 한개를 가져야한다.
		
		. 문법
			<jsp: useBean id="객체이름" class="패키지.클래스" scope="범위">
			<jsp: setProperty name="" property="" value="" >
			<jsp: getProperty name="" property="">
		

*/
public class BoardInfo {
	private String title;
	private String name;
	private String content;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
