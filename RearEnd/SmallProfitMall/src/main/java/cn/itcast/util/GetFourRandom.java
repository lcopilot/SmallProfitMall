package cn.itcast.util;

import org.springframework.stereotype.Controller;

import java.util.Random;
//参数随机数工具类
@Controller("getFourRandom")
public class GetFourRandom {
    /**
     * 产生4位随机数(0000-9999)
     * @return 4位随机数
     */
    public String getFourRandom(){
        Random random = new Random();
        String fourRandom = random.nextInt(10000) + "";
        int randLength = fourRandom.length();
        if(randLength<4){
            for(int i=1; i<=4-randLength; i++)
                fourRandom = "0" + fourRandom  ;
        }
        return fourRandom;
    }

}
