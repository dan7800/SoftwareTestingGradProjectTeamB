.class public Lcom/android/mail/NotificationActionIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "NotificationActionIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 101
    const-string v0, "com.android.mail.extra.EXTRA_NOTIFICATION_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 104
    array-length v2, v0

    invoke-virtual {v1, v0, v11, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 105
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    const-class v2, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    .line 113
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AW()Lcom/android/mail/providers/Message;

    move-result-object v9

    .line 115
    invoke-virtual {p0}, Lcom/android/mail/NotificationActionIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 117
    const-string v0, "NotifActionIS"

    const-string v1, "Handling %s"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v8, v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    const-string v0, "com.android.mail.action.notification.ARCHIVE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "archive_remove_label"

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "notification_action"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 121
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getSource()I

    move-result v0

    if-ne v0, v12, :cond_3

    .line 124
    const-string v0, "NotifActionIS"

    const-string v1, "Canceling %s"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    invoke-static {p0}, Landroid/support/v4/app/aA;->a(Landroid/content/Context;)Landroid/support/v4/app/aA;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aA;->cancel(I)V

    .line 126
    invoke-static {p0, v6}, Lcom/android/mail/utils/NotificationActionUtils;->d(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 127
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 157
    :goto_1
    return-void

    .line 109
    :cond_0
    const-string v0, "NotifActionIS"

    const-string v1, "data was null trying to unparcel the NotificationAction"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 119
    :cond_1
    const-string v0, "com.android.mail.action.notification.DELETE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "delete"

    move-object v3, v7

    goto :goto_0

    :cond_2
    move-object v3, v7

    move-object v2, v8

    goto :goto_0

    .line 132
    :cond_3
    const-string v0, "com.android.mail.action.notification.UNDO"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-static {p0, v6}, Lcom/android/mail/utils/NotificationActionUtils;->b(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 134
    invoke-static {p0, v6}, Lcom/android/mail/utils/NotificationActionUtils;->f(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto :goto_1

    .line 135
    :cond_4
    const-string v0, "com.android.mail.action.notification.ARCHIVE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.android.mail.action.notification.DELETE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    :cond_5
    invoke-static {p0, v6}, Lcom/android/mail/utils/NotificationActionUtils;->e(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 139
    invoke-static {p0, v6}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto :goto_1

    .line 141
    :cond_6
    const-string v0, "com.android.mail.action.notification.UNDO_TIMEOUT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.mail.action.notification.DESTRUCT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    :cond_7
    invoke-static {p0, v6}, Lcom/android/mail/utils/NotificationActionUtils;->b(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 144
    invoke-static {p0, v6}, Lcom/android/mail/utils/NotificationActionUtils;->g(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 154
    :cond_8
    :goto_2
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    goto :goto_1

    .line 145
    :cond_9
    const-string v0, "com.android.mail.action.notification.MARK_READ"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    iget-object v0, v9, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 148
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 149
    const-string v2, "read"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    invoke-virtual {v10, v0, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2
.end method
