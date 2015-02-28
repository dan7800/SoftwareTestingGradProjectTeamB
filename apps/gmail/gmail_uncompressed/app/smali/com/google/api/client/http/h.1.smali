.class public final Lcom/google/api/client/http/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/util/K;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-direct {v0, p0, p2}, Lcom/google/api/client/http/i;-><init>(Lcom/google/api/client/http/h;Ljava/io/OutputStream;)V

    .line 48
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    invoke-interface {p1, v1}, Lcom/google/api/client/util/K;->writeTo(Ljava/io/OutputStream;)V

    .line 51
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 52
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "gzip"

    return-object v0
.end method
