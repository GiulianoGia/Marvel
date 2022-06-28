package ch.bbw.marvel.frontend.models;

public class Login {
    private boolean worked;
    private String userID;

    public boolean isWorked() {
        return worked;
    }

    public void setWorked(boolean worked) {
        this.worked = worked;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }
}
