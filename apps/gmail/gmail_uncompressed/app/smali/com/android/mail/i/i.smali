.class public final Lcom/android/mail/i/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static axT:Lcom/android/mail/i/j;


# direct methods
.method public static a(Lcom/android/mail/i/j;)V
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/android/mail/i/i;->axT:Lcom/android/mail/i/j;

    .line 31
    return-void
.end method

.method public static tX()Lcom/android/mail/i/d;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/mail/i/i;->axT:Lcom/android/mail/i/j;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/android/mail/i/i;->axT:Lcom/android/mail/i/j;

    invoke-interface {v0}, Lcom/android/mail/i/j;->tX()Lcom/android/mail/i/d;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
