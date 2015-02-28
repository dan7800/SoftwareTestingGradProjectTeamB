.class public final Lcom/google/android/gm/provider/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bhU:Ljava/lang/String;

.field public id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-wide p1, p0, Lcom/google/android/gm/provider/af;->id:J

    .line 207
    iput-object p3, p0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 217
    instance-of v1, p1, Lcom/google/android/gm/provider/af;

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    check-cast p1, Lcom/google/android/gm/provider/af;

    .line 219
    iget-wide v2, p0, Lcom/google/android/gm/provider/af;->id:J

    iget-wide v4, p1, Lcom/google/android/gm/provider/af;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/google/android/gm/provider/af;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gm/provider/af;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
