.class final Lcom/google/api/client/http/p;
.super Lcom/google/api/client/http/D;
.source "SourceFile"


# instance fields
.field private final cwR:Lcom/google/api/client/http/o;

.field private final cwS:Lcom/google/api/client/http/q;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/o;Lcom/google/api/client/http/q;)V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/google/api/client/http/D;-><init>()V

    .line 1000
    iput-object p1, p0, Lcom/google/api/client/http/p;->cwR:Lcom/google/api/client/http/o;

    .line 1001
    iput-object p2, p0, Lcom/google/api/client/http/p;->cwS:Lcom/google/api/client/http/q;

    .line 1002
    return-void
.end method


# virtual methods
.method public final Xw()Lcom/google/api/client/http/E;
    .locals 1

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/api/client/http/p;->cwR:Lcom/google/api/client/http/o;

    iget-object v1, p0, Lcom/google/api/client/http/p;->cwS:Lcom/google/api/client/http/q;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/api/client/http/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/q;)V

    .line 1007
    return-void
.end method
