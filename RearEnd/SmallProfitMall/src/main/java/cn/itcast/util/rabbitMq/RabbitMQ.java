package cn.itcast.util.rabbitMq;

import javax.annotation.Resource;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Value;

/**
 * @program: SmallProfitMall
 * @auther: MuGe
 * @date: 2020/3/16
 * @time: 12:33
 * @description:
 */
public class RabbitMQ {
	@Resource
	private RabbitTemplate rabbitTemplate;
	@Value("${exchange}")
	private String exchange;
	@Value("${routeKey}")
	private String routeKey;
	public void pushMessageToMQ(String className, String methodName,Object... param) {
		RabbitMessage  msg=new RabbitMessage(exchange,routeKey,className, methodName, param);
		try {
			rabbitTemplate.convertAndSend(msg.getExchange(), msg.getRouteKey(), msg);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	/**
	 * 同步
	 */
	public Object pushAndReceiveMessageToMQ(String className, String methodName,Object... param) {
		RabbitMessage  msg=new RabbitMessage(exchange,routeKey,className, methodName, param);
		Object obj=null;
		try {
			obj= rabbitTemplate.convertSendAndReceive(msg.getExchange(), msg.getRouteKey(), msg);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return obj;
	}


}
