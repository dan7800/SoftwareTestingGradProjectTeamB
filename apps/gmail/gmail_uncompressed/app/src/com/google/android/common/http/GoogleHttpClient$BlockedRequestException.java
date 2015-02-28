package com.google.android.common.http;

import java.io.*;

public class GoogleHttpClient$BlockedRequestException extends IOException
{
    private final j mRule;
    
    GoogleHttpClient$BlockedRequestException(final j mRule) {
        super("Blocked by rule: " + mRule.mName);
        this.mRule = mRule;
    }
}
