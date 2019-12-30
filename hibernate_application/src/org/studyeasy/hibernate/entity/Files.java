package org.studyeasy.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="files")
@Table(name="files")
public class Files {
	
	@Override
	public String toString() {
		return "Files [id=" + id + ", fileName=" + fileName + ", label=" + label + ", caption=" + caption + "]";
	}

	public Files(int id, String fileName, String label, String caption) {
		super();
		this.id = id;
		this.fileName = fileName;
		this.label = label;
		this.caption = caption;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Files(int id, String label, String caption) {
		super();
		this.id = id;
		this.label = label;
		this.caption = caption;
	}

	public String getFileName() {
		return fileName;
	}

	public Files(String fileName) {
		super();
		this.fileName = fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	@Id
	@Column(name="id")
	int id;
	@Column(name="filename")
	String fileName;
	@Column(name="label")
	String label;
	@Column(name="caption")
	String caption;

	public Files() {}
}
