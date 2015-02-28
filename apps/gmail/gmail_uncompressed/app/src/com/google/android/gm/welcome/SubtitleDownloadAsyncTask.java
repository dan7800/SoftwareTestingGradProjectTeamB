package com.google.android.gm.welcome;

import android.os.*;
import java.util.*;
import android.content.*;
import com.google.android.gsf.*;
import com.android.mail.utils.*;
import java.net.*;
import java.io.*;
import android.text.*;

public final class SubtitleDownloadAsyncTask extends AsyncTask<Locale, Integer, File[]>
{
    private final n bsk;
    private File bsl;
    private final String bsm;
    
    public SubtitleDownloadAsyncTask(final Context context, final n bsk, final boolean b) {
        this.bsk = bsk;
        this.bsl = context.getCacheDir();
        String s;
        String s2;
        if (b) {
            s = "gmail_welcome_tour_srt_new";
            s2 = "http://gstatic.com/android/gmail/welcome/1/srt_new/{{LANG}}.srt";
        }
        else {
            s = "gmail_welcome_tour_srt_upgrading";
            s2 = "http://gstatic.com/android/gmail/welcome/1/srt_upgrading/{{LANG}}.srt";
        }
        this.bsm = c.a(context.getContentResolver(), s, s2);
    }
    
    private File a(final URL url) {
        E.b("WelcomeTour", "Downloading %s", url);
        final HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
        if (httpURLConnection.getResponseCode() == 200) {
            final InputStream inputStream = httpURLConnection.getInputStream();
            final File tempFile = File.createTempFile("tmp", ".srt", this.bsl);
            final FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
            final byte[] array = new byte[1024];
            while (true) {
                final int read = inputStream.read(array);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(array, 0, read);
            }
            return tempFile;
        }
        if (httpURLConnection.getResponseCode() == 404) {
            throw new SubtitleDownloadAsyncTask$HttpResourceNotFoundException(this, url.toString());
        }
        throw new UnsupportedOperationException(String.format("Cannot handle http code %d for  %s", httpURLConnection.getResponseCode(), url));
    }
    
    private File[] a(final Locale... array) {
        final File[] array2 = new File[array.length];
        int i = 0;
        while (i < array.length) {
            try {
                array2[i] = this.c(array[i]);
                ++i;
            }
            catch (IOException ex) {}
            catch (UnsupportedOperationException ex2) {
                goto Label_0032;
            }
        }
        goto Label_0049;
    }
    
    private File c(Locale locale) {
        while (true) {
            try {
                final String replace = this.bsm.replace("{{LANG}}", locale.toString());
                E.c("WelcomeTour", "Loading subtitles for Welcome video in locale %s from %s", locale, replace);
                return this.a(new URL(replace));
            }
            catch (SubtitleDownloadAsyncTask$HttpResourceNotFoundException ex) {
                if (!TextUtils.isEmpty((CharSequence)locale.getCountry())) {
                    final Locale locale2 = new Locale(locale.getLanguage());
                    E.b("WelcomeTour", "Falling back to parent language %s", locale2);
                    locale = locale2;
                    continue;
                }
                return null;
            }
            break;
        }
    }
}
