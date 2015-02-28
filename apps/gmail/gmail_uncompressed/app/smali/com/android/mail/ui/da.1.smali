.class public final Lcom/android/mail/ui/da;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private Ym:Ljava/lang/String;

.field private aEC:Lcom/android/mail/ui/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/da;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final Ac()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mail/ui/da;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/android/mail/ui/a;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-virtual {p2}, Lcom/android/mail/ui/a;->vK()Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 54
    iput-object p1, p0, Lcom/android/mail/ui/da;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/mail/ui/da;->aEC:Lcom/android/mail/ui/a;

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.mail.action.update_notification"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v0, v0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/ui/da;->Ym:Ljava/lang/String;

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/da;->Ym:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return v6

    .line 67
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/mail/ui/da;->mW:Ljava/lang/String;

    const-string v2, "Malformed mimetype: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/da;->Ym:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/android/mail/ui/da;->mW:Ljava/lang/String;

    const-string v2, "Registering receiver with no mime type"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final deactivate()V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/da;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/mail/ui/da;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/da;->mContext:Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/da;->Ym:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "com.android.mail.action.update_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/da;->aEC:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->vP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/da;->aEC:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->vL()Lcom/android/mail/c;

    move-result-object v0

    .line 121
    if-nez v0, :cond_2

    .line 123
    sget-object v0, Lcom/android/mail/ui/da;->mW:Ljava/lang/String;

    const-string v1, "unexpected null context"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {v0}, Lcom/android/mail/c;->a(Lcom/android/mail/c;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, v0, Lcom/android/mail/c;->account:Lcom/android/mail/providers/Account;

    .line 133
    iget-object v2, v0, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    .line 135
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    .line 136
    :cond_3
    sget-object v0, Lcom/android/mail/ui/da;->mW:Ljava/lang/String;

    const-string v3, "SuppressNotificationReceiver.onReceive: account=%s, folder=%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 141
    :cond_4
    const-string v0, "notification_extra_account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 143
    iget-object v1, v1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "notification_extra_folder"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 149
    iget-object v1, v2, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v1, v0}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "notification_updated_unread_count"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 158
    if-eqz v1, :cond_0

    .line 161
    sget-object v1, Lcom/android/mail/ui/da;->mW:Ljava/lang/String;

    const-string v2, "Aborting broadcast of intent %s, folder uri is %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    invoke-virtual {p0}, Lcom/android/mail/ui/da;->abortBroadcast()V

    goto :goto_0
.end method

.method public final w(Lcom/android/mail/providers/Account;)Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mail/ui/da;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mail/ui/da;->Ym:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
