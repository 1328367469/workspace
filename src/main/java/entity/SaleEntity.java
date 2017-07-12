package entity;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/7/11.
 */
@Entity
@Table(name = "sale", schema = "xf", catalog = "")
public class SaleEntity {
    private int id;
    private String question;
    private String time;
    private String phone;
    private Integer isture;
    private UserEntity user;

    @ManyToOne
    @JoinColumn(name = "userid")
    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "question")
    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    @Basic
    @Column(name = "time")
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Basic
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "isture")
    public Integer getIsture() {
        return isture;
    }

    public void setIsture(Integer isture) {
        this.isture = isture;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SaleEntity that = (SaleEntity) o;

        if (id != that.id) return false;
        if (question != null ? !question.equals(that.question) : that.question != null) return false;
        if (time != null ? !time.equals(that.time) : that.time != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (isture != null ? !isture.equals(that.isture) : that.isture != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (question != null ? question.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (isture != null ? isture.hashCode() : 0);
        return result;
    }
}
