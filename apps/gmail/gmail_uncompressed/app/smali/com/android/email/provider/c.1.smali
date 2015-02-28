.class public final Lcom/android/email/provider/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final RH:Ljava/lang/String;

.field private RI:Z


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 265
    instance-of v0, p1, Lcom/android/email/provider/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/provider/c;

    iget-object v0, p1, Lcom/android/email/provider/c;->RH:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/provider/c;->RH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/email/provider/c;->RH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method final invalidate()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/c;->RI:Z

    .line 261
    return-void
.end method
