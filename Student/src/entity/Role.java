package entity;

import java.io.Serializable;

public class Role implements Serializable
{
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	
	public Role() {
		this.id = 3;
		this.name = "学生";
	}

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

}
