package org.apache.james.mime4j.field;

public final class i extends j
{
    public i() {
        this.a("Content-Transfer-Encoding", new d());
        this.a("Content-Type", new f());
        final h h = new h();
        this.a("Date", h);
        this.a("Resent-Date", h);
        final p p = new p();
        this.a("From", p);
        this.a("Resent-From", p);
        final n n = new n();
        this.a("Sender", n);
        this.a("Resent-Sender", n);
        final b b = new b();
        this.a("To", b);
        this.a("Resent-To", b);
        this.a("Cc", b);
        this.a("Resent-Cc", b);
        this.a("Bcc", b);
        this.a("Resent-Bcc", b);
        this.a("Reply-To", b);
    }
}
