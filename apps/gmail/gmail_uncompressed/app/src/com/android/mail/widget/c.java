package com.android.mail.widget;

import android.os.*;
import android.content.*;
import com.android.mail.i.*;
import android.text.*;
import android.net.*;
import com.android.mail.utils.*;
import android.database.*;
import com.android.mail.providers.*;

final class c extends AsyncTask<Void, Void, Void>
{
    private final int[] aQZ;
    final /* synthetic */ b aRa;
    private final Context mContext;
    
    public c(final b aRa, final Context mContext, final int[] aqz) {
        this.aRa = aRa;
        this.mContext = mContext;
        this.aQZ = aqz;
    }
    
    private Void ko() {
        int i = 0;
    Label_0164_Outer:
        while (i < this.aQZ.length) {
            String ct = g.ao(this.mContext).ct(this.aQZ[i]);
            while (true) {
                while (true) {
                    Uri uri = null;
                    Label_0063: {
                        if (TextUtils.isEmpty((CharSequence)ct)) {
                            uri = null;
                            ct = null;
                            break Label_0063;
                        }
                        final String[] split = TextUtils.split(ct, " ");
                        if (split.length == 2) {
                            ct = split[0];
                            uri = Uri.parse(split[1]);
                            break Label_0063;
                        }
                        Label_0243: {
                            break Label_0243;
                            while (true) {
                                final Cursor query;
                                Folder folder = null;
                                b aRa;
                                Context mContext;
                                int n;
                                int type;
                                int ayg;
                                Uri aAc;
                                String name;
                                final Account g;
                                final Uri abx;
                                Label_0200_Outer:Label_0208_Outer:Label_0216_Outer:
                                while (true) {
                                    Label_0304: {
                                        while (true) {
                                        Label_0292:
                                            while (true) {
                                            Label_0282:
                                                while (true) {
                                                Label_0272:
                                                    while (true) {
                                                        Label_0262: {
                                                            try {
                                                                if (!query.moveToFirst()) {
                                                                    break Label_0304;
                                                                }
                                                                folder = new Folder(query);
                                                                query.close();
                                                                aRa = this.aRa;
                                                                mContext = this.mContext;
                                                                n = this.aQZ[i];
                                                                if (folder != null) {
                                                                    break Label_0262;
                                                                }
                                                                type = 1;
                                                                if (folder != null) {
                                                                    break Label_0272;
                                                                }
                                                                ayg = 0;
                                                                if (folder != null) {
                                                                    break Label_0282;
                                                                }
                                                                aAc = null;
                                                                if (folder == null) {
                                                                    name = null;
                                                                    aRa.b(mContext, n, g, type, ayg, abx, aAc, name);
                                                                    ++i;
                                                                    continue Label_0164_Outer;
                                                                }
                                                                break Label_0292;
                                                                uri = Uri.EMPTY;
                                                                break;
                                                            }
                                                            finally {
                                                                query.close();
                                                            }
                                                        }
                                                        type = folder.type;
                                                        continue Label_0200_Outer;
                                                    }
                                                    ayg = folder.ayg;
                                                    continue Label_0208_Outer;
                                                }
                                                aAc = folder.aAc;
                                                continue Label_0216_Outer;
                                            }
                                            name = folder.name;
                                            continue;
                                        }
                                    }
                                    folder = null;
                                    continue Label_0164_Outer;
                                }
                            }
                        }
                    }
                    Account g;
                    if (!TextUtils.isEmpty((CharSequence)ct)) {
                        g = this.aRa.g(this.mContext, ct);
                    }
                    else {
                        g = null;
                    }
                    Uri abx;
                    if (ag.D(uri) && g != null) {
                        abx = g.ayw.aBX;
                    }
                    else {
                        abx = uri;
                    }
                    if (abx != null) {
                        final Cursor query = this.mContext.getContentResolver().query(abx, E.aCv, (String)null, (String[])null, (String)null);
                        if (query != null) {
                            continue Label_0164_Outer;
                        }
                    }
                    break;
                }
                Folder folder = null;
                continue;
            }
        }
        return null;
    }
}
