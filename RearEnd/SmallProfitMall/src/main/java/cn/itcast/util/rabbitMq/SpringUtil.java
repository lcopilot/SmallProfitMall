package cn.itcast.util.rabbitMq;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;

/**
 * @program: SmallProfitMall
 * @auther: MuGe
 * @date: 2020/3/16
 * @time: 12:36
 * @description:
 */
public class SpringUtil {
	private static ApplicationContext applicationContext; // Spring应用上下文环境

	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		SpringUtil.applicationContext = applicationContext;
	}

	public static ApplicationContext getApplicationContext() {
		return applicationContext;
	}

	@SuppressWarnings("unchecked")
	public static <T> T getBean(String name) throws BeansException {
		return (T) applicationContext.getBean(name);
	}

	@SuppressWarnings("unchecked")
	public static <T> T getBean(Class<?> clz) throws BeansException {
		return (T) applicationContext.getBean(clz);
	}

}
