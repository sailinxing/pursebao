package com.pursebao.commons.tools;

import java.util.UUID;

/**
 * 主键生成策略
 * @author Administrator
 *
 */
public class UUIDCreator {

	public static String createUUID() {

		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	

}
