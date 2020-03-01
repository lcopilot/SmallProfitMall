package cn.itcast.domain;

import jdk.nashorn.internal.runtime.ListAdapter;
import org.springframework.stereotype.Controller;

import java.io.Serializable;
import java.util.List;

@Controller("seckillResult")
public class SeckillResult implements Serializable {
    private String currentTime;       //当前时间
    private Long SpikeTime;         //两小时后时间
    private List[] seckillProduct ;

    public List[] getSeckillProduct() {
        return seckillProduct;
    }

    public void setSeckillProduct(List[] seckillProduct) {
        this.seckillProduct = seckillProduct;
    }

    public String getCurrentTime() {
        return currentTime;
    }

    public void setCurrentTime(String currentTime) {
        this.currentTime = currentTime;
    }

    public Long getSpikeTime() {
        return SpikeTime;
    }

    public void setSpikeTime(Long spikeTime) {
        SpikeTime = spikeTime;
    }
}
