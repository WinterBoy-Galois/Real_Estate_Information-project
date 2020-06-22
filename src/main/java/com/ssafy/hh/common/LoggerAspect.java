package com.ssafy.hh.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggerAspect {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Before("execution(* com.ssafy.hh..controller.MoveController.*(..))")
    public void doSomethingBefore(JoinPoint joinPoint) {
        logger.info("LoggerAspect : Before " + joinPoint.getTarget().getClass() + "." + joinPoint.getSignature().getName() + "()");
    }
}
