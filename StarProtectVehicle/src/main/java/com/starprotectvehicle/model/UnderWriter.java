package com.starprotectvehicle.model;

public class UnderWriter {
    private int underwriterId;
    private String name;
    private String dob;
    private String joiningDate;
    private String password;

    public UnderWriter(int underwriterId, String name, String dob, String joiningDate, String password) {
        this.underwriterId = underwriterId;
        this.name = name;
        this.dob = dob;
        this.joiningDate = joiningDate;
        this.password = password;
    }

	public int getUnderwriterId() {
		return underwriterId;
	}

	public void setUnderwriterId(int underwriterId) {
		this.underwriterId = underwriterId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

    // Getters and Setters
}
