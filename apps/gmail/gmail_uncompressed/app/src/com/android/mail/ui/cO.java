package com.android.mail.ui;

import java.net.*;
import java.io.*;
import android.nfc.*;

final class co implements NfcAdapter$CreateNdefMessageCallback
{
    private static NdefMessage cq(final String s) {
        while (true) {
            try {
                final byte[] array = URLEncoder.encode(s, "UTF-8").getBytes("UTF-8");
                final byte[] array2 = new byte[1 + array.length];
                array2[0] = 6;
                System.arraycopy(array, 0, array2, 1, array.length);
                return new NdefMessage(new NdefRecord[] { new NdefRecord((short)1, NdefRecord.RTD_URI, new byte[0], array2) });
            }
            catch (UnsupportedEncodingException ex) {
                final byte[] array = s.getBytes();
                continue;
            }
            break;
        }
    }
    
    public final NdefMessage createNdefMessage(final NfcEvent nfcEvent) {
        if (MailActivity.aLb == null) {
            return null;
        }
        return cq(MailActivity.aLb);
    }
}
