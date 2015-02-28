.class public final Lcom/google/android/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static dm(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 33
    const-string v0, "google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/high16 v0, 0x30000000

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    const-string v0, "gmail.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "googlemail.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    const/high16 v0, 0x10000000

    goto :goto_0

    .line 39
    :cond_2
    const/high16 v0, 0x20000000

    goto :goto_0
.end method
