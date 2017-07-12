package entity;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/7/11.
 */
@Entity
@Table(name = "new", schema = "xf", catalog = "")
public class NewEntity {
    private int id;
    private String newimg;
    private String newtitle;
    private String newnr;
    private String newtime;
    private String newwriter;
    private String newjianjie;
    private Integer newadress;
    private Integer istuijian;
    private Integer isture;

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "newimg")
    public String getNewimg() {
        return newimg;
    }

    public void setNewimg(String newimg) {
        this.newimg = newimg;
    }

    @Basic
    @Column(name = "newtitle")
    public String getNewtitle() {
        return newtitle;
    }

    public void setNewtitle(String newtitle) {
        this.newtitle = newtitle;
    }

    @Basic
    @Column(name = "newnr")
    public String getNewnr() {
        return newnr;
    }

    public void setNewnr(String newnr) {
        this.newnr = newnr;
    }

    @Basic
    @Column(name = "newtime")
    public String getNewtime() {
        return newtime;
    }

    public void setNewtime(String newtime) {
        this.newtime = newtime;
    }

    @Basic
    @Column(name = "newwriter")
    public String getNewwriter() {
        return newwriter;
    }

    public void setNewwriter(String newwriter) {
        this.newwriter = newwriter;
    }

    @Basic
    @Column(name = "newjianjie")
    public String getNewjianjie() {
        return newjianjie;
    }

    public void setNewjianjie(String newjianjie) {
        this.newjianjie = newjianjie;
    }

    @Basic
    @Column(name = "newadress")
    public Integer getNewadress() {
        return newadress;
    }

    public void setNewadress(Integer newadress) {
        this.newadress = newadress;
    }

    @Basic
    @Column(name = "istuijian")
    public Integer getIstuijian() {
        return istuijian;
    }

    public void setIstuijian(Integer istuijian) {
        this.istuijian = istuijian;
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

        NewEntity newEntity = (NewEntity) o;

        if (id != newEntity.id) return false;
        if (newimg != null ? !newimg.equals(newEntity.newimg) : newEntity.newimg != null) return false;
        if (newtitle != null ? !newtitle.equals(newEntity.newtitle) : newEntity.newtitle != null) return false;
        if (newnr != null ? !newnr.equals(newEntity.newnr) : newEntity.newnr != null) return false;
        if (newtime != null ? !newtime.equals(newEntity.newtime) : newEntity.newtime != null) return false;
        if (newwriter != null ? !newwriter.equals(newEntity.newwriter) : newEntity.newwriter != null) return false;
        if (newjianjie != null ? !newjianjie.equals(newEntity.newjianjie) : newEntity.newjianjie != null) return false;
        if (newadress != null ? !newadress.equals(newEntity.newadress) : newEntity.newadress != null) return false;
        if (istuijian != null ? !istuijian.equals(newEntity.istuijian) : newEntity.istuijian != null) return false;
        if (isture != null ? !isture.equals(newEntity.isture) : newEntity.isture != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (newimg != null ? newimg.hashCode() : 0);
        result = 31 * result + (newtitle != null ? newtitle.hashCode() : 0);
        result = 31 * result + (newnr != null ? newnr.hashCode() : 0);
        result = 31 * result + (newtime != null ? newtime.hashCode() : 0);
        result = 31 * result + (newwriter != null ? newwriter.hashCode() : 0);
        result = 31 * result + (newjianjie != null ? newjianjie.hashCode() : 0);
        result = 31 * result + (newadress != null ? newadress.hashCode() : 0);
        result = 31 * result + (istuijian != null ? istuijian.hashCode() : 0);
        result = 31 * result + (isture != null ? isture.hashCode() : 0);
        return result;
    }
}
