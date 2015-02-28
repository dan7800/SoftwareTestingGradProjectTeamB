.class public Lcom/android/mail/f;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/f;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "MailIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static aj(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.action.BACKUP_DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    sget-object v0, Lcom/android/mail/f;->mW:Ljava/lang/String;

    const-string v1, "Handling intent %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/mail/f;->oo()Lcom/android/mail/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/g/a;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v1, "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 80
    const-string v1, "folder"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/mail/providers/Folder;

    .line 82
    invoke-static {p0, v0, v2, v4}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V

    .line 83
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "notification_dismiss"

    invoke-virtual {v2}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "com.android.mail.action.RESEND_NOTIFICATIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const-string v0, "accountUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 88
    const-string v1, "folderUri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 89
    if-nez v1, :cond_3

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/android/mail/f;->oo()Lcom/android/mail/g/a;

    move-result-object v1

    invoke-static {p0, v5, v0, v3, v1}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;ZLandroid/net/Uri;Lcom/android/mail/utils/p;Lcom/android/mail/g/a;)V

    goto :goto_0

    .line 89
    :cond_3
    new-instance v3, Lcom/android/mail/utils/p;

    invoke-direct {v3, v1}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    goto :goto_1

    .line 94
    :cond_4
    const-string v1, "com.android.mail.action.RESEND_NOTIFICATIONS_WEAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 96
    const-string v1, "folder"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 97
    const-string v2, "conversationUri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 101
    invoke-static {p0, v2}, Lcom/android/mail/utils/N;->b(Landroid/content/Context;Landroid/net/Uri;)V

    .line 102
    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {p0}, Lcom/android/mail/f;->oo()Lcom/android/mail/g/a;

    move-result-object v2

    invoke-static {p0, v5, v0, v1, v2}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;ZLandroid/net/Uri;Lcom/android/mail/utils/p;Lcom/android/mail/g/a;)V

    goto/16 :goto_0

    .line 104
    :cond_5
    const-string v1, "com.android.mail.action.SEND_SET_NEW_EMAIL_INDICATOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    const-string v0, "unread-count"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 106
    const-string v0, "unseen-count"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 107
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/mail/providers/Account;

    .line 108
    const-string v0, "folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/mail/providers/Folder;

    .line 109
    const-string v0, "get-attention"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 112
    invoke-virtual {p0}, Lcom/android/mail/f;->oo()Lcom/android/mail/g/a;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;IILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;ZLcom/android/mail/g/a;)V

    goto/16 :goto_0

    .line 114
    :cond_6
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    invoke-static {v4}, Lcom/android/mail/utils/aa;->bG(Z)V

    goto/16 :goto_0

    .line 119
    :cond_7
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {v5}, Lcom/android/mail/utils/aa;->bG(Z)V

    goto/16 :goto_0
.end method

.method public oo()Lcom/android/mail/g/a;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method
