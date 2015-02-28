.class public Lcom/google/android/gm/EmailMigrationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final aXA:[Ljava/lang/String;

.field public static final aXB:[Ljava/lang/String;

.field public static final aXC:[Ljava/lang/String;

.field public static final aXD:[Ljava/lang/String;

.field private static final aXq:Ljava/lang/String;


# instance fields
.field private aXr:Ljava/lang/String;

.field private aXs:Ljava/lang/String;

.field private aXt:Ljava/lang/String;

.field private aXu:Ljava/lang/String;

.field private aXv:Landroid/net/Uri;

.field private aXw:Landroid/net/Uri;

.field private aXx:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private aXy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation
.end field

.field private aXz:I

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/EmailMigrationService;->aXq:Ljava/lang/String;

    .line 115
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const-string v1, "syncKey"

    aput-object v1, v0, v6

    const-string v1, "syncLookback"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "senderName"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "protocolVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "policyKey"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pingDuration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/EmailMigrationService;->aXA:[Ljava/lang/String;

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "protocol"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "port"

    aput-object v1, v0, v6

    const-string v1, "flags"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "domain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "certAlias"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/EmailMigrationService;->aXB:[Ljava/lang/String;

    .line 136
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "protocolSearchInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "threadTopic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "syncData"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "flagSeen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/EmailMigrationService;->aXC:[Ljava/lang/String;

    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "messageKey"

    aput-object v1, v0, v4

    const-string v1, "htmlContent"

    aput-object v1, v0, v5

    const-string v1, "textContent"

    aput-object v1, v0, v6

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "quotedTextStartPos"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/EmailMigrationService;->aXD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "EmailMigrationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXx:Ljava/util/HashSet;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXy:Ljava/util/ArrayList;

    .line 167
    return-void
.end method

.method private CG()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 680
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 681
    invoke-direct {p0, v0}, Lcom/google/android/gm/EmailMigrationService;->o(Lcom/android/emailcommon/provider/Account;)Z

    move-result v2

    .line 682
    if-nez v2, :cond_0

    .line 687
    const-string v2, "EmailMigration"

    const-string v3, "Could not register Gmail Account: %d with the AccountManager"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 689
    iget-object v2, p0, Lcom/google/android/gm/EmailMigrationService;->aXx:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    :cond_0
    const-string v2, "EmailMigration"

    const-string v3, "Registered Gmail Account: %d with the AccountManager"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 695
    :cond_1
    return-void
.end method

.method private CH()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 752
    const-string v0, "EmailMigration"

    const-string v1, "Deleting migrated Email Accounts."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 754
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const-string v0, "EmailMigration"

    const-string v1, "Delete after migration is Enabled"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 763
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXx:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 764
    const-string v3, "EmailMigration"

    const-string v4, "Deleting Email account, id: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 770
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 771
    iget-object v3, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 757
    :cond_0
    const-string v0, "EmailMigration"

    const-string v1, "Delete after migration is Disabled for pre L device"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 773
    :cond_1
    return-void
.end method

.method private static CI()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1271
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "email_migration"

    const-string v2, "migration_done"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1273
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v4

    const-string v5, "migration_timer"

    const/4 v6, 0x1

    const-string v7, "email_migration"

    const-string v8, "migration_duration"

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1275
    return-void
.end method

.method private X(J)Lcom/android/emailcommon/provider/e;
    .locals 11

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1037
    const-string v0, "EmailMigration"

    const-string v1, "Getting Body for Message id: %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1044
    iget v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    if-ge v0, v9, :cond_0

    .line 1045
    const-string v0, "EmailMigration"

    const-string v2, "Querying Body using pre-L content projection."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1046
    sget-object v2, Lcom/google/android/gm/EmailMigrationService;->aXD:[Ljava/lang/String;

    .line 1053
    :goto_0
    const-string v0, "EmailMigration"

    const-string v3, "Starting Body Query for Message: %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1056
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "messageKey =?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1059
    const-string v0, "EmailMigration"

    const-string v2, "Done Body Query for Message: %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1061
    if-nez v1, :cond_1

    .line 1063
    const-string v0, "EmailMigration"

    const-string v1, "No Body for Message id: %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1091
    :goto_1
    return-object v5

    .line 1048
    :cond_0
    const-string v0, "EmailMigration"

    const-string v2, "Querying Body using latest Message content projection."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1049
    sget-object v2, Lcom/android/emailcommon/provider/e;->XO:[Ljava/lang/String;

    goto :goto_0

    .line 1068
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/e;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/e;-><init>()V

    .line 1071
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1073
    const-string v0, "EmailMigration"

    const-string v2, "Empty Cursor finding Body for Message id: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1077
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    if-ge v2, v9, :cond_3

    .line 1078
    sget-object v2, Lcom/android/emailcommon/provider/e;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/emailcommon/provider/e;->XU:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/e;->Yq:J

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/e;->Yy:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/e;->Yz:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/e;->YB:J

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/emailcommon/provider/e;->YA:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1090
    const-string v1, "EmailMigration"

    const-string v2, "Done getting Body for Message id: %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v5, v0

    .line 1091
    goto :goto_1

    .line 1080
    :cond_3
    :try_start_2
    invoke-virtual {v0, p0, v1}, Lcom/android/emailcommon/provider/e;->a(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    :try_start_3
    const-string v2, "EmailMigration"

    const-string v3, "Error - Exception thrown retrieving body for Message id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1085
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(JJJ)V
    .locals 13

    .prologue
    .line 877
    const-string v2, "EmailMigration"

    const-string v3, "Migrating messages for Email Account id: %d, Mailbox id: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 886
    iget v2, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 887
    const-string v2, "EmailMigration"

    const-string v4, "Querying Message using pre-KKMR1 content projection."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 888
    sget-object v4, Lcom/google/android/gm/EmailMigrationService;->aXC:[Ljava/lang/String;

    .line 897
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mailboxKey =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 900
    if-nez v8, :cond_1

    .line 902
    const-string v2, "EmailMigration"

    const-string v3, "No messages for Email Mailbox id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 961
    :goto_1
    return-void

    .line 890
    :cond_0
    const-string v2, "EmailMigration"

    const-string v4, "Querying Message using latest Message content projection."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 891
    sget-object v4, Lcom/android/emailcommon/provider/g;->XO:[Ljava/lang/String;

    goto :goto_0

    .line 907
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 908
    new-instance v9, Lcom/android/emailcommon/provider/g;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/g;-><init>()V

    .line 910
    iget v2, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_9

    .line 911
    sget-object v2, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->XU:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/emailcommon/provider/g;->Ln:J

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->Xy:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/emailcommon/provider/g;->YK:J

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v9, Lcom/android/emailcommon/provider/g;->Vs:Z

    const/16 v2, 0x19

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v9, Lcom/android/emailcommon/provider/g;->YM:Z

    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v9, Lcom/android/emailcommon/provider/g;->Vu:I

    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v9, Lcom/android/emailcommon/provider/g;->Vt:Z

    const/4 v2, 0x7

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v9, Lcom/android/emailcommon/provider/g;->YN:Z

    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v9, Lcom/android/emailcommon/provider/g;->dM:I

    const/16 v2, 0x9

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    const/16 v2, 0x13

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/emailcommon/provider/g;->YO:J

    const/16 v2, 0xa

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v9, Lcom/android/emailcommon/provider/g;->YP:I

    const/16 v2, 0xb

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YQ:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/emailcommon/provider/g;->YR:J

    const-wide/16 v2, 0x0

    iput-wide v2, v9, Lcom/android/emailcommon/provider/g;->YS:J

    const/16 v2, 0xd

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/emailcommon/provider/g;->Lq:J

    const/16 v2, 0xe

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    const/16 v2, 0x11

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YW:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YX:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YY:Ljava/lang/String;

    const/16 v2, 0x15

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->YZ:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->Za:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->Zb:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/emailcommon/provider/g;->Zc:Ljava/lang/String;

    .line 917
    :goto_6
    iput-wide p1, v9, Lcom/android/emailcommon/provider/g;->Lq:J

    .line 918
    move-wide/from16 v0, p5

    iput-wide v0, v9, Lcom/android/emailcommon/provider/g;->YR:J

    .line 921
    iget-wide v2, v9, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/EmailMigrationService;->X(J)Lcom/android/emailcommon/provider/e;

    move-result-object v2

    .line 922
    if-eqz v2, :cond_2

    .line 926
    iget-object v3, v2, Lcom/android/emailcommon/provider/e;->Yy:Ljava/lang/String;

    iput-object v3, v9, Lcom/android/emailcommon/provider/g;->Ze:Ljava/lang/String;

    .line 927
    iget-object v3, v2, Lcom/android/emailcommon/provider/e;->Yz:Ljava/lang/String;

    iput-object v3, v9, Lcom/android/emailcommon/provider/g;->Zd:Ljava/lang/String;

    .line 928
    iget-wide v4, v2, Lcom/android/emailcommon/provider/e;->YB:J

    iput-wide v4, v9, Lcom/android/emailcommon/provider/g;->YB:J

    .line 929
    iget v2, v2, Lcom/android/emailcommon/provider/e;->YA:I

    iput v2, v9, Lcom/android/emailcommon/provider/g;->YA:I

    .line 935
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 936
    iget-wide v4, v9, Lcom/android/emailcommon/provider/g;->Ln:J

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gm/EmailMigrationService;->a(Ljava/util/ArrayList;JJ)V

    .line 938
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 939
    iput-object v3, v9, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    .line 944
    :cond_3
    const-wide/16 v4, -0x1

    iput-wide v4, v9, Lcom/android/emailcommon/provider/g;->Ln:J

    .line 945
    invoke-virtual {v9, p0}, Lcom/android/emailcommon/provider/g;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 949
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 950
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 951
    const-string v3, "EmailMigration"

    const-string v5, "Migrating Attachment id: %d for Email Account id: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v10, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yv:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_a

    const-string v3, "EmailMigration"

    const-string v5, "This Attachment was not downloaded, nothing to migrate id: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v10, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 956
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 911
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 913
    :cond_9
    :try_start_1
    invoke-virtual {v9, v8}, Lcom/android/emailcommon/provider/g;->b(Landroid/database/Cursor;)V

    goto/16 :goto_6

    .line 951
    :cond_a
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    const/4 v3, 0x0

    :try_start_2
    iget v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yw:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    const/4 v6, 0x0

    iput v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yw:I

    :cond_b
    iget-object v6, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_c

    const-string v2, "EmailMigration"

    const-string v5, "Error getting an input stream to the Attachment file."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v2

    :try_start_4
    const-string v3, "EmailMigration"

    const-string v5, "Error closing photo file stream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :cond_c
    :try_start_5
    invoke-static {p0, v3, v2}, Lcom/android/emailcommon/b/a;->a(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_d

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    :goto_8
    :try_start_7
    const-string v3, "EmailMigration"

    const-string v5, "Done migrating Attachment id: %d for Email Account id: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v10, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    :catch_1
    move-exception v3

    const-string v5, "EmailMigration"

    const-string v6, "Error closing photo file stream"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v3, v6, v7}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v2

    :try_start_8
    const-string v5, "EmailMigration"

    const-string v6, "Error - the Attachment file does not exist!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6, v7}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_7

    :catch_3
    move-exception v2

    :try_start_a
    const-string v3, "EmailMigration"

    const-string v5, "Error closing photo file stream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_7

    :catchall_1
    move-exception v2

    if-eqz v3, :cond_e

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_9
    :try_start_c
    throw v2

    :catch_4
    move-exception v3

    const-string v4, "EmailMigration"

    const-string v5, "Error closing photo file stream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_9

    .line 956
    :cond_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 959
    const-string v2, "EmailMigration"

    const-string v3, "Done migrating messages for Email Account id: %d, Mailbox id: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1
.end method

.method private a(Ljava/util/ArrayList;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1104
    const-string v0, "EmailMigration"

    const-string v1, "Getting Attachments for Message id: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/attachment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1108
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->XO:[Ljava/lang/String;

    const-string v3, "messageKey =?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1111
    if-nez v1, :cond_0

    .line 1113
    const-string v0, "EmailMigration"

    const-string v1, "No Attachments for Message id: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1131
    :goto_0
    return-void

    .line 1118
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1120
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->b(Landroid/database/Cursor;)V

    .line 1123
    iput-wide p4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    .line 1124
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1127
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1130
    const-string v0, "EmailMigration"

    const-string v1, "Done getting Attachments for Message id: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private a(Lcom/android/emailcommon/provider/HostAuth;)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 556
    if-nez p1, :cond_0

    move v0, v6

    .line 587
    :goto_0
    return v0

    .line 560
    :cond_0
    iget-wide v8, p1, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    .line 561
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    .line 563
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXw:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 564
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/c;->Lm:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 566
    if-nez v1, :cond_1

    .line 569
    const-string v0, "EmailMigration"

    const-string v1, "Error finding Credential id: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v7

    .line 570
    goto :goto_0

    .line 572
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Credential;-><init>()V

    .line 574
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 576
    const-string v0, "EmailMigration"

    const-string v2, "Error - finding Credential id: %d, empty cursor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    .line 581
    :cond_2
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Credential;->b(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 585
    iput-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    :cond_3
    move v0, v6

    .line 587
    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private aU(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1236
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/EmailMigrationService;->aXu:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1238
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1239
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "versionCode: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    const v3, 0x7a15a

    if-ge v2, v3, :cond_0

    .line 1246
    const-string v1, "EmailMigration"

    const-string v2, "Working with unsupported version of the Email provider"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1267
    :goto_0
    return v0

    .line 1240
    :catch_0
    move-exception v1

    .line 1241
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Error finding the version of the Email provider....."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1248
    :cond_0
    const v3, 0x7a15c

    if-ge v2, v3, :cond_1

    .line 1250
    const-string v2, "EmailMigration"

    const-string v3, "Working with KK version of the Email provider"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1251
    goto :goto_0

    .line 1252
    :cond_1
    const v1, 0x7a160

    if-ge v2, v1, :cond_2

    .line 1254
    const-string v1, "EmailMigration"

    const-string v2, "Working with KK MR1 version of the Email provider"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1255
    const/4 v0, 0x2

    goto :goto_0

    .line 1256
    :cond_2
    const v1, 0x60392a

    if-ge v2, v1, :cond_3

    .line 1258
    const-string v1, "EmailMigration"

    const-string v2, "Working with KK MR2 version of the Email provider"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1259
    const/4 v0, 0x3

    goto :goto_0

    .line 1260
    :cond_3
    const v1, 0x6acfc0

    if-ge v2, v1, :cond_4

    .line 1262
    const-string v1, "EmailMigration"

    const-string v2, "Working with Algol version of the Email provider"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1263
    const/4 v0, 0x4

    goto :goto_0

    .line 1266
    :cond_4
    const-string v1, "EmailMigration"

    const-string v2, "Working with L version of the Email provider"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1267
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;J)Lcom/android/emailcommon/provider/HostAuth;
    .locals 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 463
    iget v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    if-ge v0, v8, :cond_0

    .line 464
    const-string v0, "EmailMigration"

    const-string v1, "Querying HostAuth using pre-Algol content projection."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 465
    sget-object v2, Lcom/google/android/gm/EmailMigrationService;->aXB:[Ljava/lang/String;

    .line 472
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 473
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 475
    if-nez v1, :cond_1

    .line 478
    const-string v0, "EmailMigration"

    const-string v1, "Error finding HostAuth id: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 501
    :goto_1
    return-object v3

    .line 467
    :cond_0
    const-string v0, "EmailMigration"

    const-string v1, "Querying HostAuth using latest content projection."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 468
    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->XO:[Ljava/lang/String;

    goto :goto_0

    .line 481
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 483
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    const-string v0, "EmailMigration"

    const-string v2, "Error - finding HostAuth id: %d, empty cursor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 491
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    if-ge v2, v8, :cond_3

    .line 492
    const-string v2, "EmailMigration"

    const-string v3, "Restoring HostAuth using pre-Algol content projection."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 493
    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->XU:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    .line 501
    goto/16 :goto_1

    .line 495
    :cond_3
    :try_start_2
    const-string v2, "EmailMigration"

    const-string v3, "Restoring HostAuth using full content projection."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 496
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->b(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 499
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private b(JJZ)V
    .locals 11

    .prologue
    .line 823
    const-string v0, "EmailMigration"

    const-string v1, "Migrating data from Email Account id: %d, to Gmail Account id: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 829
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->XO:[Ljava/lang/String;

    const-string v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 833
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 835
    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/Mailbox;->b(Landroid/database/Cursor;)V

    .line 839
    iput-wide p3, v0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    .line 846
    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    .line 847
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    .line 851
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    .line 852
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Mailbox;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 853
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    .line 854
    const-string v1, "EmailMigration"

    const-string v2, "Migrated Email Mailbox id: %d, to Gmail Mailbox id: %d for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x2

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 856
    if-eqz p5, :cond_0

    move-object v1, p0

    move-wide v2, p3

    .line 857
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/EmailMigrationService;->a(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 863
    const-string v0, "EmailMigration"

    const-string v1, "Data migrated from Email Account id: %d, to Gmail Account id: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 865
    return-void
.end method

.method private bQ(Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    const-string v1, "EmailMigration"

    const-string v2, "Generating list of Accounts needing migration, migrateExchange: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 600
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 608
    iget v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 609
    const-string v0, "EmailMigration"

    const-string v2, "Querying Account using pre-KKMR2 content projection."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 610
    sget-object v2, Lcom/google/android/gm/EmailMigrationService;->aXA:[Ljava/lang/String;

    .line 616
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 618
    if-nez v2, :cond_2

    .line 619
    const-string v0, "EmailMigration"

    const-string v1, "No Accounts to migrate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v6

    .line 651
    :goto_2
    return-object v0

    .line 597
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 612
    :cond_1
    const-string v0, "EmailMigration"

    const-string v2, "Querying Account using latest content projection."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 613
    sget-object v2, Lcom/android/emailcommon/provider/Account;->XO:[Ljava/lang/String;

    goto :goto_1

    .line 623
    :cond_2
    const-string v0, "EmailMigration"

    const-string v1, "Found %d Accounts that could be migrated."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 627
    :cond_3
    :goto_3
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 628
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    iget v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    const/4 v3, 0x3

    if-ge v1, v3, :cond_7

    const-string v1, "EmailMigration"

    const-string v3, "Restoring Account with pre-KKMR2 content projection."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->XU:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->Xz:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/Account;->XA:I

    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/Account;->XB:I

    const/4 v1, 0x6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/emailcommon/provider/Account;->XC:J

    const/4 v1, 0x7

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/emailcommon/provider/Account;->XD:J

    const/16 v1, 0x8

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    const/16 v1, 0x9

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->XE:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->XG:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->XH:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->XI:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/emailcommon/provider/Account;->XJ:J

    const/16 v1, 0xf

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/emailcommon/provider/Account;->XK:J

    :goto_4
    const-string v1, "EmailMigration"

    const-string v3, "Restored Account with id: %d, HostAuthSend id: %d, HostAuthRecv id: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->XD:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->XC:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->XC:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXv:Landroid/net/Uri;

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gm/EmailMigrationService;->b(Landroid/net/Uri;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "EmailMigration"

    const-string v3, "Error restoring HostAuthRecv with id: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v1, v3, v7}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    :goto_5
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_b

    const-string v1, "EmailMigration"

    const-string v3, "HostAuthRecv Credential id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v8, v7, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {p0, v1}, Lcom/google/android/gm/EmailMigrationService;->a(Lcom/android/emailcommon/provider/HostAuth;)Z

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    if-nez v1, :cond_5

    const-string v1, "EmailMigration"

    const-string v3, "Error loading the OAuth Credentials for HostAuthRecv"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_c

    const-string v1, "EmailMigration"

    const-string v3, "HostAuthSend Credential id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v8, v7, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {p0, v1}, Lcom/google/android/gm/EmailMigrationService;->a(Lcom/android/emailcommon/provider/HostAuth;)Z

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    if-nez v1, :cond_6

    const-string v1, "EmailMigration"

    const-string v3, "Error loading the OAuth Credentials for HostAuthSend"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_6
    :goto_6
    move-object v1, v0

    .line 629
    :goto_7
    if-nez v1, :cond_d

    .line 630
    const-string v0, "EmailMigration"

    const-string v1, "Error restoring an Account, skipping."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 649
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 628
    :cond_7
    :try_start_1
    const-string v1, "EmailMigration"

    const-string v3, "Restoring Account with latest content projection."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/Account;->b(Landroid/database/Cursor;)V

    goto/16 :goto_4

    :cond_8
    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->XD:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXv:Landroid/net/Uri;

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gm/EmailMigrationService;->b(Landroid/net/Uri;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gm/EmailMigrationService;->aXs:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v1, "EmailMigration"

    const-string v3, "Error restoring HostAuthSend with id: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v1, v3, v7}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    :cond_9
    const-string v1, "EmailMigration"

    const-string v3, "HostAuthRecv not defined."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    :cond_a
    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    goto/16 :goto_5

    :cond_b
    const-string v0, "EmailMigration"

    const-string v1, "Error loading the HostAuthRecv for this Account"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_7

    :cond_c
    const-string v1, "EmailMigration"

    const-string v3, "Could not load the HostAuthSend for this Account (Exchange?)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 634
    :cond_d
    const/4 v0, 0x1

    .line 635
    if-nez p1, :cond_e

    .line 636
    iget-object v3, v1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/EmailMigrationService;->aXs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 637
    const-string v0, "EmailMigration"

    const-string v3, "Not migrating an Exchange Account, id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 639
    const/4 v0, 0x0

    .line 642
    :cond_e
    if-eqz v0, :cond_3

    .line 643
    const-string v0, "EmailMigration"

    const-string v3, "Adding Account to migrate list, id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 645
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 649
    :cond_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 651
    goto/16 :goto_2
.end method

.method private k(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 323
    const-string v0, "EmailMigration"

    const-string v1, "Migrating accounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/emailcommon/provider/Account;

    .line 330
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v10

    .line 331
    invoke-direct {p0, v7}, Lcom/google/android/gm/EmailMigrationService;->p(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 336
    iget-object v0, v7, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "email_migration"

    const-string v2, "protocol"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 337
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/c/c;->ft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "email_migration"

    const-string v2, "domain_name"

    invoke-static {v3}, Lcom/google/android/gm/c/c;->fu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 339
    const-string v0, "EmailMigration"

    const-string v1, "Migrating Account, id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/emailcommon/provider/Account;->XH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/emailcommon/provider/Account;->Xz:Ljava/lang/String;

    invoke-virtual {v7, p0}, Lcom/android/emailcommon/provider/Account;->ac(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "EmailMigration"

    const-string v1, "Error saving Account after migration, id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 340
    :goto_1
    if-nez v0, :cond_1

    .line 345
    const-string v0, "EmailMigration"

    const-string v1, "Could not migrate Email account, id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 346
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "email_migration"

    const-string v2, "migration_failure"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 339
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXt:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    const-string v0, "EmailMigration"

    const-string v1, "Migrating account data for Email POP account, id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 361
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/EmailMigrationService;->b(JJZ)V

    .line 364
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "email_migration"

    const-string v2, "feature"

    const-string v3, "pop_delete"

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->lA()I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 374
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 375
    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXy:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :goto_3
    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXx:Ljava/util/HashSet;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v6, v0

    .line 384
    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXs:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    const-string v0, "EmailMigration"

    const-string v1, "Migrating mailbox data for Email Exchange account, id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/EmailMigrationService;->b(JJZ)V

    goto :goto_2

    .line 377
    :cond_4
    const-string v0, "EmailMigration"

    const-string v1, "Email account id: %d, already exists, skipping"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v6

    goto :goto_3

    .line 385
    :cond_5
    return v6
.end method

.method private o(Lcom/android/emailcommon/provider/Account;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 703
    const-string v0, "EmailMigration"

    const-string v1, "Registering migrated Account with the AccountManager."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 706
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/google/android/gm/EmailMigrationService;->aXs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "EmailMigration"

    const-string v1, "This is an Exchange Account, enable calendar and contacts sync."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v2

    .line 713
    :goto_0
    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/n;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLcom/android/emailcommon/provider/HostAuth;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 724
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v2

    .line 733
    :goto_1
    if-nez v0, :cond_0

    .line 735
    const-string v0, "EmailMigration"

    const-string v1, "Failed to add Account to the AccountManager, id: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 742
    :goto_2
    return v7

    .line 726
    :catch_0
    move-exception v0

    .line 727
    const-string v1, "EmailMigration"

    const-string v3, "Error - addAccount was canceled"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v7

    .line 732
    goto :goto_1

    .line 728
    :catch_1
    move-exception v0

    .line 729
    const-string v1, "EmailMigration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error - addAccount failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v7

    .line 732
    goto :goto_1

    .line 730
    :catch_2
    move-exception v0

    .line 731
    const-string v1, "EmailMigration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error - addAccount failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v7

    goto :goto_1

    .line 740
    :cond_0
    const-string v0, "EmailMigration"

    const-string v1, "Successfully added Account to AccountManager, id: %d"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v7, v2

    .line 742
    goto :goto_2

    :cond_1
    move v3, v7

    goto :goto_0
.end method

.method private p(Lcom/android/emailcommon/provider/Account;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 785
    const-string v0, "EmailMigration"

    const-string v1, "Checking to see if Account already exists id: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 788
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->lw()Ljava/lang/String;

    move-result-object v8

    .line 789
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 791
    if-nez v1, :cond_0

    move v0, v6

    .line 809
    :goto_0
    return v0

    .line 796
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v1}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    const-string v0, "EmailMigration"

    const-string v2, "Found a match, we don\'t need to migrate this Account."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    .line 806
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 808
    const-string v0, "EmailMigration"

    const-string v1, "Could not find a match, we can migrate this Account."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v6

    .line 809
    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gm/EmailMigrationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->mContentResolver:Landroid/content/ContentResolver;

    .line 182
    const-string v0, "eas_protocol"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXs:Ljava/lang/String;

    .line 183
    const-string v0, "pop_protocol"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXt:Ljava/lang/String;

    .line 184
    const-string v0, "old_email_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXu:Ljava/lang/String;

    .line 185
    const-string v0, "migration_src_base_authority"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/hostauth"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXv:Landroid/net/Uri;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/credential"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXw:Landroid/net/Uri;

    .line 188
    invoke-direct {p0, p0}, Lcom/google/android/gm/EmailMigrationService;->aU(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    .line 189
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->g(Landroid/content/Context;)V

    .line 194
    iget v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    if-nez v0, :cond_0

    .line 195
    const-string v0, "EmailMigration"

    const-string v1, "We do not support migrating this version of the Email provider."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 312
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/EmailMigrationService;->aXr:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/EmailMigrationService;->aXq:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "EmailMigration"

    const-string v1, "Nothing to migrate, src & dest URIs are the same."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {p0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/android/mail/i/g;->tT()I

    move-result v0

    .line 207
    if-ne v0, v3, :cond_2

    .line 209
    const-string v0, "EmailMigration"

    const-string v1, "Migration already completed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 212
    :cond_2
    if-ne v0, v1, :cond_4

    move v0, v1

    .line 218
    :goto_1
    iget v4, p0, Lcom/google/android/gm/EmailMigrationService;->aXz:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    move v4, v1

    .line 219
    :goto_2
    if-eqz v4, :cond_6

    .line 221
    iget-object v4, p0, Lcom/google/android/gm/EmailMigrationService;->aXs:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/email/service/n;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 222
    if-nez v4, :cond_3

    .line 223
    const-string v6, "EmailMigration"

    const-string v7, "No Exchange migration because Exchange is disabled."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    :cond_3
    :goto_3
    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    .line 232
    const-string v0, "EmailMigration"

    const-string v1, "Already migrated imap/pop, can\'t migrate exchange"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 212
    goto :goto_1

    :cond_5
    move v4, v2

    .line 218
    goto :goto_2

    .line 226
    :cond_6
    const-string v4, "EmailMigration"

    const-string v6, "No Exchange migration, not the right Email provider version."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v2

    goto :goto_3

    .line 245
    :cond_7
    if-eqz v4, :cond_8

    move v0, v3

    .line 249
    :goto_4
    invoke-direct {p0, v4}, Lcom/google/android/gm/EmailMigrationService;->bQ(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    .line 252
    const-string v1, "EmailMigration"

    const-string v3, "There is nothing to migrate."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    invoke-virtual {v5, v0}, Lcom/android/mail/i/g;->cw(I)V

    goto :goto_0

    :cond_8
    move v0, v1

    .line 245
    goto :goto_4

    .line 261
    :cond_9
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v4

    const-string v6, "migration_timer"

    invoke-virtual {v4, v6}, Lcom/android/mail/a/c;->bb(Ljava/lang/String;)V

    .line 264
    :try_start_0
    new-instance v4, Landroid/support/v4/app/ab;

    invoke-direct {v4, p0}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/gm/EmailMigrationService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0903dc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gm/EmailMigrationService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0903dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    move-result-object v4

    const v6, 0x7f030001

    invoke-virtual {v4, v6}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/app/ab;->a(J)Landroid/support/v4/app/ab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ab;->build()Landroid/app/Notification;

    move-result-object v4

    .line 271
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 273
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gm/EmailMigrationService;->startForeground(ILandroid/app/Notification;)V

    .line 275
    invoke-static {}, Lcom/android/emailcommon/b/m;->mh()V

    .line 279
    invoke-direct {p0, v3}, Lcom/google/android/gm/EmailMigrationService;->k(Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 289
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gm/EmailMigrationService;->CG()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/gm/EmailMigrationService;->CH()V

    .line 296
    invoke-virtual {v5, v0}, Lcom/android/mail/i/g;->cw(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    invoke-static {}, Lcom/android/emailcommon/b/m;->mi()V

    .line 300
    if-eqz v3, :cond_a

    .line 302
    invoke-static {}, Lcom/google/android/gm/EmailMigrationService;->CI()V

    .line 305
    const-string v0, "EmailMigration"

    const-string v3, "Forcing account reconcile after migration"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 306
    invoke-static {p0}, Lcom/android/email/provider/b;->F(Landroid/content/Context;)V

    .line 311
    :cond_a
    invoke-virtual {p0, v1}, Lcom/google/android/gm/EmailMigrationService;->stopForeground(Z)V

    goto/16 :goto_0

    .line 298
    :catchall_0
    move-exception v0

    move v3, v2

    :goto_5
    invoke-static {}, Lcom/android/emailcommon/b/m;->mi()V

    .line 300
    if-eqz v3, :cond_b

    .line 302
    invoke-static {}, Lcom/google/android/gm/EmailMigrationService;->CI()V

    .line 305
    const-string v3, "EmailMigration"

    const-string v4, "Forcing account reconcile after migration"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 306
    invoke-static {p0}, Lcom/android/email/provider/b;->F(Landroid/content/Context;)V

    .line 311
    :cond_b
    invoke-virtual {p0, v1}, Lcom/google/android/gm/EmailMigrationService;->stopForeground(Z)V

    throw v0

    .line 298
    :catchall_1
    move-exception v0

    goto :goto_5
.end method
