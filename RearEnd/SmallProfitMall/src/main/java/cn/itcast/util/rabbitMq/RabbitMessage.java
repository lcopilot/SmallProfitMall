package cn.itcast.util.rabbitMq;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/**
 * @program: SmallProfitMall
 * @auther: MuGe
 * @date: 2020/3/16
 * @time: 12:32
 * @description:
 */
public class RabbitMessage {
	private static final long serialVersionUID = -6487839157908352120L;

	private Class<?>[] paramTypes;// 参数类型
	private String exchange;// 交换器

	private Object[] params;

	private String routeKey;// 路由key

	private String methodName;
	private String beanName;
	public RabbitMessage() {
	}

	public RabbitMessage(String exchange, String routeKey, Object... params) {
		this.params = params;
		this.exchange = exchange;
		this.routeKey = routeKey;
	}

	@SuppressWarnings("rawtypes")
	public RabbitMessage(String exchange, String routeKey,String beanName, String methodName, Object... params) {
		this.params = params;
		this.exchange = exchange;
		this.routeKey = routeKey;
		this.methodName=methodName;
		this.beanName=beanName;
		int len = params.length;
		Class[] clazzArray = new Class[len];
		for (int i = 0; i < len; i++)
			clazzArray[i] = params[i].getClass();
		this.paramTypes = clazzArray;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Class<?>[] getParamTypes() {
		return paramTypes;
	}

	public void setParamTypes(Class<?>[] paramTypes) {
		this.paramTypes = paramTypes;
	}

	public String getExchange() {
		return exchange;
	}

	public void setExchange(String exchange) {
		this.exchange = exchange;
	}

	public Object[] getParams() {
		return params;
	}

	public void setParams(Object[] params) {
		this.params = params;
	}

	public String getRouteKey() {
		return routeKey;
	}

	public void setRouteKey(String routeKey) {
		this.routeKey = routeKey;
	}

	public String getMethodName() {
		return methodName;
	}

	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}

	public String getBeanName() {
		return beanName;
	}

	public void setBeanName(String beanName) {
		this.beanName = beanName;
	}

	public byte[] getSerialBytes() {
		byte[] res = new byte[0];
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		ObjectOutputStream oos;
		try {
			oos = new ObjectOutputStream(baos);
			oos.writeObject(this);
			oos.close();
			res = baos.toByteArray();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return res;
	}
}
