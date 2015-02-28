package com.google.common.a.a;

import java.util.*;
import java.io.*;

public final class a
{
    public static final Boolean FALSE;
    public static final Boolean TRUE;
    private static Long[] cCD;
    private b cCE;
    private final Vector cCF;
    private final StringBuffer cCG;
    
    static {
        FALSE = new Boolean(false);
        TRUE = new Boolean(true);
        a.cCD = new Long[] { new Long(0L), new Long(1L), new Long(2L), new Long(3L), new Long(4L), new Long(5L), new Long(6L), new Long(7L), new Long(8L), new Long(9L), new Long(10L), new Long(11L), new Long(12L), new Long(13L), new Long(14L), new Long(15L) };
    }
    
    public a(final b cce) {
        this.cCF = new Vector();
        this.cCG = new StringBuffer();
        this.cCE = cce;
    }
    
    private static int a(final String s, final byte[] array, int n) {
        int n3;
        for (int length = s.length(), i = 0; i < length; ++i, n = n3) {
            int char1 = s.charAt(i);
            if (char1 >= 55296 && char1 <= 57343 && i + 1 < length) {
                int char2 = s.charAt(i + 1);
                if (((char2 & 0xFC00) ^ (char1 & 0xFC00)) == 0x400) {
                    ++i;
                    if ((char2 & 0xFC00) != 0xD800) {
                        final int n2 = char1;
                        char1 = char2;
                        char2 = n2;
                    }
                    char1 = 65536 + ((char2 & 0x3FF) << 10 | (char1 & 0x3FF));
                }
            }
            if (char1 <= 127) {
                if (array != null) {
                    array[n] = (byte)char1;
                }
                n3 = n + 1;
            }
            else if (char1 <= 2047) {
                if (array != null) {
                    array[n] = (byte)(0xC0 | char1 >> 6);
                    array[n + 1] = (byte)(0x80 | (char1 & 0x3F));
                }
                n3 = n + 2;
            }
            else if (char1 <= 65535) {
                if (array != null) {
                    array[n] = (byte)(0xE0 | char1 >> 12);
                    array[n + 1] = (byte)(0x80 | (0x3F & char1 >> 6));
                    array[n + 2] = (byte)(0x80 | (char1 & 0x3F));
                }
                n3 = n + 3;
            }
            else {
                if (array != null) {
                    array[n] = (byte)(0xF0 | char1 >> 18);
                    array[n + 1] = (byte)(0x80 | (0x3F & char1 >> 12));
                    array[n + 2] = (byte)(0x80 | (0x3F & char1 >> 6));
                    array[n + 3] = (byte)(0x80 | (char1 & 0x3F));
                }
                n3 = n + 4;
            }
        }
        return n;
    }
    
    static long a(final InputStream inputStream, final boolean b) {
        long n = 0L;
        int i = 0;
        int n2 = 0;
        while (i < 10) {
            final int read = inputStream.read();
            if (read == -1) {
                if (i == 0 && b) {
                    n = -1L;
                    break;
                }
                throw new IOException("EOF");
            }
            else {
                n |= (read & 0x7F) << n2;
                if ((read & 0x80) == 0x0) {
                    break;
                }
                n2 += 7;
                ++i;
            }
        }
        return n;
    }
    
    private void a(final int n, final int n2, final long n3) {
        Long n4;
        if (n3 >= 0L && n3 < a.cCD.length) {
            n4 = a.cCD[(int)n3];
        }
        else {
            n4 = new Long(n3);
        }
        this.a(n, n2, n4);
    }
    
    private void a(final int n, final int n2, final Object o) {
        this.b(n, o);
        if (this.fA(n) == 0) {
            this.setObject(n, o);
            return;
        }
        final Vector<Object> element = this.cCF.elementAt(n);
        Vector<Object> vector;
        if (element instanceof Vector) {
            vector = element;
        }
        else {
            final Vector<Object> vector2 = new Vector<Object>();
            vector2.addElement(element);
            this.cCF.setElementAt(vector2, n);
            vector = vector2;
        }
        vector.insertElementAt(o, n2);
    }
    
    private static void a(final OutputStream outputStream, long n) {
        for (int i = 0; i < 10; ++i) {
            final int n2 = (int)(0x7FL & n);
            n >>>= 7;
            if (n == 0L) {
                outputStream.write(n2);
                break;
            }
            outputStream.write(n2 | 0x80);
        }
    }
    
    private int aas() {
        return -1 + this.cCF.size();
    }
    
    private Object aq(final int n, final int n2) {
        final int fa = this.fA(n);
        if (fa == 0) {
            return this.fD(n);
        }
        if (fa > 1) {
            throw new IllegalArgumentException();
        }
        return this.l(n, 0, n2);
    }
    
    private void b(final int n, final Object o) {
        final int type = this.getType(n);
        if (type != 16 || this.cCE != null) {
            if (o instanceof Boolean) {
                if (type == 24 || type == 0) {
                    return;
                }
            }
            else if (o instanceof Long) {
                switch (type) {
                    case 0:
                    case 1:
                    case 5:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34: {
                        return;
                    }
                }
            }
            else if (o instanceof byte[]) {
                switch (type) {
                    case 2:
                    case 25:
                    case 27:
                    case 28:
                    case 35:
                    case 36: {
                        return;
                    }
                }
            }
            else if (o instanceof a) {
                switch (type) {
                    case 2:
                    case 3:
                    case 25:
                    case 26:
                    case 27:
                    case 28: {
                        if (this.cCE == null || this.cCE.fF(n) == null || ((a)o).cCE == null) {
                            return;
                        }
                        if (((a)o).cCE == this.cCE.fF(n)) {
                            return;
                        }
                        break;
                    }
                }
            }
            else if (o instanceof String) {
                switch (type) {
                    case 2:
                    case 25:
                    case 28:
                    case 36: {
                        return;
                    }
                }
            }
            throw new IllegalArgumentException("Type mismatch type:" + this.cCE + " tag:" + n);
        }
    }
    
    private static int bg(long n) {
        int n2;
        if (n < 0L) {
            n2 = 10;
        }
        else {
            n2 = 1;
            while (n >= 128L) {
                ++n2;
                n >>= 7;
            }
        }
        return n2;
    }
    
    private static long bh(final long n) {
        return n << 1 ^ -(n >>> 63);
    }
    
    private static String c(final byte[] array, final int n) {
        final StringBuffer sb = new StringBuffer(n + 0);
        int n2;
        for (int i = 0; i < n; i = n2) {
            n2 = i + 1;
            final int j = 0xFF & array[i];
            if (j <= 127) {
                sb.append((char)j);
            }
            else if (j >= 245) {
                sb.append((char)j);
            }
            else {
                int n3 = 31;
                int n4 = 1;
                int n6;
                for (int n5 = 224; j >= n5; n5 = n6) {
                    n6 = (0x80 | n5 >> 1);
                    final int n7 = n4 + 1;
                    n3 >>= 1;
                    n4 = n7;
                }
                int n8 = n3 & j;
                int n9;
                for (int k = 0; k < n4; ++k, n2 = n9) {
                    n8 <<= 6;
                    if (n2 < n) {
                        n9 = n2 + 1;
                        n8 |= (0x3F & array[n2]);
                    }
                    else {
                        n9 = n2;
                    }
                }
                if (n8 >= 55296 && n8 <= 57343) {
                    throw new IllegalArgumentException("Invalid UTF8");
                }
                if (n8 <= 65535) {
                    sb.append((char)n8);
                }
                else {
                    final int n10 = n8 - 65536;
                    sb.append((char)(0xD800 | n10 >> 10));
                    sb.append((char)(0xDC00 | (n10 & 0x3FF)));
                }
            }
        }
        return sb.toString();
    }
    
    private boolean fB(final int n) {
        final int type = this.getType(n);
        return type == 33 || type == 34;
    }
    
    private Object fD(final int n) {
        switch (this.getType(n)) {
            default: {
                return this.cCE.fF(n);
            }
            case 16:
            case 26:
            case 27: {
                return null;
            }
        }
    }
    
    private final int fE(final int n) {
        int type = this.getType(n);
        switch (type) {
            default: {
                throw new RuntimeException("Unsupp.Type:" + this.cCE + '/' + n + '/' + type);
            }
            case 19:
            case 20:
            case 21:
            case 24:
            case 29:
            case 30:
            case 33:
            case 34: {
                type = 0;
            }
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 16: {
                return type;
            }
            case 25:
            case 27:
            case 28:
            case 35:
            case 36: {
                return 2;
            }
            case 17:
            case 22:
            case 32: {
                return 1;
            }
            case 18:
            case 23:
            case 31: {
                return 5;
            }
            case 26: {
                return 3;
            }
        }
    }
    
    private a fw(final int n) {
        return new a((b)this.cCE.fF(n));
    }
    
    private int getType(final int n) {
        int n2;
        if (this.cCE != null) {
            n2 = this.cCE.getType(n);
        }
        else {
            n2 = 16;
        }
        if (n2 == 16 && n < this.cCG.length()) {
            n2 = this.cCG.charAt(n);
        }
        if (n2 != 16 || this.fA(n) <= 0) {
            return n2;
        }
        final Object l = this.l(n, 0, 16);
        if (l instanceof Long || l instanceof Boolean) {
            return 0;
        }
        return 2;
    }
    
    private static Object i(final Object o, final int n) {
        Label_0290: {
            switch (n) {
                default: {
                    throw new RuntimeException("Unsupp.Type");
                }
                case 24: {
                    if (o instanceof Boolean) {
                        return o;
                    }
                    switch ((int)(long)o) {
                        default: {
                            throw new IllegalArgumentException("Type mismatch");
                        }
                        case 0: {
                            return a.FALSE;
                        }
                        case 1: {
                            return a.TRUE;
                        }
                    }
                    break;
                }
                case 16: {
                    return o;
                }
                case 19:
                case 21:
                case 22:
                case 23:
                case 31:
                case 32:
                case 33:
                case 34: {
                    if (o instanceof Boolean) {
                        final Long[] ccd = a.cCD;
                        final boolean booleanValue = (boolean)o;
                        int n2 = 0;
                        if (booleanValue) {
                            n2 = 1;
                        }
                        return ccd[n2];
                    }
                    return o;
                }
                case 25:
                case 35: {
                    if (o instanceof String) {
                        final String s = (String)o;
                        final byte[] array = new byte[a(s, null, 0)];
                        a(s, array, 0);
                        return array;
                    }
                    if (o instanceof a) {
                        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            ((a)o).g(byteArrayOutputStream);
                            return byteArrayOutputStream.toByteArray();
                        }
                        catch (IOException ex) {
                            throw new RuntimeException(ex.toString());
                        }
                        break Label_0290;
                    }
                    return o;
                }
                case 28:
                case 36: {
                    if (o instanceof byte[]) {
                        final byte[] array2 = (byte[])o;
                        return c(array2, array2.length);
                    }
                    return o;
                }
                case 26:
                case 27: {
                    if (!(o instanceof byte[])) {
                        return o;
                    }
                    try {
                        return new a(null).o((byte[])o);
                    }
                    catch (IOException ex2) {
                        throw new RuntimeException(ex2.toString());
                    }
                    break;
                }
            }
        }
    }
    
    private Object l(final int n, final int n2, final int n3) {
        if (n2 >= this.fA(n)) {
            throw new ArrayIndexOutOfBoundsException();
        }
        final Vector<Object> element = this.cCF.elementAt(n);
        Vector<Object> vector;
        Object element2;
        if (element instanceof Vector) {
            vector = element;
            element2 = vector.elementAt(n2);
        }
        else {
            element2 = element;
            vector = null;
        }
        final Object i = i(element2, n3);
        if (i != element2 && element2 != null) {
            if (vector != null) {
                vector.setElementAt(i, n2);
                return i;
            }
            this.setObject(n, i);
        }
        return i;
    }
    
    private void setObject(final int n, final Object o) {
        if (this.cCF.size() <= n) {
            this.cCF.setSize(n + 1);
        }
        if (o != null) {
            this.b(n, o);
        }
        this.cCF.setElementAt(o, n);
    }
    
    public final int a(final InputStream inputStream, final int n) {
        this.cCF.setSize(0);
        this.cCG.setLength(0);
        int i;
        int a3 = 0;
        for (i = n; i > 0; i = a3) {
            final long a = a(inputStream, true);
            if (a == -1L) {
                break;
            }
            final int n2 = i - bg(a);
            final int n3 = 0x7 & (int)a;
            if (n3 == 4) {
                i = n2;
                break;
            }
            final int n4 = (int)(a >>> 3);
            while (this.cCG.length() <= n4) {
                this.cCG.append('\u0010');
            }
            this.cCG.setCharAt(n4, (char)n3);
            Object o = null;
            switch (n3) {
                default: {
                    throw new RuntimeException("Unsupp.Type" + n3);
                }
                case 0: {
                    final long a2 = a(inputStream, false);
                    a3 = n2 - bg(a2);
                    long n5;
                    if (this.fB(n4)) {
                        n5 = (a2 >>> 1 ^ -(a2 & 0x1L));
                    }
                    else {
                        n5 = a2;
                    }
                    if (n5 >= 0L && n5 < com.google.common.a.a.a.cCD.length) {
                        o = com.google.common.a.a.a.cCD[(int)n5];
                        break;
                    }
                    o = new Long(n5);
                    break;
                }
                case 1:
                case 5: {
                    long n6 = 0L;
                    int n7 = 0;
                    int n8;
                    if (n3 == 5) {
                        n8 = 4;
                    }
                    else {
                        n8 = 8;
                    }
                    a3 = n2 - n8;
                    while (true) {
                        final int n9 = n8 - 1;
                        if (n8 <= 0) {
                            break;
                        }
                        n6 |= inputStream.read() << n7;
                        n7 += 8;
                        n8 = n9;
                    }
                    if (n6 >= 0L && n6 < com.google.common.a.a.a.cCD.length) {
                        o = com.google.common.a.a.a.cCD[(int)n6];
                        break;
                    }
                    o = new Long(n6);
                    break;
                }
                case 2: {
                    final int n10 = (int)a(inputStream, false);
                    final int n11 = n2 - bg(n10) - n10;
                    if (this.getType(n4) == 27) {
                        final a a4 = new a((b)this.cCE.fF(n4));
                        a4.a(inputStream, n10);
                        o = a4;
                        a3 = n11;
                        break;
                    }
                    o = new byte[n10];
                    int read;
                    for (int j = 0; j < n10; j += read) {
                        read = inputStream.read((byte[])o, j, n10 - j);
                        if (read <= 0) {
                            throw new IOException("Unexp.EOF");
                        }
                    }
                    a3 = n11;
                    break;
                }
                case 3: {
                    b b;
                    if (this.cCE == null) {
                        b = null;
                    }
                    else {
                        b = (b)this.cCE.fF(n4);
                    }
                    final a a5 = new a(b);
                    a3 = a5.a(inputStream, n2);
                    o = a5;
                    break;
                }
            }
            this.a(n4, this.fA(n4), o);
        }
        if (i < 0) {
            throw new IOException();
        }
        return i;
    }
    
    public final void a(final int n, final a a) {
        this.setObject(n, a);
    }
    
    final void a(final b cce) {
        if (this.cCF.size() != 0 || (this.cCE != null && cce != null && cce != this.cCE)) {
            throw new IllegalArgumentException();
        }
        this.cCE = cce;
    }
    
    public final a ap(final int n, final int n2) {
        return (a)this.l(n, n2, 26);
    }
    
    public final boolean bJ(final int n) {
        return this.fA(n) > 0 || this.fD(n) != null;
    }
    
    public final void c(final int n, final long n2) {
        this.a(n, this.fA(n), n2);
    }
    
    public final int fA(final int n) {
        if (n >= this.cCF.size()) {
            return 0;
        }
        final Vector element = this.cCF.elementAt(n);
        if (element == null) {
            return 0;
        }
        if (element instanceof Vector) {
            return element.size();
        }
        return 1;
    }
    
    public final a fC(final int n) {
        final a fw = this.fw(n);
        this.setObject(n, fw);
        return fw;
    }
    
    public final void fu(final int n) {
        this.a(1, this.fA(1), n);
    }
    
    public final a fv(final int n) {
        final a fw = this.fw(n);
        this.a(n, this.fA(n), fw);
        return fw;
    }
    
    public final boolean fx(final int n) {
        return (boolean)this.aq(n, 24);
    }
    
    public final a fy(final int n) {
        return (a)this.aq(n, 26);
    }
    
    public final void fz(final int n) {
        final int fa = this.fA(1);
        if (n >= fa) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (fa == 1) {
            this.cCF.setElementAt(null, 1);
            return;
        }
        this.cCF.elementAt(1).removeElementAt(n);
    }
    
    public final void g(final OutputStream outputStream) {
        for (int i = 0; i <= this.aas(); ++i) {
            final int fa = this.fA(i);
            final int fe = this.fE(i);
            for (int j = 0; j < fa; ++j) {
                a(outputStream, fe | i << 3);
                switch (fe) {
                    default: {
                        throw new IllegalArgumentException();
                    }
                    case 1:
                    case 5: {
                        final long longValue = (long)this.l(i, j, 19);
                        int n;
                        if (fe == 5) {
                            n = 4;
                        }
                        else {
                            n = 8;
                        }
                        long n2 = longValue;
                        for (int k = 0; k < n; ++k) {
                            outputStream.write((int)(0xFFL & n2));
                            n2 >>= 8;
                        }
                        break;
                    }
                    case 0: {
                        long n3 = (long)this.l(i, j, 19);
                        if (this.fB(i)) {
                            n3 = bh(n3);
                        }
                        a(outputStream, n3);
                        break;
                    }
                    case 2: {
                        int n4;
                        if (this.getType(i) == 27) {
                            n4 = 16;
                        }
                        else {
                            n4 = 25;
                        }
                        final Object l = this.l(i, j, n4);
                        if (l instanceof byte[]) {
                            final byte[] array = (byte[])l;
                            a(outputStream, array.length);
                            outputStream.write(array);
                            break;
                        }
                        final a a = (a)l;
                        a(outputStream, a.getDataSize());
                        a.g(outputStream);
                        break;
                    }
                    case 3: {
                        ((a)this.l(i, j, 26)).g(outputStream);
                        a(outputStream, 0x4 | i << 3);
                        break;
                    }
                }
            }
        }
    }
    
    public final byte[] getBytes(final int n) {
        return (byte[])this.aq(n, 25);
    }
    
    public final int getDataSize() {
        int i = 0;
        int n = 0;
        while (i <= this.aas()) {
            int j = 0;
            int n2 = n;
            while (j < this.fA(i)) {
                final int bg = bg(i << 3);
                int n4 = 0;
                switch (this.fE(i)) {
                    default: {
                        final Object l = this.l(i, j, 16);
                        int n3;
                        if (l instanceof byte[]) {
                            n3 = ((byte[])l).length;
                        }
                        else if (l instanceof String) {
                            n3 = a((String)l, null, 0);
                        }
                        else {
                            n3 = ((a)l).getDataSize();
                        }
                        n4 = n3 + (bg + bg(n3));
                        break;
                    }
                    case 5: {
                        n4 = bg + 4;
                        break;
                    }
                    case 1: {
                        n4 = bg + 8;
                        break;
                    }
                    case 0: {
                        long n5 = this.getLong(i, j);
                        if (this.fB(i)) {
                            n5 = bh(n5);
                        }
                        n4 = bg + bg(n5);
                        break;
                    }
                    case 3: {
                        n4 = bg + (bg + this.ap(i, j).getDataSize());
                        break;
                    }
                }
                n2 += n4;
                ++j;
            }
            ++i;
            n = n2;
        }
        return n;
    }
    
    public final int getInt(final int n) {
        return (int)(long)this.aq(n, 21);
    }
    
    public final long getLong(final int n) {
        return (long)this.aq(n, 19);
    }
    
    public final long getLong(final int n, final int n2) {
        return (long)this.l(n, n2, 19);
    }
    
    public final String getString(final int n) {
        return (String)this.aq(n, 28);
    }
    
    public final String getString(final int n, final int n2) {
        return (String)this.l(n, n2, 28);
    }
    
    public final void i(final int n, final String s) {
        this.a(n, this.fA(n), s);
    }
    
    public final a o(final byte[] array) {
        this.a(new ByteArrayInputStream(array), array.length);
        return this;
    }
    
    public final void p(final byte[] array) {
        this.setObject(4, array);
    }
    
    public final void q(final int n, final boolean b) {
        Boolean b2;
        if (b) {
            b2 = a.TRUE;
        }
        else {
            b2 = a.FALSE;
        }
        this.setObject(n, b2);
    }
    
    public final void setInt(final int n, final int n2) {
        this.setLong(n, n2);
    }
    
    public final void setLong(final int n, final long n2) {
        Long n3;
        if (n2 >= 0L && n2 < a.cCD.length) {
            n3 = a.cCD[(int)n2];
        }
        else {
            n3 = new Long(n2);
        }
        this.setObject(n, n3);
    }
    
    public final void setString(final int n, final String s) {
        this.setObject(n, s);
    }
    
    public final byte[] toByteArray() {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.g(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
