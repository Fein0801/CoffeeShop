package co.grandcircus.coffee_shop.model;

public enum LoginStatus {
	
	LOGGED_IN, LOGGED_OUT;
	
	public String toString() {
		switch (this) {
		case LOGGED_IN:
			return "Log Out";
		default:
			return "Log In";
		}
	}

}
