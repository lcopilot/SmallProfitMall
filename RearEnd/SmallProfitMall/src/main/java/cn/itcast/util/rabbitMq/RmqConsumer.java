package cn.itcast.util.rabbitMq;

import java.lang.reflect.Method;
import org.apache.log4j.Logger;

/**
 * @program: SmallProfitMall
 * @auther: MuGe
 * @date: 2020/3/16
 * @time: 12:35
 * @description:
 */
public class RmqConsumer {
	private static Logger log= Logger.getLogger(RmqConsumer.class);
	public static Object rmqProducerMessage(Object object) throws Exception{
		RabbitMessage rabbitMessage=(RabbitMessage) object;
		log.info("从队列里头取出：bean名-"+rabbitMessage.getBeanName()+",方法名："+rabbitMessage.getMethodName());
		Object o = SpringUtil.getBean(rabbitMessage.getBeanName());
		Class clazz = o.getClass();
		Method m=clazz.getDeclaredMethod(rabbitMessage.getMethodName(), rabbitMessage.getParamTypes());
		Object invoke = m.invoke(o,rabbitMessage.getParams());
		return 	invoke;
	}

}
