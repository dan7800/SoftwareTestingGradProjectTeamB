package com.android.email.mail.store;

import com.android.emailcommon.mail.*;

class ImapStore$ImapException extends MessagingException
{
    private static final long serialVersionUID = 1L;
    private final String mAlertText;
    private final String mResponseCode;
    private final String mStatus;
    
    public ImapStore$ImapException(final String s, final String mStatus, final String mAlertText, final String mResponseCode) {
        super(s);
        this.mStatus = mStatus;
        this.mAlertText = mAlertText;
        this.mResponseCode = mResponseCode;
    }
    
    public final String jk() {
        return this.mStatus;
    }
    
    public final String jl() {
        return this.mAlertText;
    }
    
    public final String jm() {
        return this.mResponseCode;
    }
}
