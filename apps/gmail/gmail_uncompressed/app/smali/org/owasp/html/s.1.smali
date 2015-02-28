.class public final Lorg/owasp/html/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final varargs a([Lorg/owasp/html/p;)Lorg/owasp/html/p;
    .locals 4

    .prologue
    .line 93
    new-instance v1, Lorg/owasp/html/t;

    invoke-direct {v1}, Lorg/owasp/html/t;-><init>()V

    .line 94
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 95
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v1, v3}, Lorg/owasp/html/t;->a(Lorg/owasp/html/p;)V

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, v1, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lorg/owasp/html/p;->cHX:Lorg/owasp/html/p;

    goto :goto_1
.end method
