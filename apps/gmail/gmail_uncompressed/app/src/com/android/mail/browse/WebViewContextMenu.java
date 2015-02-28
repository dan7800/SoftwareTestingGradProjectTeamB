package com.android.mail.browse;

import android.app.*;
import android.net.*;
import android.content.pm.*;
import android.content.*;
import android.view.*;
import com.android.mail.a.*;
import java.nio.charset.*;
import java.io.*;
import java.net.*;
import android.webkit.*;

public final class WebViewContextMenu implements MenuItem$OnMenuItemClickListener, View$OnCreateContextMenuListener
{
    private final ar auG;
    private final boolean auH;
    private final boolean auI;
    private bh auJ;
    private final Activity pe;
    
    public WebViewContextMenu(final Activity pe, final ar auG) {
        boolean auI = true;
        this.pe = pe;
        this.auG = auG;
        final PackageManager packageManager = this.pe.getPackageManager();
        this.auH = (!packageManager.queryIntentActivities(new Intent("android.intent.action.DIAL", Uri.parse("tel:")), 65536).isEmpty() && auI);
        if (packageManager.queryIntentActivities(new Intent("android.intent.action.SENDTO", Uri.parse("smsto:")), 65536).isEmpty()) {
            auI = false;
        }
        this.auI = auI;
    }
    
    private static int a(final WebViewContextMenu$MenuType webViewContextMenu$MenuType) {
        switch (bf.auK[webViewContextMenu$MenuType.ordinal()]) {
            default: {
                throw new IllegalStateException("Unexpected MenuType");
            }
            case 1: {
                return 2131559093;
            }
            case 2: {
                return 2131559094;
            }
            case 3: {
                return 2131559095;
            }
            case 4: {
                return 2131559083;
            }
            case 5: {
                return 2131559084;
            }
            case 6: {
                return 2131559085;
            }
            case 7: {
                return 2131559086;
            }
            case 8: {
                return 2131559088;
            }
            case 9: {
                return 2131559057;
            }
            case 10: {
                return 2131559090;
            }
            case 11: {
                return 2131559091;
            }
        }
    }
    
    private void a(final String headerTitle, final ContextMenu contextMenu) {
        final MenuItem item = contextMenu.findItem(a(WebViewContextMenu$MenuType.auP));
        final PackageManager packageManager = this.pe.getPackageManager();
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        item.setVisible(packageManager.resolveActivity(intent, 65536) != null);
        contextMenu.setHeaderTitle((CharSequence)headerTitle);
        contextMenu.findItem(a(WebViewContextMenu$MenuType.auO)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bi(this, headerTitle, "copy_link"));
        contextMenu.findItem(a(WebViewContextMenu$MenuType.auN)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bj(this, new Intent("android.intent.action.VIEW", Uri.parse(headerTitle)), "open_link"));
        contextMenu.findItem(a(WebViewContextMenu$MenuType.auP)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bk(this, headerTitle, "share_link"));
    }
    
    protected static int b(final WebViewContextMenu$MenuType webViewContextMenu$MenuType) {
        switch (bf.auK[webViewContextMenu$MenuType.ordinal()]) {
            default: {
                throw new IllegalStateException("Unexpected MenuType");
            }
            case 3: {
                return 2131296482;
            }
        }
    }
    
    private void b(final String s, final ContextMenu contextMenu) {
        ConversationMessage bm;
        if (this.auJ != null) {
            bm = this.auJ.bm(s);
        }
        else {
            bm = null;
        }
        if (bm == null) {
            contextMenu.setGroupVisible(2131559096, false);
            return;
        }
        final Intent a = this.auG.a((Context)this.pe, s, bm);
        if (a == null) {
            contextMenu.setGroupVisible(2131559096, false);
            return;
        }
        contextMenu.findItem(2131559097).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bj(this, a, "view_image"));
        contextMenu.setGroupVisible(2131559096, true);
    }
    
    public final void a(final bh auJ) {
        this.auJ = auJ;
    }
    
    public final void onCreateContextMenu(final ContextMenu contextMenu, final View view, final ContextMenu$ContextMenuInfo contextMenu$ContextMenuInfo) {
        boolean b = true;
        final WebView$HitTestResult hitTestResult = ((WebView)view).getHitTestResult();
        if (hitTestResult == null) {
            return;
        }
        final int type = hitTestResult.getType();
        switch (type) {
            default: {
                this.pe.getMenuInflater().inflate(2131755030, (Menu)contextMenu);
                for (int i = 0; i < contextMenu.size(); ++i) {
                    contextMenu.getItem(i).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)this);
                }
                final String extra = hitTestResult.getExtra();
                boolean b2 = false;
                String headerTitle;
                MenuItem item;
                MenuItem item2;
                Intent intent;
                boolean b3 = false;
                boolean b4 = false;
                boolean b5 = false;
                String encode;
                Label_0629_Outer:Label_0950_Outer:
                while (true) {
                    Label_0240:Label_0611_Outer:Label_0617_Outer:Label_0623_Outer:
                    while (true) {
                        Label_0217: {
                            while (true) {
                                Label_0189: {
                                    while (true) {
                                        Label_0169: {
                                            while (true) {
                                                Label_0149: {
                                                    if (type == 2) {
                                                        b2 = b;
                                                        break Label_0149;
                                                    }
                                                    Label_0605: {
                                                        break Label_0605;
                                                        Label_0442_Outer:Label_0511_Outer:
                                                        while (true) {
                                                            a.oq().a("web_context_menu", "long_press", "phone", 0L);
                                                            while (true) {
                                                            Label_0656:
                                                                while (true) {
                                                                Label_0644:
                                                                    while (true) {
                                                                        try {
                                                                            headerTitle = URLDecoder.decode(extra, Charset.defaultCharset().name());
                                                                            if (headerTitle.startsWith(" ") && !headerTitle.startsWith("  ")) {
                                                                                headerTitle = headerTitle.replaceFirst(" ", "+");
                                                                            }
                                                                            contextMenu.setHeaderTitle((CharSequence)headerTitle);
                                                                            item = contextMenu.findItem(a(WebViewContextMenu$MenuType.auQ));
                                                                            if (!this.auH) {
                                                                                break Label_0644;
                                                                            }
                                                                            item.setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bj(this, new Intent("android.intent.action.DIAL", Uri.parse("tel:" + extra)), "dial"));
                                                                            item2 = contextMenu.findItem(a(WebViewContextMenu$MenuType.auR));
                                                                            if (this.auI) {
                                                                                item2.setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bj(this, new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + extra)), "sms"));
                                                                                intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                                                                                intent.setType("vnd.android.cursor.item/contact");
                                                                                intent.putExtra("phone", headerTitle);
                                                                                contextMenu.findItem(a(WebViewContextMenu$MenuType.auS)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bj(this, intent, "add_contact"));
                                                                                contextMenu.findItem(a(WebViewContextMenu$MenuType.auT)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bi(this, extra, "copy_phone"));
                                                                                return;
                                                                            }
                                                                            break Label_0656;
                                                                            b = false;
                                                                            break Label_0240;
                                                                            b3 = false;
                                                                            break Label_0169;
                                                                            b2 = false;
                                                                            break;
                                                                            b4 = false;
                                                                            break Label_0189;
                                                                            b5 = false;
                                                                            break Label_0217;
                                                                        }
                                                                        catch (UnsupportedEncodingException ex) {
                                                                            headerTitle = extra;
                                                                            continue Label_0442_Outer;
                                                                        }
                                                                        break;
                                                                    }
                                                                    item.setVisible(false);
                                                                    continue Label_0511_Outer;
                                                                }
                                                                item2.setVisible(false);
                                                                continue Label_0629_Outer;
                                                            }
                                                        }
                                                    }
                                                }
                                                contextMenu.setGroupVisible(2131559082, b2);
                                                if (type != 4) {
                                                    continue Label_0617_Outer;
                                                }
                                                break;
                                            }
                                            b3 = b;
                                        }
                                        contextMenu.setGroupVisible(2131559087, b3);
                                        if (type != 3) {
                                            continue Label_0623_Outer;
                                        }
                                        break;
                                    }
                                    b4 = b;
                                }
                                contextMenu.setGroupVisible(2131559089, b4);
                                if (type != 7 && type != 8) {
                                    continue;
                                }
                                break;
                            }
                            b5 = b;
                        }
                        contextMenu.setGroupVisible(2131559092, b5);
                        if (type != 5 && type != 8) {
                            continue Label_0611_Outer;
                        }
                        break;
                    }
                    contextMenu.setGroupVisible(2131559096, b);
                Label_0926_Outer:
                    while (true) {
                    Label_0981_Outer:
                        while (true) {
                            while (true) {
                                switch (type) {
                                    default: {
                                        return;
                                    }
                                    case 2: {
                                        continue Label_0629_Outer;
                                    }
                                    case 4: {
                                        a.oq().a("web_context_menu", "long_press", "email", 0L);
                                        contextMenu.setHeaderTitle((CharSequence)extra);
                                        contextMenu.findItem(a(WebViewContextMenu$MenuType.auU)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bj(this, new Intent("android.intent.action.VIEW", Uri.parse("mailto:" + extra)), "send_email"));
                                        contextMenu.findItem(a(WebViewContextMenu$MenuType.auV)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bi(this, extra, "copy_email"));
                                        return;
                                    }
                                    case 3: {
                                        a.oq().a("web_context_menu", "long_press", "geo", 0L);
                                        contextMenu.setHeaderTitle((CharSequence)extra);
                                        encode = "";
                                        while (true) {
                                            try {
                                                encode = URLEncoder.encode(extra, Charset.defaultCharset().name());
                                                contextMenu.findItem(a(WebViewContextMenu$MenuType.auW)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bj(this, new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + encode)), "view_map"));
                                                contextMenu.findItem(a(WebViewContextMenu$MenuType.auX)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new bi(this, extra, "copy_geo"));
                                                return;
                                                a.oq().a("web_context_menu", "long_press", "src_image_anchor", 0L);
                                                this.a(extra, contextMenu);
                                                this.b(extra, contextMenu);
                                                return;
                                                a.oq().a("web_context_menu", "long_press", "src_anchor", 0L);
                                                this.a(extra, contextMenu);
                                                return;
                                                a.oq().a("web_context_menu", "long_press", "image", 0L);
                                                this.b(extra, contextMenu);
                                                return;
                                            }
                                            catch (UnsupportedEncodingException ex2) {
                                                continue Label_0950_Outer;
                                            }
                                            break;
                                        }
                                        break;
                                    }
                                    case 7: {
                                        continue Label_0981_Outer;
                                    }
                                    case 8: {
                                        continue Label_0926_Outer;
                                    }
                                    case 5: {
                                        continue;
                                    }
                                }
                                break;
                            }
                            break;
                        }
                        break;
                    }
                    break;
                }
                break;
            }
            case 0: {
                a.oq().a("web_context_menu", "long_press", "unknown", 0L);
            }
            case 9: {
                a.oq().a("web_context_menu", "long_press", "edit_text", 0L);
            }
        }
    }
    
    public final boolean onMenuItemClick(final MenuItem menuItem) {
        return this.pe.onOptionsItemSelected(menuItem);
    }
}
