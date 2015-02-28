package com.android.emailcommon.mail;

public class MessagingException extends Exception
{
    public static final long serialVersionUID = -1L;
    protected Object mExceptionData;
    protected int mExceptionType;
    
    public MessagingException(final int n) {
        this(n, null, null);
    }
    
    public MessagingException(final int n, final String s) {
        this(n, s, null);
    }
    
    public MessagingException(final int mExceptionType, final String s, final Object mExceptionData) {
        super(s);
        this.mExceptionType = mExceptionType;
        this.mExceptionData = mExceptionData;
    }
    
    public MessagingException(final int mExceptionType, final String s, final Throwable t) {
        super(s, t);
        this.mExceptionType = mExceptionType;
        this.mExceptionData = null;
    }
    
    public MessagingException(final String s) {
        this(0, s, null);
    }
    
    public MessagingException(final String s, final Throwable t) {
        this(0, s, t);
    }
    
    public final int lr() {
        return this.mExceptionType;
    }
    
    public final Object ls() {
        return this.mExceptionData;
    }
}
