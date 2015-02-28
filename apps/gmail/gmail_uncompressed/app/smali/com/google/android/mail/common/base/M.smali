.class public final Lcom/google/android/mail/common/base/M;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static assertTrue(Z)V
    .locals 2

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method
