package com.google.android.gm.provider;

public class CompressedMessageCursor$CorruptedMessageException extends RuntimeException
{
    private final long mMessageId;
    final /* synthetic */ CompressedMessageCursor this$0;
    
    public CompressedMessageCursor$CorruptedMessageException(final CompressedMessageCursor this$0, final long mMessageId, final Throwable t) {
        this.this$0 = this$0;
        final StringBuilder sb = new StringBuilder("Failed to decompress message");
        String string;
        if (mMessageId >= 0L) {
            string = " " + mMessageId;
        }
        else {
            string = "";
        }
        super(sb.append(string).toString(), t);
        this.mMessageId = mMessageId;
    }
    
    public final long sM() {
        return this.mMessageId;
    }
}
