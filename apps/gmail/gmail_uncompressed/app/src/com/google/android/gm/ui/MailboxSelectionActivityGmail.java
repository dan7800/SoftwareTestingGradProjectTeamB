package com.google.android.gm.ui;

import com.android.mail.ui.*;

public class MailboxSelectionActivityGmail extends MailboxSelectionActivity
{
    @Override
    protected final Class<?> zK() {
        return FolderSelectionActivityGmail.class;
    }
}
