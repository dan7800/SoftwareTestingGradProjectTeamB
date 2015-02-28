.class public final Lcom/android/email/provider/I;
.super Lcom/android/mail/widget/b;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/I;->mW:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 154
    if-nez p0, :cond_0

    .line 155
    sget-object v1, Lcom/android/email/provider/I;->mW:Ljava/lang/String;

    const-string v2, "Null account cursor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    :goto_0
    return-object v0

    .line 161
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {p0}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 165
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/android/mail/providers/Account;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 72
    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    iget-object v1, p2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/providers/E;->aCs:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 78
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 80
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 84
    :goto_1
    return v0

    :cond_0
    move v0, v6

    .line 78
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v6

    .line 84
    goto :goto_1
.end method

.method protected final d(Landroid/content/Context;I)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    .line 89
    const-string v0, "com.android.email.widget.WidgetManager"

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 92
    const-string v0, "com.android.email.widget.WidgetManager"

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accountId_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 93
    const-string v0, "com.android.email.widget.WidgetManager"

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailboxId_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 95
    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 96
    :cond_0
    sget-object v2, Lcom/android/email/provider/I;->mW:Ljava/lang/String;

    const-string v3, "Couldn\'t load account or mailbox.  accountId: %d mailboxId: %d widgetId %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v8

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v4

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v2, v3, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :goto_0
    return-void

    .line 101
    :cond_1
    const-wide/high16 v6, 0x1000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    const-wide/32 v4, 0x10000000

    .line 102
    :cond_2
    const-wide/16 v6, -0x2

    cmp-long v2, v0, v6

    if-nez v2, :cond_4

    invoke-static {v4, v5, v8}, Lcom/android/email/provider/EmailProvider;->a(JI)J

    move-result-wide v0

    move-wide v6, v0

    .line 105
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uiaccount"

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCs:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/provider/I;->a(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v3

    .line 106
    invoke-static {p1, v6, v7}, Lcom/android/email/provider/EmailProvider;->e(Landroid/content/Context;J)Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 108
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 109
    iget-object v1, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v3, v1}, Lcom/android/mail/widget/g;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 112
    iget v4, v0, Lcom/android/mail/providers/Folder;->type:I

    iget v5, v0, Lcom/android/mail/providers/Folder;->ayg:I

    iget-object v1, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v6, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    iget-object v7, v0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    iget-object v8, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/provider/I;->b(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "accountId_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mailboxId_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_3
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 102
    :cond_4
    const-wide/16 v6, -0x3

    cmp-long v2, v0, v6

    if-nez v2, :cond_5

    const/16 v0, 0xa

    invoke-static {v4, v5, v0}, Lcom/android/email/provider/EmailProvider;->a(JI)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v0

    goto :goto_1
.end method

.method protected final g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCs:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/android/email/provider/I;->a(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public final onDeleted(Landroid/content/Context;[I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/mail/widget/b;->onDeleted(Landroid/content/Context;[I)V

    .line 49
    const-string v1, "com.android.email.widget.WidgetManager"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p2, v0

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "accountId_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mailboxId_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    return-void
.end method
