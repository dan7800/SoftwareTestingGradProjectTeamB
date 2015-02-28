.class public final Lcom/google/android/gm/preference/j;
.super Lcom/android/mail/i/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p1}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    return-void
.end method
