.class public final Lorg/owasp/html/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b",
        "<",
        "Lorg/owasp/html/N;",
        "Lorg/owasp/html/M;",
        ">;"
    }
.end annotation


# instance fields
.field private final cJY:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/n;",
            ">;"
        }
    .end annotation
.end field

.field private final cJZ:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/b;",
            ">;"
        }
    .end annotation
.end field

.field private final cKa:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/n;",
            ">;",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/owasp/html/U;->cJY:Lcom/google/common/collect/ImmutableMap;

    .line 65
    iput-object p2, p0, Lorg/owasp/html/U;->cKa:Lcom/google/common/collect/ImmutableSet;

    .line 66
    iput-object p3, p0, Lorg/owasp/html/U;->cJZ:Lcom/google/common/collect/ImmutableMap;

    .line 67
    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lorg/owasp/html/N;

    invoke-virtual {p0, p1}, Lorg/owasp/html/U;->apply(Lorg/owasp/html/N;)Lorg/owasp/html/M;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lorg/owasp/html/N;)Lorg/owasp/html/M;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lorg/owasp/html/o;

    iget-object v1, p0, Lorg/owasp/html/U;->cJY:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, p0, Lorg/owasp/html/U;->cKa:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, p1, v1, v2}, Lorg/owasp/html/o;-><init>(Lorg/owasp/html/N;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;)V

    return-object v0
.end method

.method public final apply(Lorg/owasp/html/N;Lorg/owasp/html/z;Ljava/lang/Object;)Lorg/owasp/html/M;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CTX:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/owasp/html/N;",
            "Lorg/owasp/html/z",
            "<TCTX;>;TCTX;)",
            "Lorg/owasp/html/M;"
        }
    .end annotation

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lorg/owasp/html/U;->apply(Lorg/owasp/html/N;)Lorg/owasp/html/M;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lorg/owasp/html/A;

    invoke-direct {v0, p1, p2, p3}, Lorg/owasp/html/A;-><init>(Lorg/owasp/html/N;Lorg/owasp/html/z;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0}, Lorg/owasp/html/A;->acb()Lorg/owasp/html/N;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/owasp/html/U;->apply(Lorg/owasp/html/N;)Lorg/owasp/html/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/owasp/html/A;->a(Lorg/owasp/html/M;)V

    .line 95
    invoke-virtual {v0}, Lorg/owasp/html/A;->acc()Lorg/owasp/html/M;

    move-result-object v0

    goto :goto_0
.end method
