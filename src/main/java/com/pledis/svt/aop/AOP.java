package com.pledis.svt.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AOP {
	
	@Before("execution(* com.iu.sb4.board.notice.*Service.get*(..))")
	public void noticeBefore()throws Exception{
		System.out.println("Point cut 실행 전 -------------");
	}
	
	@After("execution(* com.iu.sb4.board.notice.*Service.get*(..))")
	public void noticeAfter()throws Exception{
		System.out.println("Point cut 실행 후 -------------");
	}
	
	@Around("execution(* com.iu.sb4.board..*Service.set*(..))")
	public Object noticeAround(ProceedingJoinPoint joinPoint)throws Throwable{
		System.out.println("------- Point Cut 실행 전 --------");
		Object obj = null;
		
		obj = joinPoint.proceed(); // point cut 실행
		
		System.out.println("-------- Point Cut 실행 후 --------");
		
		return obj;
	}
}
