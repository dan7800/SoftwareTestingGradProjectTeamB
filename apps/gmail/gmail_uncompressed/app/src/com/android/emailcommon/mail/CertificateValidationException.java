package com.android.emailcommon.mail;

public class CertificateValidationException extends MessagingException
{
    public static final long serialVersionUID = -1L;
    
    public CertificateValidationException(final String s, final Throwable t) {
        super(10, s, t);
    }
}
