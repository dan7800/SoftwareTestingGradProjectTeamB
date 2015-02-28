.class public final Lcom/google/android/gm/preference/i;
.super Lcom/android/mail/i/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-static {p1}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    return-void
.end method
