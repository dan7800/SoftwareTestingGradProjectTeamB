.class final Lcom/google/api/client/googleapis/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/y;


# instance fields
.field final synthetic cwA:Lcom/google/api/client/http/t;

.field final synthetic cwB:Lcom/google/api/client/googleapis/a/c;

.field final synthetic cwz:Lcom/google/api/client/http/y;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/a/c;Lcom/google/api/client/http/y;Lcom/google/api/client/http/t;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/api/client/googleapis/a/d;->cwB:Lcom/google/api/client/googleapis/a/c;

    iput-object p2, p0, Lcom/google/api/client/googleapis/a/d;->cwz:Lcom/google/api/client/http/y;

    iput-object p3, p0, Lcom/google/api/client/googleapis/a/d;->cwA:Lcom/google/api/client/http/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/api/client/http/w;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/d;->cwz:Lcom/google/api/client/http/y;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/d;->cwz:Lcom/google/api/client/http/y;

    invoke-interface {v0, p1}, Lcom/google/api/client/http/y;->b(Lcom/google/api/client/http/w;)V

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->XO()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/googleapis/a/d;->cwA:Lcom/google/api/client/http/t;

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/d;->cwB:Lcom/google/api/client/googleapis/a/c;

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/a/c;->a(Lcom/google/api/client/http/w;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 314
    :cond_1
    return-void
.end method
