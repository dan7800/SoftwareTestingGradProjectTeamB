.class final Lorg/owasp/html/Q;
.super Lorg/owasp/html/O;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final cJy:Ljava/io/Closeable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/io/IOException;",
            ">;",
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/owasp/html/O;-><init>(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;B)V

    .line 399
    check-cast p1, Ljava/io/Closeable;

    iput-object p1, p0, Lorg/owasp/html/Q;->cJy:Ljava/io/Closeable;

    .line 400
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/owasp/html/Q;->ach()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/owasp/html/Q;->aca()V

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/Q;->cJy:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 405
    return-void
.end method
