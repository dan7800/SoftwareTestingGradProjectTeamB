package android.support.v7.internal.view;

import android.app.*;
import android.content.*;
import android.support.v4.b.a.*;
import org.xmlpull.v1.*;
import java.io.*;
import android.util.*;
import android.support.v4.view.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.a.*;
import android.view.*;
import android.content.res.*;

public final class e extends MenuInflater
{
    private static final Class<?>[] vt;
    private static final Class<?>[] vu;
    private Context mContext;
    private final Object[] vv;
    private final Object[] vw;
    private Object vx;
    
    static {
        vu = (vt = new Class[] { Context.class });
    }
    
    public e(final Context mContext) {
        super(mContext);
        this.mContext = mContext;
        this.vv = new Object[] { mContext };
        this.vw = this.vv;
    }
    
    private void a(final XmlPullParser xmlPullParser, final AttributeSet set, final Menu menu) {
        final g g = new g(this, menu);
        int i = xmlPullParser.getEventType();
        String name3;
        while (true) {
            while (i != 2) {
                i = xmlPullParser.next();
                if (i == 1) {
                    Object o = null;
                    int n = 0;
                    int n2 = i;
                    int j = 0;
                    while (j == 0) {
                        int n3 = 0;
                        Label_0100: {
                            switch (n2) {
                                case 2: {
                                    if (n != 0) {
                                        break;
                                    }
                                    final String name = xmlPullParser.getName();
                                    if (name.equals("group")) {
                                        g.a(set);
                                        n3 = n;
                                        break Label_0100;
                                    }
                                    if (name.equals("item")) {
                                        g.b(set);
                                        n3 = n;
                                        break Label_0100;
                                    }
                                    if (name.equals("menu")) {
                                        this.a(xmlPullParser, set, (Menu)g.ds());
                                        n3 = n;
                                        break Label_0100;
                                    }
                                    o = name;
                                    n3 = 1;
                                    break Label_0100;
                                }
                                case 3: {
                                    final String name2 = xmlPullParser.getName();
                                    if (n != 0 && name2.equals(o)) {
                                        o = null;
                                        n3 = 0;
                                        break Label_0100;
                                    }
                                    if (name2.equals("group")) {
                                        g.dq();
                                        n3 = n;
                                        break Label_0100;
                                    }
                                    if (name2.equals("item")) {
                                        if (g.dt()) {
                                            break;
                                        }
                                        if (g.vY != null && g.vY.hasSubMenu()) {
                                            g.ds();
                                            n3 = n;
                                            break Label_0100;
                                        }
                                        g.dr();
                                        n3 = n;
                                        break Label_0100;
                                    }
                                    else {
                                        if (name2.equals("menu")) {
                                            j = 1;
                                            n3 = n;
                                            break Label_0100;
                                        }
                                        break;
                                    }
                                    break;
                                }
                                case 1: {
                                    throw new RuntimeException("Unexpected end of document");
                                }
                            }
                            n3 = n;
                        }
                        final int next = xmlPullParser.next();
                        final int n4 = n3;
                        n2 = next;
                        n = n4;
                    }
                    return;
                }
            }
            name3 = xmlPullParser.getName();
            if (name3.equals("menu")) {
                i = xmlPullParser.next();
                continue;
            }
            break;
        }
        throw new RuntimeException("Expecting menu, got " + name3);
    }
    
    public final void inflate(final int n, final Menu menu) {
        if (!(menu instanceof a)) {
            super.inflate(n, menu);
            return;
        }
        Object layout = null;
        try {
            layout = this.mContext.getResources().getLayout(n);
            this.a((XmlPullParser)layout, Xml.asAttributeSet((XmlPullParser)layout), menu);
        }
        catch (XmlPullParserException ex) {
            throw new InflateException("Error inflating menu XML", (Throwable)ex);
        }
        catch (IOException ex2) {
            throw new InflateException("Error inflating menu XML", (Throwable)ex2);
        }
        finally {
            if (layout != null) {
                ((XmlResourceParser)layout).close();
            }
        }
    }
}
