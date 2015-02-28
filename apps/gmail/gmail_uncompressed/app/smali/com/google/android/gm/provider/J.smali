.class final Lcom/google/android/gm/provider/J;
.super Lcom/android/mail/utils/i;
.source "SourceFile"


# instance fields
.field private final Hb:Landroid/content/ContentResolver;

.field private final bfG:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3895
    invoke-static {}, Lcom/google/android/gm/provider/GmailProvider;->yC()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/mail/utils/i;-><init>(Landroid/os/Looper;I)V

    .line 3897
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/J;->Hb:Landroid/content/ContentResolver;

    .line 3898
    invoke-static {p3}, Lcom/google/android/gm/provider/GmailProvider;->ez(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/J;->bfG:Landroid/net/Uri;

    .line 3899
    return-void
.end method


# virtual methods
.method protected final AQ()V
    .locals 4

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/google/android/gm/provider/J;->Hb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gm/provider/J;->bfG:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3904
    return-void
.end method
