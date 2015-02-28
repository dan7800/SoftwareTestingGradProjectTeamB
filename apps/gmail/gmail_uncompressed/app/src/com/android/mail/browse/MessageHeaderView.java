package com.android.mail.browse;

import com.android.mail.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import android.support.v4.e.*;
import android.database.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import com.android.mail.text.*;
import android.text.style.*;
import android.annotation.*;
import com.android.mail.compose.*;
import com.android.mail.providers.*;
import android.text.method.*;
import android.text.*;
import com.android.mail.utils.*;
import com.android.mail.ui.*;
import android.widget.*;
import android.view.*;
import java.io.*;

public class MessageHeaderView extends aU implements View$OnClickListener, PopupMenu$OnMenuItemClickListener, q
{
    private static final String mW;
    private View BI;
    private String YZ;
    private m alu;
    private b aqL;
    private Map<String, Address> aqQ;
    private a aqT;
    private ConversationMessage aqZ;
    private PopupMenu arV;
    private ViewGroup asA;
    private ViewGroup asB;
    private SpamWarningView asC;
    private TextView asD;
    private MessageInviteView asE;
    private View asF;
    private View asG;
    private View asH;
    private TextView asI;
    private View asJ;
    private View asK;
    private View asL;
    private final aj asM;
    private String[] asN;
    private String[] asO;
    private String[] asP;
    private String[] asQ;
    private String[] asR;
    private boolean asS;
    private int asT;
    private Address asU;
    private boolean asV;
    private boolean asW;
    private boolean asX;
    private boolean asY;
    private AsyncQueryHandler asZ;
    private ae asg;
    private aH asp;
    private View asq;
    private ViewGroup asr;
    private View ass;
    private View ast;
    private TextView asu;
    private TextView asv;
    private TextView asw;
    private View asx;
    private TextView asy;
    private MessageHeaderContactBadge asz;
    private boolean ata;
    private final String atb;
    private final DataSetObserver atc;
    private boolean atd;
    private com.android.mail.utils.aj ate;
    private boolean atf;
    private com.android.mail.h.a atg;
    private final int ath;
    private final int ati;
    private final int atj;
    private boolean atk;
    private final LayoutInflater wC;
    
    static {
        mW = D.AU();
    }
    
    public MessageHeaderView(final Context context) {
        this(context, null);
    }
    
    public MessageHeaderView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public MessageHeaderView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.asS = false;
        this.atc = new aF(this);
        this.atd = true;
        this.atf = false;
        this.atk = false;
        this.asM = new aj(this.getContext());
        this.wC = LayoutInflater.from(context);
        this.atb = context.getString(2131296505);
        final Resources resources = this.getResources();
        this.ath = resources.getDimensionPixelSize(2131493023);
        this.ati = resources.getDimensionPixelSize(2131493024);
        this.atj = resources.getDimensionPixelSize(2131492999);
    }
    
    private static void a(final int visibility, final View... array) {
        for (final View view : array) {
            if (view != null) {
                view.setVisibility(visibility);
            }
        }
    }
    
    private static void a(final Resources resources, final int n, final int n2, final String[] array, final String s, final View view, final Map<String, Address> map, final Account account, final com.android.mail.utils.aj aj, final a a) {
        if (array == null || array.length == 0) {
            return;
        }
        final String[] array2 = new String[array.length];
        for (int i = 0; i < array.length; ++i) {
            final Address a2 = ag.a(map, array[i]);
            String s2 = a2.lj();
            String address = a2.getAddress();
            int n3;
            if (aj != null && aj.cM(address)) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            if (n3 != 0) {
                address = "";
                if (TextUtils.isEmpty((CharSequence)s2)) {
                    s2 = resources.getString(2131296634);
                }
                else {
                    s2 += resources.getString(2131296633);
                }
            }
            if (s2 == null || s2.length() == 0 || s2.equalsIgnoreCase(address)) {
                array2[i] = a.unicodeWrap(address);
            }
            else if (s != null) {
                array2[i] = resources.getString(2131296541, new Object[] { a.unicodeWrap(s2), a.unicodeWrap(address), a.unicodeWrap(s) });
            }
            else {
                array2[i] = resources.getString(2131296540, new Object[] { a.unicodeWrap(s2), a.unicodeWrap(address) });
            }
        }
        view.findViewById(n).setVisibility(0);
        final TextView textView = (TextView)view.findViewById(n2);
        textView.setText((CharSequence)TextUtils.join((CharSequence)"\n", (Object[])array2));
        a(textView, account);
        textView.setVisibility(0);
    }
    
    private static void a(final TextView textView, final Account account) {
        final Spannable spannable = (Spannable)textView.getText();
        for (final URLSpan urlSpan : textView.getUrls()) {
            final int spanStart = spannable.getSpanStart((Object)urlSpan);
            final int spanEnd = spannable.getSpanEnd((Object)urlSpan);
            spannable.removeSpan((Object)urlSpan);
            spannable.setSpan((Object)new EmailAddressSpan(account, urlSpan.getURL().substring(7)), spanStart, spanEnd, 33);
        }
    }
    
    private void aC(final boolean activated) {
        this.setActivated(activated);
        if (this.asg != null) {
            this.asg.aC(activated);
        }
    }
    
    private void aH(final boolean b) {
        if (this.asg == null) {
            return;
        }
        new com.android.mail.f.b();
        com.android.mail.f.b.td();
        this.asX = false;
        this.asY = false;
        this.aqZ = this.asg.qL();
        final Account on = this.oN();
        final boolean b2 = on != null && on.ayw.aCg == 0;
        boolean asW = false;
        MessageHeaderView messageHeaderView2 = null;
        Label_0082: {
            MessageHeaderView messageHeaderView;
            if (!this.aqZ.vD()) {
                messageHeaderView = this;
            }
            else {
                if (this.asp.isSecure()) {
                    asW = true;
                    messageHeaderView2 = this;
                    break Label_0082;
                }
                if (!b2) {
                    asW = true;
                    messageHeaderView2 = this;
                    break Label_0082;
                }
                messageHeaderView = this;
            }
            messageHeaderView2 = messageHeaderView;
            asW = false;
        }
        messageHeaderView2.asW = asW;
        this.aC(this.asg.qp());
        this.asN = this.aqZ.vs();
        this.asO = this.aqZ.vu();
        this.asP = this.aqZ.vw();
        this.asQ = this.aqZ.vy();
        this.asR = this.aqZ.vA();
        final int aBk = this.aqZ.aBk;
        boolean asS = false;
        if (aBk != 0) {
            asS = true;
        }
        this.asS = asS;
        this.asT = this.aqZ.ayZ;
        String s = this.aqZ.vq();
        if (TextUtils.isEmpty((CharSequence)s)) {
            if (on != null) {
                s = on.lw();
            }
            else {
                s = "";
            }
        }
        this.asU = ag.a(this.aqQ, s);
        this.rG();
        String s2;
        if (this.asS || this.asT != 0) {
            s2 = bk(this.aqZ.abh);
        }
        else {
            s2 = this.aqZ.abh;
        }
        String unicodeWrap;
        if (s2 == null) {
            unicodeWrap = null;
        }
        else {
            unicodeWrap = this.qJ().unicodeWrap(s2);
        }
        this.YZ = unicodeWrap;
        this.asu.setText(this.dW());
        this.rE();
        this.rF();
        this.asy.setText((CharSequence)this.YZ);
        if (this.asU != null) {
            this.asM.r(this.asU.getAddress());
        }
        if (this.asI != null) {
            this.asI.setText(this.asg.qO());
        }
        if (b) {
            this.ov();
        }
        else {
            this.rH();
            if (!this.ata) {
                this.aqL.a(this.atc);
                this.ata = true;
            }
        }
        com.android.mail.f.b.te();
    }
    
    private void aJ(final boolean arb) {
        if (arb) {
            int n;
            if (this.asB == null) {
                final View inflate = this.wC.inflate(2130968664, (ViewGroup)null, false);
                inflate.setOnClickListener((View$OnClickListener)this);
                this.asB = (ViewGroup)inflate;
                n = 1;
            }
            else {
                n = 0;
            }
            if (!this.asY) {
                final Resources resources = this.getResources();
                final ViewGroup asB = this.asB;
                final String aBw = this.aqZ.aBw;
                final Map<String, Address> aqQ = this.aqQ;
                final Account on = this.oN();
                final com.android.mail.utils.aj ate = this.ate;
                final String[] asN = this.asN;
                final String[] asR = this.asR;
                final String[] asO = this.asO;
                final String[] asP = this.asP;
                final String[] asQ = this.asQ;
                final CharSequence qq = this.asg.qQ();
                final a qj = this.qJ();
                a(resources, 2131558738, 2131558739, asN, aBw, (View)asB, aqQ, on, ate, qj);
                a(resources, 2131558740, 2131558741, asR, aBw, (View)asB, aqQ, on, ate, qj);
                a(resources, 2131558742, 2131558743, asO, aBw, (View)asB, aqQ, on, ate, qj);
                a(resources, 2131558744, 2131558745, asP, aBw, (View)asB, aqQ, on, ate, qj);
                a(resources, 2131558746, 2131558747, asQ, aBw, (View)asB, aqQ, on, ate, qj);
                ((View)asB).findViewById(2131558748).setVisibility(0);
                final TextView textView = (TextView)((View)asB).findViewById(2131558749);
                textView.setText(qq);
                textView.setVisibility(0);
                this.asY = true;
            }
            if (n != 0) {
                this.asA.addView((View)this.asB, 0);
            }
            this.asB.setVisibility(0);
            this.asw.setVisibility(8);
            this.asx.setVisibility(0);
        }
        else {
            this.rK();
        }
        if (this.asg != null) {
            this.asg.arb = arb;
        }
    }
    
    private void aK(final boolean b) {
        if (b) {
            this.rN();
        }
        this.asD.setText(2131296538);
        this.asD.setTag((Object)2);
        if (!b) {
            this.rC();
        }
    }
    
    private static String bk(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return null;
        }
        final StringBuilder sb = new StringBuilder(100);
        final StringReader stringReader = new StringReader(s);
        int n = 0;
        int read;
        StringBuilder sb2;
        int read2;
        String string;
        Label_0112_Outer:Label_0117_Outer:
        while (true) {
        Label_0087_Outer:
            while (true) {
                while (true) {
                    Label_0367: {
                        while (true) {
                            try {
                                Label_0028: {
                                    n = stringReader.read();
                                }
                                if (n != -1 && sb.length() < 100) {
                                    if (!Character.isWhitespace(n)) {
                                        break Label_0367;
                                    }
                                    sb.append(' ');
                                    do {
                                        n = stringReader.read();
                                    } while (Character.isWhitespace(n));
                                    if (n != -1) {
                                        break Label_0367;
                                    }
                                }
                                return sb.toString();
                                // iftrue(Label_0356:, n != 38)
                                // iftrue(Label_0028:, read != -1)
                            Block_20_Outer:
                                while (true) {
                                    Block_18: {
                                        break Block_18;
                                        return sb.toString();
                                    }
                                    sb2 = new StringBuilder();
                                    while (true) {
                                        Label_0133: {
                                            break Label_0133;
                                            sb2.append((char)read2);
                                        }
                                        read2 = stringReader.read();
                                        continue Label_0087_Outer;
                                    }
                                    read = stringReader.read();
                                    continue Block_20_Outer;
                                }
                            }
                            // iftrue(Label_0183:, read2 == -1 || read2 == 59)
                            // iftrue(Label_0087:, read != -1 && read != 62)
                            catch (IOException ex) {
                                E.f(MessageHeaderView.mW, ex, "Really? IOException while reading a freaking string?!? ", new Object[0]);
                                return sb.toString();
                            }
                            Label_0183: {
                                string = sb2.toString();
                            }
                            if ("nbsp".equals(string)) {
                                sb.append(' ');
                            }
                            else if ("lt".equals(string)) {
                                sb.append('<');
                            }
                            else if ("gt".equals(string)) {
                                sb.append('>');
                            }
                            else if ("amp".equals(string)) {
                                sb.append('&');
                            }
                            else if ("quot".equals(string)) {
                                sb.append('\"');
                            }
                            else if ("apos".equals(string) || "#39".equals(string)) {
                                sb.append('\'');
                            }
                            else {
                                sb.append('&').append(string);
                                if (read2 == 59) {
                                    sb.append(';');
                                }
                            }
                            if (read2 != -1) {
                                continue Label_0112_Outer;
                            }
                            continue Label_0117_Outer;
                        }
                        Label_0356: {
                            sb.append((char)n);
                        }
                        continue Label_0112_Outer;
                    }
                    if (n == 60) {
                        continue;
                    }
                    break;
                }
                continue Label_0087_Outer;
            }
        }
    }
    
    private void ck(final int n) {
        if (n == 8) {
            this.rK();
            this.rO();
            this.rM();
            this.rL();
            this.asr.setOnCreateContextMenuListener((View$OnCreateContextMenuListener)null);
            return;
        }
        this.aJ(this.asg.arb);
        if (this.aqZ.aBt == null) {
            this.rO();
        }
        else {
            if (this.asC == null) {
                this.asC = (SpamWarningView)this.wC.inflate(2130968667, (ViewGroup)this, false);
                this.asA.addView((View)this.asC);
            }
            this.asC.a(this.aqZ, this.asU);
        }
        if (this.asW) {
            if (this.asg.qM()) {
                this.aK(true);
            }
            else {
                this.rN();
            }
        }
        else {
            this.rM();
        }
        if (this.aqZ.vp()) {
            if (this.asE == null) {
                this.asE = (MessageInviteView)this.wC.inflate(2130968665, (ViewGroup)this, false);
                this.asA.addView((View)this.asE);
            }
            this.asE.d(this.aqZ);
            this.asE.setVisibility(0);
        }
        else {
            this.rL();
        }
        this.asr.setOnCreateContextMenuListener((View$OnCreateContextMenuListener)this.asM);
    }
    
    private CharSequence dW() {
        switch (this.asT) {
            default: {
                if (this.asS) {
                    return (CharSequence)aR.am(this.getContext());
                }
                final a qj = this.qJ();
                final Address asU = this.asU;
                String s;
                if (asU == null) {
                    s = "";
                }
                else {
                    s = asU.lj();
                    if (TextUtils.isEmpty((CharSequence)s)) {
                        s = asU.getAddress();
                    }
                }
                return qj.unicodeWrap(s);
            }
            case 1:
            case 2:
            case 4: {
                return this.getResources().getString(2131296501);
            }
            case -1: {
                return this.getResources().getString(2131296503);
            }
        }
    }
    
    @SuppressLint({ "NewApi" })
    private static void n(final View view, final int n) {
        final ViewGroup$MarginLayoutParams layoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
        if (ag.Bf()) {
            layoutParams.setMarginEnd(n);
        }
        else {
            layoutParams.rightMargin = n;
        }
        view.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
    }
    
    private boolean o(final View view, final int n) {
        boolean b = false;
        if (this.aqZ == null) {
            E.d(MessageHeaderView.mW, "ignoring message header tap on unbound view", new Object[0]);
        }
        else {
            Label_0049: {
                if (n == 2131558761) {
                    g.b(this.getContext(), this.oN(), this.aqZ);
                    b = true;
                }
                else if (n == 2131558762) {
                    g.c(this.getContext(), this.oN(), this.aqZ);
                    b = true;
                }
                else if (n == 2131558763) {
                    g.d(this.getContext(), this.oN(), this.aqZ);
                    b = true;
                }
                else if (n == 2131559071) {
                    this.aqZ.ay(true);
                    b = true;
                }
                else if (n == 2131559054) {
                    this.aqZ.ay(false);
                    b = true;
                }
                else if (n == 2131559058) {
                    final aa qs = this.asg.qS();
                    boolean b2 = false;
                    if (qs != null) {
                        b2 = true;
                    }
                    final Account on = this.oN();
                    final Conversation pg = this.aqZ.pg();
                    this.getContext();
                    com.android.mail.j.b.a(this.getContext(), this.aqZ, pg.ayV, this.aqQ, pg.bL(F.a(on, pg)), b2);
                    b = true;
                }
                else if (n == 2131559072) {
                    g.a(this.getContext(), this.oN(), this.aqZ, this.getContext().getString(2131296439) + "\n\n" + this.asp.c(this.aqZ));
                    b = true;
                }
                else if (n == 2131559073) {
                    g.a(this.getContext(), this.oN(), this.aqZ, this.getContext().getString(2131296440) + "\n\n" + this.asp.c(this.aqZ));
                    b = true;
                }
                else if (n == 2131558760) {
                    g.a(this.getContext(), this.oN(), this.aqZ);
                    b = true;
                }
                else if (n == 2131558727) {
                    if (this.arV == null) {
                        this.arV = new PopupMenu(this.getContext(), view);
                        this.arV.getMenuInflater().inflate(2131755008, this.arV.getMenu());
                        this.arV.setOnMenuItemClickListener((PopupMenu$OnMenuItemClickListener)this);
                    }
                    final boolean visible = this.oN().ayw.aBR == 1;
                    final Menu menu = this.arV.getMenu();
                    menu.findItem(2131558761).setVisible(visible);
                    menu.findItem(2131558762).setVisible(!visible);
                    menu.findItem(2131559058).setVisible(ag.Bg());
                    final boolean azc = this.aqZ.azc;
                    final Conversation pg2 = this.aqZ.pg();
                    boolean b3;
                    if (pg2 != null) {
                        if (!pg2.uL()) {
                            b3 = true;
                        }
                        else {
                            b3 = false;
                        }
                    }
                    else {
                        b3 = true;
                    }
                    menu.findItem(2131559071).setVisible(b3 && !azc);
                    menu.findItem(2131559054).setVisible(b3 && azc);
                    menu.findItem(2131559073).setVisible(false);
                    menu.findItem(2131559072).setVisible(false);
                    this.arV.show();
                    b = true;
                }
                else if (n == 2131558768 || n == 2131558769 || n == 2131558737) {
                    final int rd = this.rD();
                    boolean b4 = false;
                    Label_0827: {
                        if (this.asB != null) {
                            final int visibility = this.asB.getVisibility();
                            b4 = false;
                            if (visibility != 8) {
                                break Label_0827;
                            }
                        }
                        b4 = true;
                    }
                    this.aJ(b4);
                    this.rC();
                    if (this.asp != null) {
                        this.asp.a(this.asg, b4, rd);
                    }
                    b = true;
                }
                else if (n == 2131558735) {
                    if (this.atd) {
                        final boolean qp = this.qp();
                        boolean b5 = false;
                        if (!qp) {
                            b5 = true;
                        }
                        this.aC(b5);
                        if (!this.atk) {
                            this.asu.setText(this.dW());
                            this.rE();
                            this.rF();
                            this.asy.setText((CharSequence)this.YZ);
                        }
                        this.rG();
                        final int rd2 = this.rD();
                        this.asg.ca(rd2);
                        if (this.asp != null) {
                            this.asp.b(this.asg, rd2);
                        }
                    }
                    b = true;
                }
                else if (n == 2131558755) {
                    final Integer n2 = (Integer)view.getTag();
                    if (n2 != null) {
                        switch (n2) {
                            case 1: {
                                if (this.asp != null) {
                                    this.asp.b(this.aqZ);
                                }
                                if (this.asg != null) {
                                    this.asg.qN();
                                }
                                if (this.atf) {
                                    this.rM();
                                    b = true;
                                    break Label_0049;
                                }
                                this.aK(false);
                                b = true;
                                break Label_0049;
                            }
                            case 2: {
                                final ConversationMessage aqZ = this.aqZ;
                                if (this.asZ == null) {
                                    this.asZ = new aG(this, this.getContext().getContentResolver());
                                }
                                aqZ.a(this.asZ);
                                if (this.asp != null) {
                                    this.asp.bl(this.aqZ.vq());
                                }
                                this.asW = false;
                                view.setTag((Object)null);
                                view.setVisibility(8);
                                this.rC();
                                Toast.makeText(this.getContext(), 2131296539, 0).show();
                                break;
                            }
                        }
                    }
                    b = true;
                }
                else {
                    E.d(MessageHeaderView.mW, "unrecognized header tap: %d", n);
                    b = false;
                }
            }
            if (b && n != 2131558727) {
                com.android.mail.a.a.oq().b("menu_item", n, "message_header");
                return b;
            }
        }
        return b;
    }
    
    private Account oN() {
        if (this.alu != null) {
            return this.alu.oN();
        }
        return null;
    }
    
    private a qJ() {
        if (this.aqT == null) {
            aa qs;
            if (this.asg != null) {
                qs = this.asg.qS();
            }
            else {
                qs = null;
            }
            if (qs == null) {
                this.aqT = a.aC();
            }
            else {
                this.aqT = qs.qJ();
            }
        }
        return this.aqT;
    }
    
    private boolean qp() {
        return this.asg == null || this.asg.qp();
    }
    
    private void rC() {
        final int rd = this.rD();
        this.asg.ca(rd);
        if (this.asp != null) {
            this.asp.a(this.asg, rd);
        }
    }
    
    private int rD() {
        final ViewGroup viewGroup = (ViewGroup)this.getParent();
        if (viewGroup == null) {
            E.e(MessageHeaderView.mW, new Error(), "Unable to measure height of detached header", new Object[0]);
            return this.getHeight();
        }
        this.asV = true;
        final int a = ag.a((View)this, viewGroup);
        this.asV = false;
        return a;
    }
    
    private void rE() {
        if (!this.asX) {
            if (this.asg.arh == null) {
                final Account on = this.oN();
                String lw;
                if (on != null) {
                    lw = on.lw();
                }
                else {
                    lw = "";
                }
                final ae asg = this.asg;
                final Context context = this.getContext();
                final String atb = this.atb;
                final String[] asO = this.asO;
                final String[] asP = this.asP;
                final String[] asQ = this.asQ;
                final aI ai = new aI(context, lw, atb, this.aqQ, this.ate, this.qJ());
                ai.i(asO);
                ai.i(asP);
                ai.j(asQ);
                asg.arh = ai.rP();
            }
            this.asv.setText(this.asg.arh);
            this.asX = true;
        }
    }
    
    private void rF() {
        if (this.atk) {
            this.asw.setText(this.asg.qP());
            this.asw.setOnClickListener((View$OnClickListener)null);
            return;
        }
        this.asw.setMovementMethod(LinkMovementMethod.getInstance());
        this.asw.setText((CharSequence)Html.fromHtml(this.getResources().getString(2131296524, new Object[] { this.asg.qP() })));
        ac.a((Spannable)this.asw.getText(), null);
    }
    
    private void rG() {
        int visibility = 8;
        if (this.atf) {
            this.ck(0);
            a(visibility, this.ast);
            final View[] array = { this.asJ, this.asK, this.asF, this.BI, this.asG, this.asH, this.asL, this.asI, null };
            array[visibility] = (View)this.asy;
            a(visibility, array);
            a(0, this.asz, this.asv);
            n(this.ass, 0);
        }
        else if (this.qp()) {
            final boolean atk = this.atk;
            int n;
            if (atk) {
                n = visibility;
            }
            else {
                n = 0;
            }
            this.ck(n);
            int n2;
            if (atk) {
                n2 = 0;
            }
            else {
                n2 = visibility;
            }
            a(n2, this.ast);
            int n3;
            int n4;
            if (this.asS) {
                n3 = 0;
                n4 = visibility;
            }
            else {
                n3 = visibility;
                n4 = 0;
            }
            if (this.asS) {
                a(visibility, this.asJ, this.asK);
            }
            else if (this.BI == null) {
                a(0, this.asJ, this.asK);
            }
            else {
                final Account on = this.oN();
                boolean b;
                if (on != null) {
                    if (on.ayw.aBR == 1) {
                        b = true;
                    }
                    else {
                        b = false;
                    }
                }
                else {
                    b = false;
                }
                int n5;
                if (b) {
                    n5 = visibility;
                }
                else {
                    n5 = 0;
                }
                a(n5, this.asJ);
                int n6;
                if (b) {
                    n6 = 0;
                }
                else {
                    n6 = visibility;
                }
                a(n6, this.asK);
            }
            a(n4, this.asz, this.asF, this.BI);
            a(n3, this.asG, this.asH);
            a(0, this.asv);
            a(visibility, this.asL, this.asI, this.asy);
            n(this.ass, 0);
        }
        else {
            this.ck(visibility);
            a(visibility, this.ast);
            a(0, this.asy, this.asI);
            final View[] array2 = new View[visibility];
            array2[0] = this.asH;
            array2[1] = this.asJ;
            array2[2] = this.asK;
            array2[3] = this.asF;
            array2[4] = this.BI;
            array2[5] = (View)this.asv;
            array2[6] = (View)this.asw;
            array2[7] = this.asx;
            a(visibility, array2);
            int n7;
            if (this.aqZ.ayX) {
                n7 = 0;
            }
            else {
                n7 = visibility;
            }
            a(n7, this.asL);
            if (this.asS) {
                a(0, this.asG);
                a(visibility, this.asz);
            }
            else {
                a(visibility, this.asG);
                a(0, this.asz);
            }
            n(this.ass, this.atj);
        }
        final aa qs = this.asg.qS();
        if (qs != null) {
            final View asq = this.asq;
            if (!qs.b((V)this.asg)) {
                visibility = 0;
            }
            asq.setVisibility(visibility);
            return;
        }
        this.asq.setVisibility(0);
    }
    
    private void rH() {
        if (this.aqL != null && this.asU != null) {
            final Resources resources = this.getResources();
            final Object[] array = { null };
            String s;
            if (!TextUtils.isEmpty((CharSequence)this.asU.lj())) {
                s = this.asU.lj();
            }
            else {
                s = this.asU.getAddress();
            }
            array[0] = s;
            this.asz.setContentDescription((CharSequence)resources.getString(2131296528, array));
            final String address = this.asU.getAddress();
            final com.android.mail.a ax = this.aqL.aX(address);
            while (true) {
                Label_0282: {
                    if (ax == null) {
                        this.asz.bj(address);
                        break Label_0282;
                    }
                    if (ax.ajO != null) {
                        this.asz.assignContactUri(ax.ajO);
                    }
                    else {
                        this.asz.bj(address);
                    }
                    if (ax.ajQ == null) {
                        break Label_0282;
                    }
                    this.asz.setImageBitmap(c.f(ax.ajQ));
                    final int n = 1;
                    if (n == 0) {
                        final MessageHeaderContactBadge asz = this.asz;
                        final String lj = this.asU.lj();
                        if (this.atg == null) {
                            this.atg = new com.android.mail.h.a(this.getContext().getResources());
                        }
                        asz.setImageBitmap(c.f(this.atg.a(new cj(this.ath, this.ati), lj, address)));
                        return;
                    }
                    return;
                }
                final int n = 0;
                continue;
            }
        }
        this.asz.setImageToDefault();
        this.asz.setContentDescription((CharSequence)this.getResources().getString(2131296529));
    }
    
    private void rK() {
        if (this.asB != null) {
            this.asB.setVisibility(8);
        }
        this.asw.setVisibility(0);
        this.asx.setVisibility(8);
    }
    
    private void rL() {
        if (this.asE != null) {
            this.asE.setVisibility(8);
        }
    }
    
    private void rM() {
        if (this.asD != null) {
            this.asD.setVisibility(8);
        }
    }
    
    private void rN() {
        if (this.asD == null) {
            this.asD = (TextView)this.wC.inflate(2130968666, (ViewGroup)this, false);
            this.asA.addView((View)this.asD);
            this.asD.setOnClickListener((View$OnClickListener)this);
        }
        this.asD.setVisibility(0);
        this.asD.setText(2131296537);
        this.asD.setTag((Object)1);
    }
    
    private void rO() {
        if (this.asC != null) {
            this.asC.setVisibility(8);
        }
    }
    
    public final void a(final b aqL) {
        this.aqL = aqL;
    }
    
    public final void a(final aH asp) {
        this.asp = asp;
    }
    
    public final void a(final ae asg, final boolean b) {
        if (this.asg != null && this.asg == asg) {
            return;
        }
        this.asg = asg;
        this.aH(b);
    }
    
    public final void a(final m alu, final Map<String, Address> aqQ) {
        this.alu = alu;
        this.aqQ = aqQ;
    }
    
    @Override
    public final void a(final m m, final Map<String, Address> map, final aH asp, final b aqL, final com.android.mail.utils.aj ate) {
        this.a(m, map);
        this.asp = asp;
        this.aqL = aqL;
        this.ate = ate;
    }
    
    public final void a(final com.android.mail.utils.aj ate) {
        this.ate = ate;
    }
    
    public final void aI(final boolean atf) {
        this.atf = atf;
    }
    
    @Override
    public final boolean c(final V v) {
        return v == this.asg;
    }
    
    public final void d(final ae ae) {
        if (this.asg == null || this.asg != ae || this.isActivated() == this.qp()) {
            return;
        }
        this.aH(false);
    }
    
    public final void oU() {
        this.ov();
    }
    
    public void onClick(final View view) {
        this.o(view, view.getId());
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.asq = this.findViewById(2131558734);
        this.asr = (ViewGroup)this.findViewById(2131558735);
        this.ass = this.findViewById(2131558764);
        this.ast = this.findViewById(2131558626);
        this.asu = (TextView)this.findViewById(2131558622);
        this.asv = (TextView)this.findViewById(2131558767);
        this.asw = (TextView)this.findViewById(2131558768);
        this.asx = this.findViewById(2131558769);
        this.asy = (TextView)this.findViewById(2131558770);
        (this.asz = (MessageHeaderContactBadge)this.findViewById(2131558757)).a((QuickContactBadge)this.findViewById(2131558758));
        this.asJ = this.findViewById(2131558761);
        this.asK = this.findViewById(2131558762);
        this.asF = this.findViewById(2131558763);
        this.BI = this.findViewById(2131558727);
        this.asG = this.findViewById(2131558759);
        this.asH = this.findViewById(2131558760);
        this.asI = (TextView)this.findViewById(2131558765);
        this.asL = this.findViewById(2131558766);
        this.asA = (ViewGroup)this.findViewById(2131558736);
        this.aC(true);
        for (final View view : new View[] { this.asJ, this.asK, this.asF, this.asH, this.BI, this.asr, this.asw, this.asx }) {
            if (view != null) {
                view.setOnClickListener((View$OnClickListener)this);
            }
        }
        this.asr.setOnCreateContextMenuListener((View$OnCreateContextMenuListener)this.asM);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        new com.android.mail.f.b();
        com.android.mail.f.b.td();
        super.onLayout(b, n, n2, n3, n4);
        com.android.mail.f.b.te();
    }
    
    protected void onMeasure(final int n, final int n2) {
        new com.android.mail.f.b();
        super.onMeasure(n, n2);
        if (!this.asV) {
            com.android.mail.f.b.te();
        }
    }
    
    public boolean onMenuItemClick(final MenuItem menuItem) {
        this.arV.dismiss();
        return this.o(null, menuItem.getItemId());
    }
    
    @Override
    public final void ov() {
        this.asg = null;
        this.aqZ = null;
        if (this.ata) {
            this.aqL.b(this.atc);
            this.ata = false;
        }
    }
    
    public final void rI() {
        this.atd = false;
    }
    
    @Override
    public final void rJ() {
        this.atk = true;
        this.ck(8);
    }
    
    @Override
    public final void refresh() {
        this.aH(false);
    }
}
