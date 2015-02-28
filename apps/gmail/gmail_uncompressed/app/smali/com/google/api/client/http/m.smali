.class public final Lcom/google/api/client/http/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/K;


# instance fields
.field private final cwP:Lcom/google/api/client/util/K;

.field private final cwQ:Lcom/google/api/client/http/l;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/K;Lcom/google/api/client/http/l;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/K;

    iput-object v0, p0, Lcom/google/api/client/http/m;->cwP:Lcom/google/api/client/util/K;

    .line 47
    invoke-static {p2}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/l;

    iput-object v0, p0, Lcom/google/api/client/http/m;->cwQ:Lcom/google/api/client/http/l;

    .line 48
    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/api/client/http/m;->cwQ:Lcom/google/api/client/http/l;

    iget-object v1, p0, Lcom/google/api/client/http/m;->cwP:Lcom/google/api/client/util/K;

    invoke-interface {v0, v1, p1}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/util/K;Ljava/io/OutputStream;)V

    .line 52
    return-void
.end method
