.class public final Lcom/google/api/client/googleapis/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/n;
.implements Lcom/google/api/client/http/v;


# instance fields
.field private final cvA:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/b;-><init>(B)V

    .line 82
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/b;->cvA:Z

    .line 86
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/t;)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/t;

    .line 90
    return-void
.end method

.method public final b(Lcom/google/api/client/http/t;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->Xz()Lcom/google/api/client/http/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/j;->Xn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x800

    if-le v2, v3, :cond_3

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/t;->hp(Ljava/lang/String;)Lcom/google/api/client/http/t;

    .line 96
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v1

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/o;->m(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/o;

    .line 97
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    new-instance v0, Lcom/google/api/client/http/H;

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->Xz()Lcom/google/api/client/http/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/H;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/t;->b(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    .line 105
    :cond_1
    :goto_1
    return-void

    .line 93
    :cond_2
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/b;->cvA:Z

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->Xy()Lcom/google/api/client/http/A;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/A;->hs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XA()Lcom/google/api/client/http/k;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/google/api/client/http/e;

    invoke-direct {v0}, Lcom/google/api/client/http/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/t;->b(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    goto :goto_1
.end method
