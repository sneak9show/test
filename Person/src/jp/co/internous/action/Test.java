package jp.co.internous.action;

public class Test {
	public static void main(String[]args){
		Person taro = new Person();
		taro.name="山田太郎";
		taro.age=20;
		taro.phoneNumber="080-0000-1234";
		taro.address="東京";
		taro.gender="男性";
		taro.talk();
		taro.walk();
		taro.run();
		System.out.println(taro.name);
		System.out.println(taro.age);
		System.out.println(taro.phoneNumber);
		System.out.println(taro.address);
		System.out.println(taro.gender);

		Person jiro = new Person();
		jiro.name="木村次郎";
		jiro.age =18;
		jiro.phoneNumber="070-1200-0034";
		jiro.address="埼玉";
		jiro.gender="男性";
		jiro.talk();
		jiro.walk();
		jiro.run();
		System.out.println(jiro.name);
		System.out.println(jiro.age);
		System.out.println(jiro.phoneNumber);
		System.out.println(jiro.address);
		System.out.println(jiro.gender);

		Person hanako = new Person();
		hanako.name="鈴木花子";
		hanako.age=18;
		hanako.phoneNumber="090-1234-0000";
		hanako.address="京都";
		hanako.gender="女性";
		hanako.talk();
		hanako.walk();
		hanako.run();
		System.out.println(hanako.name);
		System.out.println(hanako.age);
		System.out.println(hanako.phoneNumber);
		System.out.println(hanako.address);
		System.out.println(hanako.gender);

		Robot aibo = new Robot();
		aibo.name="アイボ";
		aibo.talk();
		aibo.walk();
		aibo.run();
		System.out.println(aibo.name);

		Robot asimo = new Robot();
		asimo.name="アシモ";
		asimo.talk();
		asimo.walk();
		asimo.run();
		System.out.println(asimo.name);

		Robot pepper = new Robot();
		pepper.name="ペッパー";
		pepper.talk();
		pepper.walk();
		pepper.run();
		System.out.println(pepper.name);

		Robot doraemon = new Robot();
		doraemon.name="ドラえもん";
		System.out.println(doraemon.name);
		doraemon.talk();
		doraemon.walk();
		doraemon.run();


	}

}