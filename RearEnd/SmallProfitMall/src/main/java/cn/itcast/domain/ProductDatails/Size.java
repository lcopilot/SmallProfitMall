package cn.itcast.domain.ProductDatails;

import java.io.Serializable;

public class Size implements Serializable {
    private String sizeOne;
    private String sizeTwo;
    private String sizeThree;

    public String getSizeOne() {
        return sizeOne;
    }

    public void setSizeOne(String sizeOne) {
        this.sizeOne = sizeOne;
    }

    public String getSizeTwo() {
        return sizeTwo;
    }

    public void setSizeTwo(String sizeTwo) {
        this.sizeTwo = sizeTwo;
    }

    public String getSizeThree() {
        return sizeThree;
    }

    public void setSizeThree(String sizeThree) {
        this.sizeThree = sizeThree;
    }
}
