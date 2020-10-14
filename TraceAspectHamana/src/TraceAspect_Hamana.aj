
public aspect TraceAspect_Hamana {
	pointcut classToTrace(): within(*App);
	pointcut methodToTrace(): classToTrace() && execution(String getName());
	
	before(): methodToTrace() {
		String info = thisJoinPointStaticPart.getSignature() + " , "
	 + thisJoinPointStaticPart.getSourceLocation().getLine();	
		
	System.out.println("Before the method: " + info);
	}
	
	after(): methodToTrace() {
		System.out.println("After the method: " + thisJoinPoint.getSourceLocation().getFileName());
	}
}
