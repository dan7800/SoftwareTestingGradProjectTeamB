package com.android.mail.browse;

public class EmailConversationProvider extends A
{
    private static String ary;
    
    @Override
    protected final String getAuthority() {
        if (EmailConversationProvider.ary == null) {
            EmailConversationProvider.ary = this.getContext().getString(2131296995);
        }
        return EmailConversationProvider.ary;
    }
}
