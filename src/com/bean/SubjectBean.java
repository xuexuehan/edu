package com.bean;

public class SubjectBean {
    private Integer id;
    private String name;
    private Integer status;
    private Integer typer;
    private Double xscore;

    public SubjectBean() {
	
	}
    public SubjectBean(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public SubjectBean(String name, Integer status, Integer typer, Double xscore) {
		super();
		this.name = name;
		this.status = status;
		this.typer = typer;
		this.xscore = xscore;
	}

	public SubjectBean(Integer id, String name, Integer status, Integer typer,
			Double xscore) {
		super();
		this.id = id;
		this.name = name;
		this.status = status;
		this.typer = typer;
		this.xscore = xscore;
	}

	@Override
    public String toString() {
        return "SubjectBean{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", typer=" + typer +
                ", xscore=" + xscore +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getTyper() {
        return typer;
    }

    public void setTyper(Integer typer) {
        this.typer = typer;
    }

    public Double getXscore() {
        return xscore;
    }

    public void setXscore(Double xscore) {
        this.xscore = xscore;
    }
}
