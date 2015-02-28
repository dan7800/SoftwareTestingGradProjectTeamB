.class public final Lcom/google/api/client/http/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cwo:Lcom/google/api/client/http/A;

.field private final cxx:Lcom/google/api/client/http/v;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/A;Lcom/google/api/client/http/v;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/api/client/http/u;->cwo:Lcom/google/api/client/http/A;

    .line 55
    iput-object p2, p0, Lcom/google/api/client/http/u;->cxx:Lcom/google/api/client/http/v;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/api/client/http/j;Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/api/client/http/u;->cwo:Lcom/google/api/client/http/A;

    invoke-virtual {v0}, Lcom/google/api/client/http/A;->XT()Lcom/google/api/client/http/t;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/api/client/http/u;->cxx:Lcom/google/api/client/http/v;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/api/client/http/u;->cxx:Lcom/google/api/client/http/v;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/v;->a(Lcom/google/api/client/http/t;)V

    .line 95
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/api/client/http/t;->hp(Ljava/lang/String;)Lcom/google/api/client/http/t;

    .line 96
    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {v0, p2}, Lcom/google/api/client/http/t;->e(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/t;

    .line 99
    :cond_1
    if-eqz p3, :cond_2

    .line 100
    invoke-virtual {v0, p3}, Lcom/google/api/client/http/t;->b(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    .line 102
    :cond_2
    return-object v0
.end method
