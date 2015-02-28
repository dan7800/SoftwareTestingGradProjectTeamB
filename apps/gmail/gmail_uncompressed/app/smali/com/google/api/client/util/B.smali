.class public final Lcom/google/api/client/util/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/K;


# instance fields
.field private final cuU:Ljava/util/logging/Logger;

.field private final cwP:Lcom/google/api/client/util/K;

.field private final cxh:I

.field private final czC:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/K;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/api/client/util/B;->cwP:Lcom/google/api/client/util/K;

    .line 56
    iput-object p2, p0, Lcom/google/api/client/util/B;->cuU:Ljava/util/logging/Logger;

    .line 57
    iput-object p3, p0, Lcom/google/api/client/util/B;->czC:Ljava/util/logging/Level;

    .line 58
    iput p4, p0, Lcom/google/api/client/util/B;->cxh:I

    .line 59
    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 62
    new-instance v1, Lcom/google/api/client/util/A;

    iget-object v0, p0, Lcom/google/api/client/util/B;->cuU:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/google/api/client/util/B;->czC:Ljava/util/logging/Level;

    iget v3, p0, Lcom/google/api/client/util/B;->cxh:I

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/google/api/client/util/A;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/util/B;->cwP:Lcom/google/api/client/util/K;

    invoke-interface {v0, v1}, Lcom/google/api/client/util/K;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v1}, Lcom/google/api/client/util/A;->YA()Lcom/google/api/client/util/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/y;->close()V

    .line 70
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 71
    return-void

    .line 68
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/api/client/util/A;->YA()Lcom/google/api/client/util/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/y;->close()V

    throw v0
.end method
