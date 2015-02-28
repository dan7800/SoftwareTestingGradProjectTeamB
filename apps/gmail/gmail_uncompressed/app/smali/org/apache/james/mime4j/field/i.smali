.class public final Lorg/apache/james/mime4j/field/i;
.super Lorg/apache/james/mime4j/field/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/j;-><init>()V

    .line 21
    const-string v0, "Content-Transfer-Encoding"

    new-instance v1, Lorg/apache/james/mime4j/field/d;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 22
    const-string v0, "Content-Type"

    new-instance v1, Lorg/apache/james/mime4j/field/f;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 24
    new-instance v0, Lorg/apache/james/mime4j/field/h;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/h;-><init>()V

    .line 25
    const-string v1, "Date"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 26
    const-string v1, "Resent-Date"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 28
    new-instance v0, Lorg/apache/james/mime4j/field/p;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/p;-><init>()V

    .line 29
    const-string v1, "From"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 30
    const-string v1, "Resent-From"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 32
    new-instance v0, Lorg/apache/james/mime4j/field/n;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/n;-><init>()V

    .line 33
    const-string v1, "Sender"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 34
    const-string v1, "Resent-Sender"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/field/b;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/b;-><init>()V

    .line 37
    const-string v1, "To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 38
    const-string v1, "Resent-To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 39
    const-string v1, "Cc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 40
    const-string v1, "Resent-Cc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 41
    const-string v1, "Bcc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 42
    const-string v1, "Resent-Bcc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 43
    const-string v1, "Reply-To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/i;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V

    .line 44
    return-void
.end method
