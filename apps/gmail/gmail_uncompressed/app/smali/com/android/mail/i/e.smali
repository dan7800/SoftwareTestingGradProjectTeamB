.class public Lcom/android/mail/i/e;
.super Lcom/android/mail/i/l;
.source "SourceFile"


# instance fields
.field private final aqp:Lcom/android/mail/providers/Folder;

.field private final axP:Ljava/lang/String;

.field private final axQ:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Folder-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/i/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    iput-object p3, p0, Lcom/android/mail/i/e;->aqp:Lcom/android/mail/providers/Folder;

    .line 102
    iput-object p4, p0, Lcom/android/mail/i/e;->axP:Ljava/lang/String;

    .line 103
    iput-boolean p5, p0, Lcom/android/mail/i/e;->axQ:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V
    .locals 6

    .prologue
    .line 78
    iget-object v4, p3, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 95
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method private bC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object p1

    .line 149
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/mail/i/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 155
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 157
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/android/mail/common/base/K;->gK(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
    const/4 p1, 0x0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private bD(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object p1

    .line 179
    :cond_1
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/mail/i/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v0, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 181
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 183
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 p1, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public final aW(Z)V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications-enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    invoke-virtual {p0}, Lcom/android/mail/i/e;->ua()V

    .line 218
    return-void
.end method

.method public final aX(Z)V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification-vibrate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    invoke-virtual {p0}, Lcom/android/mail/i/e;->ua()V

    .line 237
    return-void
.end method

.method public final aY(Z)V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification-notify-every-message"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    invoke-virtual {p0}, Lcom/android/mail/i/e;->ua()V

    .line 247
    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    const-string v0, "notification-ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/mail/i/e;->bC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/i/l;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bB(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mail/i/e;->axP:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mail/i/f;->axN:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final bE(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification-ringtone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    invoke-virtual {p0}, Lcom/android/mail/i/e;->ua()V

    .line 228
    return-void
.end method

.method protected final c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    const-string v0, "notification-ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/mail/i/e;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/i/l;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final cq(I)V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You appear to have downgraded your app. Please clear app data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method public final h(Lcom/android/mail/providers/Account;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Account;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mail/i/e;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/i/e;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 253
    :goto_0
    const-string v1, "delete"

    invoke-virtual {p0}, Lcom/android/mail/i/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mail/i/g;->ba(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 256
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 259
    :goto_1
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->AZ()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tz()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->AZ()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_2
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 267
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    return-object v2

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :cond_2
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    goto :goto_1

    .line 261
    :cond_3
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->AZ()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final to()Z
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notifications-enabled"

    iget-boolean v2, p0, Lcom/android/mail/i/e;->axQ:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tt()Z
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notifications-enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final tu()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notification-ringtone"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tv()Z
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notification-vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tw()Z
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/mail/i/e;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notification-notify-every-message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
