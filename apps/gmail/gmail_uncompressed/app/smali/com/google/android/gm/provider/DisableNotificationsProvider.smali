.class public final Lcom/google/android/gm/provider/DisableNotificationsProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private DW()Z
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/f;->cf(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/common/f;->a(Landroid/content/pm/PackageManager;I)Z

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string v0, "areNotificationOperationsSupported"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    const-string v2, "supported"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "areNotificationsEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 78
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 79
    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v4, p2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v5, "gmail-ls"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 81
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    move v0, v1

    .line 84
    :goto_1
    new-instance v4, Lcom/google/android/gm/preference/i;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4}, Lcom/android/mail/i/a;->to()Z

    move-result v4

    .line 87
    const-string v5, "enabled"

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v3

    .line 89
    goto :goto_0

    :cond_2
    move v0, v2

    .line 81
    goto :goto_1

    :cond_3
    move v1, v2

    .line 87
    goto :goto_2

    .line 90
    :cond_4
    const-string v0, "disableNotifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    new-instance v0, Lcom/google/android/gm/preference/i;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/android/mail/i/a;->to()Z

    move-result v3

    .line 94
    if-eqz v3, :cond_5

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/mail/i/a;->aW(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gm/preference/A;->O(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 102
    const-string v1, "disabled"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 107
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :cond_0
    return v1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :cond_0
    return-object v1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :cond_0
    return-object v1
.end method

.method public final onCreate()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :cond_0
    return-object v1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/google/android/gm/provider/DisableNotificationsProvider;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :cond_0
    return v1
.end method
