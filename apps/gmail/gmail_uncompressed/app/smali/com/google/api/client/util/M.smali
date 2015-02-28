.class public final Lcom/google/api/client/util/M;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static gK(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
