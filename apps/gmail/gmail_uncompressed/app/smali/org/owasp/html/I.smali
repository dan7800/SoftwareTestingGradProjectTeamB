.class public final Lorg/owasp/html/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic cJl:Lorg/owasp/html/G;

.field private final cJm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cJn:Lorg/owasp/html/b;


# direct methods
.method constructor <init>(Lorg/owasp/html/G;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    iput-object p1, p0, Lorg/owasp/html/I;->cJl:Lorg/owasp/html/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    sget-object v0, Lorg/owasp/html/b;->cGE:Lorg/owasp/html/b;

    iput-object v0, p0, Lorg/owasp/html/I;->cJn:Lorg/owasp/html/b;

    .line 639
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/I;->cJm:Ljava/util/List;

    .line 640
    return-void
.end method


# virtual methods
.method public final varargs L([Ljava/lang/String;)Lorg/owasp/html/G;
    .locals 4

    .prologue
    .line 736
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zs()Lcom/google/common/collect/x;

    move-result-object v1

    .line 737
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 738
    invoke-static {v3}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/x;->aF(Ljava/lang/Object;)Lcom/google/common/collect/x;

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/I;->cJl:Lorg/owasp/html/G;

    iget-object v2, p0, Lorg/owasp/html/I;->cJn:Lorg/owasp/html/b;

    iget-object v3, p0, Lorg/owasp/html/I;->cJm:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/common/collect/x;->Zt()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lorg/owasp/html/G;->a(Lorg/owasp/html/G;Lorg/owasp/html/b;Ljava/util/List;Ljava/util/List;)Lorg/owasp/html/G;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/owasp/html/b;)Lorg/owasp/html/I;
    .locals 3

    .prologue
    .line 650
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/owasp/html/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/owasp/html/I;->cJn:Lorg/owasp/html/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/owasp/html/e;->a([Lorg/owasp/html/b;)Lorg/owasp/html/b;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/I;->cJn:Lorg/owasp/html/b;

    .line 651
    return-object p0
.end method

.method public final a(ZLjava/util/Set;)Lorg/owasp/html/I;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/owasp/html/I;"
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 705
    new-instance v1, Lorg/owasp/html/J;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0}, Lorg/owasp/html/J;-><init>(Lorg/owasp/html/I;ZLcom/google/common/collect/ImmutableSet;)V

    invoke-virtual {p0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    return-object v0
.end method

.method public final acg()Lorg/owasp/html/G;
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lorg/owasp/html/I;->cJl:Lorg/owasp/html/G;

    iget-object v1, p0, Lorg/owasp/html/I;->cJn:Lorg/owasp/html/b;

    iget-object v2, p0, Lorg/owasp/html/I;->cJm:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lorg/owasp/html/G;->a(Lorg/owasp/html/G;Lorg/owasp/html/b;Ljava/util/List;)Lorg/owasp/html/G;

    move-result-object v0

    return-object v0
.end method
