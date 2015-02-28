package com.google.android.apiary;

import java.io.*;
import com.google.android.common.http.*;

public class GoogleRequestInitializer$BlockedRequestException extends IOException
{
    private GoogleRequestInitializer$BlockedRequestException(final j j) {
        super("Blocked by rule: " + j.mName);
    }
}
