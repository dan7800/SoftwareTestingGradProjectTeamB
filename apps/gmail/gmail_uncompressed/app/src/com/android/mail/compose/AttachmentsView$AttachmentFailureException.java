package com.android.mail.compose;

class AttachmentsView$AttachmentFailureException extends Exception
{
    private static final long serialVersionUID = 1L;
    private final int errorRes;
    
    public AttachmentsView$AttachmentFailureException(final String s) {
        super(s);
        this.errorRes = 2131296402;
    }
    
    public AttachmentsView$AttachmentFailureException(final String s, final int errorRes) {
        super(s);
        this.errorRes = errorRes;
    }
    
    public AttachmentsView$AttachmentFailureException(final String s, final Throwable t) {
        super(s, t);
        this.errorRes = 2131296402;
    }
    
    public final int si() {
        return this.errorRes;
    }
}
