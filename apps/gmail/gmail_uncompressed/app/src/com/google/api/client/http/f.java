package com.google.api.client.http;

import java.util.*;
import com.google.api.client.util.*;
import java.io.*;

public final class F extends a
{
    private ArrayList<G> cxJ;
    
    public F() {
        super(new s("multipart/related").ax("boundary", "__END_OF_PART__"));
        this.cxJ = new ArrayList<G>();
    }
    
    public final F E(final Collection<? extends k> collection) {
        this.cxJ = new ArrayList<G>(collection.size());
        final Iterator<k> iterator = collection.iterator();
        while (iterator.hasNext()) {
            this.cxJ.add(com.google.api.client.a.a.a.a.a.a.ak(new G(iterator.next())));
        }
        return this;
    }
    
    @Override
    public final boolean Xk() {
        final Iterator<G> iterator = this.cxJ.iterator();
        while (iterator.hasNext()) {
            if (!iterator.next().cxk.Xk()) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        final OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, this.Xj());
        final String parameter = this.Xi().getParameter("boundary");
        for (final G g : this.cxJ) {
            final o xp = new o().Xp();
            if (g.cxe != null) {
                xp.b(g.cxe);
            }
            xp.hi(null).hm(null).hk(null).d(null).m("Content-Transfer-Encoding", null);
            final k cxk = g.cxk;
            Object o;
            if (cxk != null) {
                xp.m("Content-Transfer-Encoding", Arrays.asList("binary"));
                xp.hk(cxk.getType());
                final l cwQ = g.cwQ;
                long n;
                if (cwQ == null) {
                    n = cxk.getLength();
                    o = cxk;
                }
                else {
                    xp.hi(cwQ.getName());
                    o = new m(cxk, cwQ);
                    n = a.a(cxk);
                }
                if (n != -1L) {
                    xp.d(n);
                }
            }
            else {
                o = null;
            }
            outputStreamWriter.write("--");
            outputStreamWriter.write(parameter);
            outputStreamWriter.write("\r\n");
            com.google.api.client.http.o.a(xp, outputStreamWriter);
            if (o != null) {
                outputStreamWriter.write("\r\n");
                outputStreamWriter.flush();
                ((K)o).writeTo(outputStream);
                outputStreamWriter.write("\r\n");
            }
        }
        outputStreamWriter.write("--");
        outputStreamWriter.write(parameter);
        outputStreamWriter.write("--");
        outputStreamWriter.write("\r\n");
        outputStreamWriter.flush();
    }
}
