.class public final Lcom/google/android/gm/provider/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final blH:J

.field public final id:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-wide p1, p0, Lcom/google/android/gm/provider/bj;->id:J

    .line 367
    iput-wide p3, p0, Lcom/google/android/gm/provider/bj;->blH:J

    .line 368
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    if-ne p0, p1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 383
    goto :goto_0

    .line 386
    :cond_3
    check-cast p1, Lcom/google/android/gm/provider/bj;

    .line 388
    iget-wide v2, p0, Lcom/google/android/gm/provider/bj;->id:J

    iget-wide v4, p1, Lcom/google/android/gm/provider/bj;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 389
    goto :goto_0

    .line 392
    :cond_4
    iget-wide v2, p0, Lcom/google/android/gm/provider/bj;->blH:J

    iget-wide v4, p1, Lcom/google/android/gm/provider/bj;->blH:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 393
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 372
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gm/provider/bj;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gm/provider/bj;->blH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ConversationInfo id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gm/provider/bj;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", highest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gm/provider/bj;->blH:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
