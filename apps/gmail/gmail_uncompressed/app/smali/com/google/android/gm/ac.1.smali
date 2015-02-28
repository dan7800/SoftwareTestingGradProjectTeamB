.class final Lcom/google/android/gm/ac;
.super Lcom/android/emailcommon/b/p;
.source "SourceFile"


# instance fields
.field final synthetic aYG:Lcom/google/android/gm/MailApplication;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/MailApplication;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/gm/ac;->aYG:Lcom/google/android/gm/MailApplication;

    invoke-direct {p0}, Lcom/android/emailcommon/b/p;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/MailApplication;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gm/ac;-><init>(Lcom/google/android/gm/MailApplication;)V

    return-void
.end method


# virtual methods
.method public final ai(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_enable_conscrypt_provider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/g/a;->ai(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Repairable error from installIfNeeded, in runHttpRequest"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->JR()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/gms/common/f;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 114
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Unrecoverable error from installIfNeeded, in runHttpRequest"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
