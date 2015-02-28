package com.android.mail.browse;

public class GmailConversationProvider extends A
{
    @Override
    protected final String getAuthority() {
        return "com.google.android.gm2.conversation.provider";
    }
}
