package jp.co.internous.action;

public class Test {
	public static void main(String[]args){
		Person taro =new Person();
		taro.name="太郎";
		taro.age=18;
		System.out.println(taro.name);
		System.out.println(taro.age);

		Person jiro=new Person("次郎",20);
		System.out.println(jiro.name);
		System.out.println(jiro.age);

		Person saburo=new Person("三郎");
		System.out.println(saburo.name);
		System.out.println(saburo.age);

		Person nanasi =new Person(25);
		System.out.println(nanasi.age);
		System.out.println(nanasi.name);

		Person hanako = new Person(17,"花子");
		System.out.println(hanako.name);
		System.out.println(hanako.age);
	}

}
