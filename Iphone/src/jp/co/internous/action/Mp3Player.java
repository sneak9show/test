package jp.co.internous.action;

public interface Mp3Player {

	public abstract void play(){
		System.out.println("再生");
	}

	public abstract void stop(){
		System.out.println("停止");
	}

	public abstract void next(){
		System.out.println("次へ");
	}

	public void back(){
		System.out.println("戻る");

	}

}
