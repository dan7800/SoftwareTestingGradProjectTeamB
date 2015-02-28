.class final Lorg/owasp/html/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/p;


# instance fields
.field final cJW:Lorg/owasp/html/p;

.field final cJX:Lorg/owasp/html/p;


# direct methods
.method constructor <init>(Lorg/owasp/html/p;Lorg/owasp/html/p;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/owasp/html/T;->cJW:Lorg/owasp/html/p;

    .line 125
    iput-object p2, p0, Lorg/owasp/html/T;->cJX:Lorg/owasp/html/p;

    .line 126
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/owasp/html/T;->cJW:Lorg/owasp/html/p;

    invoke-interface {v0, p1, p2}, Lorg/owasp/html/p;->apply(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/owasp/html/T;->cJX:Lorg/owasp/html/p;

    invoke-interface {v1, v0, p2}, Lorg/owasp/html/p;->apply(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
