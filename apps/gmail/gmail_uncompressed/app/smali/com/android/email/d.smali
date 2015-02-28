.class public final Lcom/android/email/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/m;


# static fields
.field private static LC:Lcom/android/email/j;

.field private static LD:Landroid/os/Handler;

.field private static LE:Lcom/android/email/d;

.field private static LI:Z

.field private static LJ:Z

.field private static final LK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final LL:Ljava/lang/Object;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final LF:Lcom/android/mail/utils/d;

.field private final LG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private LH:Landroid/database/ContentObserver;

.field private final eg:Landroid/app/NotificationManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/d;->LK:Ljava/util/HashSet;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/d;->LL:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mail/utils/d;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/d;->LG:Ljava/util/Map;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent;->g(Landroid/content/Context;)V

    .line 92
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/email/d;->eg:Landroid/app/NotificationManager;

    .line 94
    iput-object p2, p0, Lcom/android/email/d;->LF:Lcom/android/mail/utils/d;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/android/email/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/android/email/d;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/email/d;->LH:Landroid/database/ContentObserver;

    return-object p1
.end method

.method private a(JLjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Z)Landroid/support/v4/app/ab;
    .locals 13

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    if-eqz p6, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, p6

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 142
    :cond_0
    new-instance v3, Landroid/support/v4/app/ab;

    iget-object v4, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/ab;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ab;->i(I)Landroid/support/v4/app/ab;

    move-result-object v2

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/d;->LF:Lcom/android/mail/utils/d;

    invoke-static {}, Lcom/android/mail/utils/d;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/ab;->a(J)Landroid/support/v4/app/ab;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ab;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ab;->c(Z)Landroid/support/v4/app/ab;

    move-result-object v11

    .line 152
    iget-object v2, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v12

    .line 154
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "uiaccount"

    iget-wide v4, v12, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v3}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v8, v2

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v8, :cond_5

    iget-object v2, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v8, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v3, v3, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    sget-object v4, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v2, Lcom/android/email/d;->mW:Ljava/lang/String;

    const-string v3, "Null folder cursor for mailbox %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v6, v6, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v9

    move-object v4, v10

    :goto_1
    const/4 v2, 0x4

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v11, v3}, Landroid/support/v4/app/ab;->a(Landroid/net/Uri;)Landroid/support/v4/app/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/ab;->j(I)Landroid/support/v4/app/ab;

    .line 157
    return-object v11

    .line 154
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Lcom/android/mail/providers/Folder;

    invoke-direct {v2, v3}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_4

    new-instance v4, Lcom/android/mail/i/e;

    iget-object v3, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v3, v5, v2, v6}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    invoke-virtual {v4}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/mail/i/e;->tv()Z

    move-result v2

    move-object v4, v3

    move v3, v2

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    sget-object v2, Lcom/android/email/d;->mW:Ljava/lang/String;

    const-string v3, "Null folder for mailbox %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v6, v6, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v9

    move-object v4, v10

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/email/d;->mW:Ljava/lang/String;

    const-string v3, "Null uiAccount for account id %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v12, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v9

    move-object v4, v10

    goto :goto_1

    :cond_6
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-object v8, v2

    goto/16 :goto_0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 11

    .prologue
    .line 172
    const/high16 v2, -0x10000000

    and-int v2, v2, p7

    const/high16 v3, 0x30000000

    if-ne v2, v3, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Z)Landroid/support/v4/app/ab;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/android/email/d;->eg:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/support/v4/app/ab;->build()Landroid/app/Notification;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 176
    return-void

    .line 172
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 611
    const-string v0, "uiaccount"

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 615
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->Yc:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 619
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 622
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 624
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 629
    if-nez v4, :cond_1

    move v0, v6

    .line 636
    :goto_1
    const-string v5, "uifolder"

    invoke-static {v5, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 639
    sget-object v8, Lcom/android/email/d;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Changes to account "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", folder: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unreadCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unseenCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mail.action.update_notification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    sget-object v3, Lcom/android/email/provider/EmailProvider;->Si:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v3, "notification_extra_account"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    const-string v3, "notification_extra_folder"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 649
    const-string v3, "notification_updated_unread_count"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string v0, "notification_updated_unseen_count"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 632
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    .line 657
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 658
    return-void
.end method

.method static synthetic a(Lcom/android/email/d;J)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/email/d;->e(J)V

    return-void
.end method

.method static synthetic b(Lcom/android/email/d;)Landroid/database/ContentObserver;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/d;->LH:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/android/email/d;->a(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic b(Lcom/android/email/d;J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/high16 v2, 0x1000000000000000L

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    const-string v2, "Unregistering notifications for all accounts"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/email/d;->LG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/email/d;->LG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unregistering notifications for account "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/email/d;->LG:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/email/d;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/d;->eg:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 65
    sget-object v1, Lcom/android/email/d;->LL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/email/d;->LI:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/d;->LK:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-static {}, Lcom/android/email/d;->gH()V

    sget-object v0, Lcom/android/email/d;->LD:Landroid/os/Handler;

    sget-object v2, Lcom/android/email/d;->LD:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/d;->LI:Z

    invoke-static {p0, p1, p2}, Lcom/android/email/d;->a(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/android/email/d;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/d;->LG:Ljava/util/Map;

    return-object v0
.end method

.method private e(J)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    const-wide/high16 v4, 0x1000000000000000L

    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    .line 266
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->XT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 270
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 272
    invoke-direct {p0, v2, v3}, Lcom/android/email/d;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_1
    :goto_1
    return-void

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/android/email/d;->LG:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 279
    if-nez v1, :cond_1

    .line 280
    sget-object v1, Lcom/android/email/d;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registering for notifications for account "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 281
    new-instance v1, Lcom/android/email/i;

    sget-object v2, Lcom/android/email/d;->LD:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/email/i;-><init>(Landroid/os/Handler;Landroid/content/Context;J)V

    .line 283
    sget-object v2, Lcom/android/emailcommon/provider/g;->Xx:Landroid/net/Uri;

    invoke-virtual {v0, v2, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    iget-object v0, p0, Lcom/android/email/d;->LG:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v1, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_1
.end method

.method private static declared-synchronized gH()V
    .locals 4

    .prologue
    .line 227
    const-class v1, Lcom/android/email/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/d;->LC:Lcom/android/email/j;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/email/j;

    invoke-direct {v0}, Lcom/android/email/j;-><init>()V

    sput-object v0, Lcom/android/email/d;->LC:Lcom/android/email/j;

    .line 229
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/email/d;->LC:Lcom/android/email/j;

    invoke-virtual {v2}, Lcom/android/email/j;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/email/f;

    invoke-direct {v3}, Lcom/android/email/f;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/email/d;->LD:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    monitor-exit v1

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic gK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic gL()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/email/d;->LD:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic gM()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/email/d;->LL:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic gN()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/d;->LI:Z

    return v0
.end method

.method static synthetic gO()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/email/d;->LJ:Z

    return v0
.end method

.method static synthetic gP()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/d;->LJ:Z

    return v0
.end method

.method static synthetic gQ()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/email/d;->LK:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic gR()Lcom/android/email/d;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/email/d;->LE:Lcom/android/email/d;

    return-object v0
.end method

.method public static declared-synchronized n(Landroid/content/Context;)Lcom/android/email/d;
    .locals 3

    .prologue
    .line 99
    const-class v1, Lcom/android/email/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/d;->LE:Lcom/android/email/d;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/email/d;

    sget-object v2, Lcom/android/mail/utils/d;->aOX:Lcom/android/mail/utils/d;

    invoke-direct {v0, p0, v2}, Lcom/android/email/d;-><init>(Landroid/content/Context;Lcom/android/mail/utils/d;)V

    sput-object v0, Lcom/android/email/d;->LE:Lcom/android/email/d;

    .line 102
    :cond_0
    sget-object v0, Lcom/android/email/d;->LE:Lcom/android/email/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static o(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 741
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;ZLandroid/net/Uri;Lcom/android/mail/utils/p;Lcom/android/mail/g/a;)V

    .line 743
    return-void
.end method

.method static synthetic p(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/email/d;->o(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic q(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 65
    sget-object v1, Lcom/android/email/d;->LL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/email/d;->LI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/d;->LJ:Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-static {}, Lcom/android/email/d;->gH()V

    sget-object v0, Lcom/android/email/d;->LD:Landroid/os/Handler;

    sget-object v2, Lcom/android/email/d;->LD:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/d;->LI:Z

    invoke-static {p0}, Lcom/android/email/d;->o(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 418
    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v8}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 421
    if-eqz v1, :cond_0

    .line 424
    if-eqz p3, :cond_2

    .line 425
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1, p2}, Lcom/android/email/provider/EmailProvider;->w(J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 431
    :goto_1
    iget-wide v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    iget-object v1, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v4, 0x7f090213

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v5, 0x7f090214

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const/high16 v0, 0x20000000

    long-to-int v1, p1

    add-int v8, v0, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 428
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1, p2}, Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;->m(J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    .line 663
    const-string v0, "notification_extra_account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 665
    const-string v0, "notification_extra_folder"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    .line 667
    const-string v0, "notification_updated_unread_count"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 669
    const-string v0, "notification_updated_unseen_count"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 672
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 674
    sget-object v2, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 677
    if-nez v3, :cond_0

    .line 678
    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null account cursor for account "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 723
    :goto_0
    return-void

    .line 682
    :cond_0
    const/4 v2, 0x0

    .line 684
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 685
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v3}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v9, v2

    .line 688
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 691
    if-nez v9, :cond_1

    .line 692
    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tried to create a notification for a missing account "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 697
    :cond_1
    sget-object v4, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 700
    if-nez v2, :cond_2

    .line 701
    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null folder cursor for account "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mailbox "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 706
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    new-instance v4, Lcom/android/mail/providers/Folder;

    invoke-direct {v4, v2}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 716
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v5, 0x1

    move-object v0, p1

    move v1, v10

    move v2, v11

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;IILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V

    goto :goto_0

    .line 711
    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Empty folder cursor for account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mailbox "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 716
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    move-object v9, v2

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 6

    .prologue
    .line 575
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {p1, v0, v1}, Lcom/android/email/service/n;->j(Landroid/content/Context;J)Lcom/android/email/service/o;

    move-result-object v0

    .line 577
    if-nez v0, :cond_0

    .line 578
    sget-object v0, Lcom/android/email/d;->mW:Ljava/lang/String;

    const-string v1, "Can\'t cancel notification for missing account %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 591
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, v0, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/emailcommon/provider/Account;->at(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 584
    invoke-static {p1, v0}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 586
    invoke-static {p1}, Lcom/android/email/d;->n(Landroid/content/Context;)Lcom/android/email/d;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/d;->eg:Landroid/app/NotificationManager;

    .line 588
    const-wide/32 v2, 0x20000000

    iget-wide v4, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 589
    const-wide/32 v2, 0x30000000

    iget-wide v4, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 590
    const-wide/32 v2, 0x40000000

    iget-wide v4, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public final a(Lcom/android/emailcommon/provider/Account;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 503
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v0, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->b(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 504
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 505
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090281

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 507
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090283

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 508
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    const-wide/32 v0, 0x30000000

    iget-wide v8, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    add-long/2addr v0, v8

    long-to-int v8, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 510
    return-void
.end method

.method public final a(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 9

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v0

    .line 393
    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 395
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090211

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090212

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final b(Lcom/android/emailcommon/provider/Account;)V
    .locals 10

    .prologue
    .line 518
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->w(J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 520
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 521
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090282

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 523
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090284

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 525
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    const-wide/32 v0, 0x40000000

    iget-wide v8, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    add-long/2addr v0, v8

    long-to-int v8, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 527
    return-void
.end method

.method public final c(Lcom/android/emailcommon/provider/Account;)V
    .locals 10

    .prologue
    .line 535
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->w(J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 537
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 538
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090280

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 540
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090285

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 542
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    const-wide/32 v0, 0x30000000

    iget-wide v8, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    add-long/2addr v0, v8

    long-to-int v8, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 544
    return-void
.end method

.method public final f(J)V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/email/d;->eg:Landroid/app/NotificationManager;

    const/high16 v1, 0x20000000

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 445
    return-void
.end method

.method public final g(J)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 456
    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v3}, Lcom/android/email/activity/setup/AccountSecurity;->c(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 460
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 461
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f090289

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 463
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 464
    const/4 v8, 0x4

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final gG()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/android/email/d;->gH()V

    .line 189
    sget-object v0, Lcom/android/email/d;->LD:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/e;

    invoke-direct {v1, p0}, Lcom/android/email/e;-><init>(Lcom/android/email/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public final gI()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/email/d;->eg:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 494
    iget-object v0, p0, Lcom/android/email/d;->eg:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 495
    return-void
.end method

.method public final gJ()V
    .locals 1

    .prologue
    .line 551
    new-instance v0, Lcom/android/email/g;

    invoke-direct {v0, p0}, Lcom/android/email/g;-><init>(Lcom/android/email/d;)V

    invoke-static {v0}, Lcom/android/emailcommon/b/g;->a(Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;

    .line 567
    return-void
.end method

.method public final h(J)V
    .locals 9

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 477
    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lcom/android/email/activity/setup/AccountSecurity;->c(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 481
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 482
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f09028b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 483
    iget-object v0, p0, Lcom/android/email/d;->mContext:Landroid/content/Context;

    const v1, 0x7f09028c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 484
    const/4 v8, 0x5

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/email/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method
