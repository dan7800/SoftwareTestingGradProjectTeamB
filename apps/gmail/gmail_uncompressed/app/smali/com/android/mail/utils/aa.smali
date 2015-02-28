.class public final Lcom/android/mail/utils/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aQy:Z

.field private static aQz:Lcom/android/mail/utils/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mail/utils/aa;->aQy:Z

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/utils/aa;->aQz:Lcom/android/mail/utils/ab;

    return-void
.end method

.method public static a(Lcom/android/mail/utils/ab;)V
    .locals 1

    .prologue
    .line 91
    sput-object p0, Lcom/android/mail/utils/aa;->aQz:Lcom/android/mail/utils/ab;

    .line 93
    sget-boolean v0, Lcom/android/mail/utils/aa;->aQy:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/mail/utils/aa;->aQz:Lcom/android/mail/utils/ab;

    invoke-interface {v0}, Lcom/android/mail/utils/ab;->ks()V

    .line 96
    :cond_0
    return-void
.end method

.method public static aE(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/mail/utils/aa;->bG(Z)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bG(Z)V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/mail/utils/aa;->aQy:Z

    if-ne v0, p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sput-boolean p0, Lcom/android/mail/utils/aa;->aQy:Z

    .line 74
    sget-object v0, Lcom/android/mail/utils/aa;->aQz:Lcom/android/mail/utils/ab;

    if-eqz v0, :cond_0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    sget-object v0, Lcom/android/mail/utils/aa;->aQz:Lcom/android/mail/utils/ab;

    invoke-interface {v0}, Lcom/android/mail/utils/ab;->ks()V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcom/android/mail/utils/aa;->aQz:Lcom/android/mail/utils/ab;

    invoke-interface {v0}, Lcom/android/mail/utils/ab;->kt()V

    goto :goto_0
.end method
