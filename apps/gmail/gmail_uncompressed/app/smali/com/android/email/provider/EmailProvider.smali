.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final Ry:[Ljava/lang/String;

.field private static SA:Landroid/net/Uri;

.field private static SB:Landroid/net/Uri;

.field private static SC:Landroid/net/Uri;

.field private static SD:Landroid/net/Uri;

.field private static SE:Landroid/net/Uri;

.field private static SF:Landroid/net/Uri;

.field private static SG:Landroid/net/Uri;

.field private static SH:Landroid/net/Uri;

.field private static final SI:Ljava/lang/String;

.field private static final SJ:Ljava/lang/String;

.field private static final SK:Ljava/lang/String;

.field private static final SO:Ljava/lang/String;

.field private static final SP:[I

.field private static final SQ:Ljava/lang/String;

.field private static final SR:Ljava/lang/String;

.field private static SS:Lcom/android/email/provider/ProjectionMap;

.field private static ST:Lcom/android/email/provider/ProjectionMap;

.field private static final SU:Ljava/lang/String;

.field private static SV:Lcom/android/email/provider/ProjectionMap;

.field private static SW:Lcom/android/email/provider/ProjectionMap;

.field private static SX:Lcom/android/email/provider/ProjectionMap;

.field private static SY:Lcom/android/email/provider/ProjectionMap;

.field private static final SZ:Ljava/util/regex/Pattern;

.field public static Si:Ljava/lang/String;

.field protected static Sj:Ljava/lang/String;

.field private static final Sk:[Ljava/lang/String;

.field private static final Sl:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Sm:Landroid/content/UriMatcher;

.field private static final Sn:Ljava/lang/Object;

.field private static final So:Landroid/content/ContentValues;

.field private static final Sr:[Ljava/lang/String;

.field public static Ss:Landroid/net/Uri;

.field public static St:Landroid/net/Uri;

.field private static Su:Landroid/net/Uri;

.field private static Sz:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final Ta:Landroid/net/Uri;

.field private static final Tb:Landroid/net/Uri;

.field private static final Tc:Ljava/lang/String;

.field private static final Td:[Ljava/lang/String;

.field private static final Tg:[Ljava/lang/String;


# instance fields
.field private final SL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final SM:Lcom/android/email/provider/t;

.field private SN:Lcom/android/email/provider/t;

.field private Sp:I

.field private final Sq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private Sv:Landroid/database/sqlite/SQLiteDatabase;

.field private Sw:Landroid/database/sqlite/SQLiteDatabase;

.field private Sx:Landroid/os/Handler;

.field private final Sy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/provider/v;",
            ">;"
        }
    .end annotation
.end field

.field private Te:Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private Tf:Lcom/android/emailcommon/service/SearchParams;

.field private Th:[I

.field private final Ti:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private Tj:Landroid/appwidget/AppWidgetManager;

.field private Tk:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    .line 195
    const-string v0, "uirefresh"

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Sj:Ljava/lang/String;

    .line 198
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Sk:[Ljava/lang/String;

    .line 293
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 294
    const-string v1, "Account"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    const-string v1, "Mailbox"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    const-string v1, "Message"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    const-string v1, "Attachment"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    const-string v1, "HostAuth"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    const/4 v1, 0x5

    const-string v2, "Message_Updates"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    const/4 v1, 0x6

    const-string v2, "Message_Deletes"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    const/4 v1, 0x7

    const-string v2, "Policy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    const/16 v1, 0x8

    const-string v2, "QuickResponse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    const/16 v1, 0xa

    const-string v2, "Body"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    const/16 v1, 0xb

    const-string v2, "Credential"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    sput-object v0, Lcom/android/email/provider/EmailProvider;->Sl:Landroid/util/SparseArray;

    .line 309
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Sn:Ljava/lang/Object;

    .line 343
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->So:Landroid/content/ContentValues;

    .line 357
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mimeType"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Ry:[Ljava/lang/String;

    .line 359
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "fileName"

    aput-object v1, v0, v4

    const-string v1, "size"

    aput-object v1, v0, v5

    const-string v1, "contentUri"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Sr:[Ljava/lang/String;

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ") values (%s, (select syncServerId from Message where _id=%s),(select accountKey from Message where _id=%s),"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/n;->ZH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SI:Ljava/lang/String;

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insert into %s (messageKey,messageServerId,accountKey,status,srcFolderKey,dstFolderKey,srcFolderServerId,dstFolderServerId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(select mailboxKey from Message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where _id=%s),%d,(select serverId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from Mailbox where _id=(select mailboxKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from Message where _id=%s)),(select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serverId from Mailbox where _id=%d))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SJ:Ljava/lang/String;

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insert into %s (messageKey,messageServerId,accountKey,status,oldFlagRead,newFlagRead,oldFlagFavorite,newFlagFavorite"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(select flagRead from Message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where _id=%s),%d,(select flagFavorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from Message where _id=%s),%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SK:Ljava/lang/String;

    .line 2628
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SO:Ljava/lang/String;

    .line 2645
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SP:[I

    .line 2650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@CASE (accountKey - 1) % "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 0 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 1 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 2 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 3 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 4 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 5 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 6 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 7 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 8 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SQ:Ljava/lang/String;

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@CASE (_id - 1) % "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 0 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 1 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 2 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 3 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 4 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 5 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 6 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 7 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN 8 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SP:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SR:Ljava/lang/String;

    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CASE type WHEN 0 THEN 2 WHEN 3 THEN 4 WHEN 4 THEN 8 WHEN 5 THEN 16 WHEN 6 THEN 32 WHEN 7 THEN 64 WHEN 9 THEN 128 WHEN 10 THEN 2048 WHEN 8 THEN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/email/provider/EmailProvider;->bc(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE 1 END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SU:Ljava/lang/String;

    .line 3065
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SZ:Ljava/util/regex/Pattern;

    .line 3432
    const-string v0, "content://ui.email.android.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Ta:Landroid/net/Uri;

    .line 3434
    const-string v0, "content://ui.email2.android.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Tb:Landroid/net/Uri;

    .line 4147
    const-wide/32 v0, 0x10000000

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    .line 5444
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Td:[Ljava/lang/String;

    .line 6112
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "emailAddress"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/EmailProvider;->Tg:[Ljava/lang/String;

    return-void

    .line 2645
    nop

    :array_0
    .array-data 4
        -0x8e5159
        -0x9de6e7
        -0xe7b9d1
        -0x4071ae
        -0xffe087
        -0x57503e
        -0x949b3c
        -0x8c7ca7
        -0x62af5c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/provider/EmailProvider;->Sp:I

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sy:Ljava/util/Set;

    .line 2535
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->SL:Ljava/lang/ThreadLocal;

    .line 2579
    new-instance v0, Lcom/android/email/provider/m;

    invoke-direct {v0, p0}, Lcom/android/email/provider/m;-><init>(Lcom/android/email/provider/EmailProvider;)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->SM:Lcom/android/email/provider/t;

    .line 2586
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->SM:Lcom/android/email/provider/t;

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->SN:Lcom/android/email/provider/t;

    .line 6152
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Th:[I

    .line 6153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Ti:Ljava/util/ArrayList;

    .line 6268
    return-void
.end method

.method private static D(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 444
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v1, "Fixing parent keys"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 456
    const-string v0, "update Mailbox set parentKey=(select _id from Mailbox as b where Mailbox.parentServerId=b.serverId and Mailbox.parentServerId not null and Mailbox.accountKey=b.accountKey)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 468
    const-string v0, "update Mailbox set parentKey=-1 where parentKey=0 or parentKey is null"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method private G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 477
    sget-object v1, Lcom/android/email/provider/EmailProvider;->Sn:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v1

    .line 511
    :goto_0
    return-object v0

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->ke()V

    .line 487
    new-instance v0, Lcom/android/email/provider/h;

    const-string v2, "EmailProvider.db"

    invoke-direct {v0, p1, v2}, Lcom/android/email/provider/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Lcom/android/email/provider/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    .line 489
    new-instance v0, Lcom/android/email/provider/g;

    const-string v2, "EmailProviderBody.db"

    invoke-direct {v0, p1, v2}, Lcom/android/email/provider/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0}, Lcom/android/email/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    .line 492
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attach \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" as BodyDatabase"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "restoreIfNeeded..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    invoke-static {p1}, Lcom/android/email/r;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->f(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    invoke-static {p1}, Lcom/android/email/r;->u(Landroid/content/Context;)V

    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v2, "Created new EmailProvider backup database"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 500
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Updates"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Deletes"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Mailbox"

    const-string v3, "accountKey"

    const-string v4, "_id"

    const-string v5, "Account"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message"

    const-string v3, "accountKey"

    const-string v4, "_id"

    const-string v5, "Account"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Policy"

    const-string v3, "_id"

    const-string v4, "policyKey"

    const-string v5, "Account"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->D(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 510
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update Mailbox set uiSyncStatus=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 498
    :cond_4
    :try_start_1
    const-string v2, "EmailProviderBackup.db"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->f(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    const-string v0, "EmailProviderBackup.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v2, "Migrated from backup database to account manager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_5
    const-string v2, "SELECT EXISTS (SELECT ? FROM Account )"

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->XT:[Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v2, "restoreIfNeeded: Account exists."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->H(Landroid/content/Context;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private static H(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1710
    invoke-static {p0}, Lcom/android/email/service/n;->P(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 1712
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1713
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/o;

    .line 1714
    iget-object v3, v0, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1716
    iget-object v0, v0, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1720
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 1722
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1723
    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1726
    :cond_2
    const/4 v0, 0x0

    .line 1727
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 1728
    const-string v4, "accountJson"

    invoke-virtual {v3, v0, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1729
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1730
    invoke-static {v4}, Lcom/android/emailcommon/provider/Account;->au(Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 1733
    if-eqz v4, :cond_5

    .line 1734
    invoke-static {p0, v4}, Lcom/android/email/activity/setup/N;->e(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 1735
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 1736
    const-string v5, "force"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1737
    const-string v5, "do_not_retry"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1738
    const-string v5, "expedited"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1739
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1740
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 1742
    goto :goto_2

    .line 1743
    :cond_4
    return v1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public static I(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 6326
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6327
    new-instance v0, Lcom/android/email/provider/r;

    invoke-direct {v0, p0}, Lcom/android/email/provider/r;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/b/g;->a(Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;

    .line 6334
    :cond_0
    return-void
.end method

.method public static J(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6347
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->g(Landroid/content/Context;)V

    .line 6350
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->XT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 6354
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v2, v7

    .line 6355
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/email/service/AttachmentService;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v2, :cond_3

    move v0, v7

    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/email/service/AttachmentService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/email/m;->gG()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6358
    :cond_0
    if-eqz v1, :cond_1

    .line 6359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v2

    .line 6354
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 6355
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 6358
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    .line 6359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 6358
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method private Q(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 4207
    new-array v0, v1, [Landroid/net/Uri;

    .line 4208
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4209
    sget-object v3, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4254
    :cond_0
    :goto_0
    return-object v0

    .line 4214
    :cond_1
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "type"

    aput-object v4, v3, v6

    .line 4217
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kh()Lcom/android/email/provider/ProjectionMap;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4218
    const-string v4, " FROM Mailbox WHERE accountKey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND type IN (5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 3, 9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4233
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v5, "defaultRecentFolders: Query is %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4236
    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 4250
    :cond_2
    if-eqz v2, :cond_0

    .line 4251
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4240
    :cond_3
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    .line 4243
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 4244
    const-string v3, "uifolder"

    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v1

    .line 4245
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v6, "Default recent folder: %d, with uri %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aget-object v5, v0, v1

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4247
    add-int/lit8 v1, v1, 0x1

    .line 4248
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 4250
    if-eqz v2, :cond_0

    .line 4251
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4250
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 4251
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 5217
    const-string v0, "seen"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5218
    const-string v0, "seen"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5220
    if-ne v0, v6, :cond_0

    .line 5221
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 5222
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "flagSeen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v1

    const-string v0, "Message"

    const-string v5, "mailboxKey = ?"

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5224
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 5240
    :goto_0
    return v0

    .line 5231
    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, v0, v6}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    .line 5232
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 5233
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5235
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5236
    const-string v4, "lastTouchedTime"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5237
    const-string v4, "lastTouchedTime"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 5240
    :cond_3
    invoke-virtual {p0, v2, v1, v7, v7}, Lcom/android/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;[Landroid/net/Uri;)I
    .locals 12

    .prologue
    .line 5108
    const/4 v1, 0x0

    .line 5109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5111
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 5112
    array-length v6, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, p3, v0

    .line 5113
    const-string v8, "lastTouchedTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5114
    sget-object v8, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v9, "updateStamp: %s updated"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5115
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    .line 5112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5117
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SH:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 5119
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "updateTimestamp: Notifying on %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5120
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5121
    return v1
.end method

.method private a(Landroid/net/Uri;II)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 5564
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 5565
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5567
    const-string v1, "uiaccount"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5570
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5571
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v1}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 5573
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/email/provider/w;

    invoke-direct {v2, v6, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5574
    const-string v3, "picker_ui_account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5575
    const-string v0, "picker_mailbox_type"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5576
    const-string v0, "picker_header_id"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5577
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5578
    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5579
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    .line 5581
    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 6

    .prologue
    .line 5132
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    .line 5133
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5134
    new-array v2, v1, [Landroid/net/Uri;

    .line 5135
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5136
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5138
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v2, v5

    goto :goto_0

    .line 5140
    :cond_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;Ljava/lang/String;[Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;Z)I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5372
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 5373
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;)Lcom/android/emailcommon/provider/g;

    move-result-object v5

    .line 5374
    if-nez v5, :cond_0

    move v0, v2

    .line 5438
    :goto_0
    return v0

    .line 5375
    :cond_0
    iget-wide v0, v5, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 5376
    if-nez v6, :cond_1

    move v0, v2

    goto :goto_0

    .line 5377
    :cond_1
    if-nez p3, :cond_3

    iget v0, v6, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, v6, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, v6, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    :cond_3
    sget-object v0, Lcom/android/emailcommon/provider/g;->YD:Landroid/net/Uri;

    move-object v1, v0

    .line 5380
    :goto_2
    invoke-static {p1, v1, v3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v7

    .line 5381
    if-nez v7, :cond_7

    move v0, v2

    goto :goto_0

    .line 5377
    :cond_4
    iget-wide v0, v6, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/Account;->m(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/android/email/service/o;->UR:Z

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    move-object v1, v0

    goto :goto_2

    .line 5384
    :cond_7
    const-string v0, "respond"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5385
    iget-wide v0, v6, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v4, v0, v1}, Lcom/android/email/service/n;->i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;

    move-result-object v0

    .line 5388
    :try_start_0
    iget-wide v8, v5, Lcom/android/emailcommon/provider/g;->Ln:J

    const-string v1, "respond"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/emailcommon/service/a;->e(JI)V

    .line 5391
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->c(Landroid/net/Uri;)I

    .line 5392
    const v0, 0x7f0902d1

    invoke-static {v4, v0}, Lcom/android/emailcommon/b/s;->h(Landroid/content/Context;I)V

    .line 5394
    iget-wide v0, v6, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->r(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v3

    .line 5398
    goto :goto_0

    .line 5396
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v1, "Remote exception while sending meeting response"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 5402
    :cond_8
    const-string v0, "operation"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5405
    const-string v4, "discard_drafts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "move_failed_to_drafts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5407
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->c(Landroid/net/Uri;)I

    move v0, v3

    .line 5408
    goto/16 :goto_0

    .line 5411
    :cond_a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5412
    invoke-direct {p0, v5, p2}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/emailcommon/provider/g;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 5413
    invoke-virtual {v4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5414
    const-string v8, "mailboxKey"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 5415
    const-string v0, "mailboxKey"

    iget-wide v8, v5, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 5416
    :cond_c
    const-string v8, "flagRead"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 5417
    const-string v0, "flagRead"

    iget-boolean v8, v5, Lcom/android/emailcommon/provider/g;->Vs:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 5418
    :cond_d
    const-string v8, "flagSeen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 5419
    const-string v0, "flagSeen"

    iget-boolean v8, v5, Lcom/android/emailcommon/provider/g;->YM:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 5420
    :cond_e
    const-string v8, "flagFavorite"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5421
    const-string v0, "flagFavorite"

    iget-boolean v8, v5, Lcom/android/emailcommon/provider/g;->Vt:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 5424
    :cond_f
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 5425
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 5427
    :cond_10
    const-string v0, "suppress_undo"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 5429
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5430
    :cond_11
    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 5435
    const-string v1, "seq"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/email/provider/EmailProvider;->Sp:I

    if-le v1, v2, :cond_12

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/android/email/provider/EmailProvider;->Sp:I

    :cond_12
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5438
    :cond_13
    invoke-virtual {p0, v7, v4, v10, v10}, Lcom/android/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 369
    sget-object v0, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 370
    if-gez v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    sget-boolean v1, Lcom/android/emailcommon/b;->LOGD:Z

    if-eqz v1, :cond_1

    .line 373
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", match is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    :cond_1
    return v0
.end method

.method private static a(Lcom/android/email/service/o;IJ)I
    .locals 4

    .prologue
    const/16 v0, 0x20

    const/4 v3, 0x6

    .line 3327
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 3373
    :cond_0
    :goto_0
    return v0

    .line 3332
    :cond_1
    const/4 v1, 0x0

    .line 3333
    const/4 v2, 0x3

    if-eq p1, v2, :cond_a

    .line 3336
    :goto_1
    if-eqz p0, :cond_2

    iget-boolean v1, p0, Lcom/android/email/service/o;->UP:Z

    if-eqz v1, :cond_2

    .line 3338
    or-int/lit16 v0, v0, 0x200

    .line 3341
    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    if-nez p1, :cond_4

    .line 3344
    :cond_3
    or-int/lit8 v0, v0, 0x8

    .line 3345
    or-int/lit16 v0, v0, 0x4000

    .line 3349
    :cond_4
    if-ne p1, v3, :cond_5

    .line 3350
    const/16 v0, 0x4828

    .line 3355
    :cond_5
    invoke-static {p2, p3}, Lcom/android/email/provider/EmailProvider;->p(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3356
    or-int/lit16 v0, v0, 0x1000

    .line 3361
    :cond_6
    if-eqz p0, :cond_7

    iget-boolean v1, p0, Lcom/android/email/service/o;->Va:Z

    if-nez v1, :cond_8

    .line 3362
    :cond_7
    const v1, -0x14009

    and-int/2addr v0, v1

    .line 3369
    :cond_8
    const/4 v1, 0x4

    if-eq p1, v1, :cond_9

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3370
    :cond_9
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/android/mail/i/g;)I
    .locals 1

    .prologue
    .line 3875
    invoke-virtual {p0}, Lcom/android/mail/i/g;->tI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(JI)J
    .locals 4

    .prologue
    .line 3729
    const/16 v0, 0x20

    shl-long v0, p0, v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/android/emailcommon/provider/g;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 5272
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5273
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5274
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 5275
    const-string v5, "starred"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5276
    const-string v0, "flagFavorite"

    invoke-static {v2, v0, v4}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5277
    :cond_1
    const-string v5, "read"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5278
    const-string v0, "flagRead"

    invoke-static {v2, v0, v4}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5279
    :cond_2
    const-string v5, "seen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5280
    const-string v0, "flagSeen"

    invoke-static {v2, v0, v4}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5281
    :cond_3
    const-string v5, "mailboxKey"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5282
    const-string v0, "mailboxKey"

    invoke-static {v2, v0, v4}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5283
    :cond_4
    const-string v4, "folders_updated"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5285
    const-string v4, "rawFolders"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5287
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/FolderList;->d([B)Lcom/android/mail/providers/FolderList;

    move-result-object v0

    .line 5288
    iget-object v4, v0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-eq v4, v9, :cond_5

    .line 5289
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Incorrect number of folders for this message: Message is %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 5293
    :cond_5
    iget-object v0, v0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 5294
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    .line 5295
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5296
    const-string v4, "mailboxKey"

    invoke-static {v2, v4, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5298
    :cond_6
    const-string v4, "alwaysShowImages"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5299
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 5300
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v5

    .line 5301
    array-length v6, v4

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, v4, v0

    .line 5302
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 5303
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/android/mail/i/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 5301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5305
    :cond_7
    const-string v4, "viewed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "suppress_undo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5308
    const-string v4, "conversationInfo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5314
    :cond_8
    return-object v2
.end method

.method private a(ILandroid/net/Uri;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 17

    .prologue
    .line 4639
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4640
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 4641
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 4643
    const/4 v5, 0x0

    .line 4644
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4645
    const/4 v4, 0x0

    .line 4646
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v3, v4

    move-object v2, v5

    .line 4799
    :goto_0
    if-eqz v3, :cond_0

    .line 4800
    invoke-interface {v2, v9, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 4802
    :cond_0
    :goto_1
    return-object v2

    .line 4648
    :pswitch_1
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 4650
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4651
    sget-object v6, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v4

    move-object v2, v5

    .line 4653
    goto :goto_0

    .line 4656
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/email/provider/EmailProvider;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v7, v10

    invoke-virtual {v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4658
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v6, v2, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 4659
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 4660
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 4661
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v4

    move-object v2, v6

    .line 4666
    goto :goto_0

    .line 4669
    :pswitch_2
    invoke-static/range {p3 .. p3}, Lcom/android/email/provider/EmailProvider;->e([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4670
    invoke-static {v3}, Lcom/android/email/provider/EmailProvider;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4671
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4672
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 4674
    goto/16 :goto_0

    .line 4677
    :pswitch_3
    invoke-static/range {p3 .. p3}, Lcom/android/email/provider/EmailProvider;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4678
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SH:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 4679
    goto/16 :goto_0

    .line 4682
    :pswitch_4
    invoke-static/range {p3 .. p3}, Lcom/android/email/provider/EmailProvider;->e([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4683
    invoke-static {v4}, Lcom/android/email/provider/EmailProvider;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v8, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4684
    invoke-static {v3, v2}, Lcom/android/emailcommon/provider/Mailbox;->q(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v6, v7, v1}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4689
    invoke-static {v3, v2}, Lcom/android/emailcommon/provider/Mailbox;->q(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 4690
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v3, v2

    move-object v2, v5

    .line 4691
    goto/16 :goto_0

    .line 4694
    :pswitch_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4695
    invoke-static {v3, v6, v7}, Lcom/android/email/provider/EmailProvider;->e(Landroid/content/Context;J)Lcom/android/mail/providers/Folder;

    move-result-object v5

    .line 4696
    if-nez v5, :cond_3

    .line 4699
    new-instance v2, Landroid/database/MatrixCursor;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4701
    :cond_3
    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->p(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4702
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "color"

    sget-object v11, Lcom/android/email/provider/EmailProvider;->SQ:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v10, 0xf

    and-long/2addr v10, v6

    long-to-int v10, v10

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kg()Lcom/android/email/provider/ProjectionMap;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v11, v0, v4}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/StringBuilder;)V

    const-string v4, " FROM Message WHERE flagLoaded IN (2,1) AND "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->q(J)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p4, :cond_4

    const-string v4, "flagSeen=0 AND "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "flagRead=0 AND "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v4, 0x0

    :goto_2
    sparse-switch v10, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No virtual mailbox for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-nez v10, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No virtual mailbox for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v4, "accountKey=? AND "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v13, 0x20

    shr-long v14, v6, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    goto :goto_2

    :sswitch_0
    const-string v10, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0)"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v10, " ORDER BY timeStamp DESC"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4707
    :goto_4
    sget-object v8, Lcom/android/email/provider/EmailProvider;->Sz:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 4708
    new-instance v2, Lcom/android/email/provider/i;

    invoke-direct/range {v2 .. v7}, Lcom/android/email/provider/i;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mail/providers/Folder;J)V

    move-object v3, v8

    .line 4709
    goto/16 :goto_0

    .line 4702
    :sswitch_1
    const-string v10, "flagFavorite=1"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :sswitch_2
    const-string v10, "flagRead=0 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type=6)"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4704
    :cond_7
    invoke-static/range {p3 .. p4}, Lcom/android/email/provider/EmailProvider;->a([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_4

    .line 4711
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->a([Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/u;

    move-result-object v3

    .line 4712
    iget-object v4, v3, Lcom/android/email/provider/u;->Tt:Ljava/lang/String;

    .line 4713
    iget-object v3, v3, Lcom/android/email/provider/u;->Tu:Ljava/lang/String;

    .line 4715
    if-eqz v3, :cond_8

    .line 4716
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    invoke-virtual {v8, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4720
    :goto_5
    if-eqz v4, :cond_e

    .line 4721
    new-instance v3, Lcom/android/email/provider/j;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "bodyHtml"

    const-string v7, "bodyText"

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/android/email/provider/j;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 4724
    :goto_6
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SG:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 4725
    goto/16 :goto_0

    .line 4718
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-virtual {v8, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_5

    .line 4727
    :pswitch_7
    const-string v4, "contentType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4729
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/android/email/provider/EmailProvider;->a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v8, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4731
    new-instance v5, Lcom/android/email/provider/s;

    invoke-direct {v5, v3, v4}, Lcom/android/email/provider/s;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 4732
    sget-object v3, Lcom/android/email/provider/EmailProvider;->SE:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v3, v2

    move-object v2, v5

    .line 4733
    goto/16 :goto_0

    .line 4735
    :pswitch_8
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "contentUri"

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "supportsDownloadAgain"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kj()Lcom/android/email/provider/ProjectionMap;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v4, v0, v3}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM Attachment WHERE _id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4736
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SD:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 4737
    goto/16 :goto_0

    .line 4739
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4740
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 4741
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "contentUri"

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "supportsDownloadAgain"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kj()Lcom/android/email/provider/ProjectionMap;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-static {v5, v0, v3}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " FROM Attachment WHERE messageKey"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " =?  AND contentId =? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4745
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SE:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 4746
    goto/16 :goto_0

    .line 4749
    :pswitch_a
    const v4, 0x9015

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 4750
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v4

    .line 4752
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 4753
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "No inbox found for account %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4754
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4756
    :cond_9
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Found inbox id %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v2, v3, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide v2, v4

    .line 4760
    :goto_7
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 4761
    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->p(J)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4762
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/email/provider/EmailProvider;->a(J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4763
    sget-object v2, Lcom/android/email/provider/EmailProvider;->SA:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 4758
    :cond_a
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_7

    .line 4766
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10}, Lcom/android/email/provider/EmailProvider;->b([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-virtual {v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4768
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 4769
    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4770
    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 4771
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4774
    :try_start_0
    new-instance v3, Lcom/android/mail/utils/G;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v4, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/MatrixCursor;ILandroid/database/Cursor;II)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4778
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v5, v2

    .line 4781
    :cond_c
    sget-object v2, Lcom/android/email/provider/EmailProvider;->SA:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v3, v2

    move-object v2, v5

    .line 4784
    goto/16 :goto_0

    .line 4778
    :catchall_0
    move-exception v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v2

    .line 4786
    :pswitch_b
    sget-object v3, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4787
    new-instance v3, Lcom/android/mail/utils/G;

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v4}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 4788
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/MatrixCursor;)V

    .line 4793
    :goto_8
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SC:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 4794
    goto/16 :goto_0

    .line 4791
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->c([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_8

    .line 4796
    :pswitch_c
    invoke-static/range {p3 .. p3}, Lcom/android/email/provider/EmailProvider;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v8, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v4

    goto/16 :goto_0

    :cond_e
    move-object v3, v4

    goto/16 :goto_6

    .line 4646
    nop

    :pswitch_data_0
    .packed-switch 0x9001
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 4702
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private a(J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 3881
    new-instance v0, Lcom/android/mail/utils/G;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 3882
    const/16 v1, 0x20

    shr-long v2, p1, v1

    const-wide/16 v4, 0xf

    and-long/2addr v4, p1

    long-to-int v1, v4

    invoke-direct {p0, v2, v3, v1, p3}, Lcom/android/email/provider/EmailProvider;->a(JI[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3884
    return-object v0
.end method

.method private a(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    .prologue
    .line 4497
    new-instance v4, Lcom/android/mail/utils/G;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;)V

    .line 4498
    if-eqz p1, :cond_1

    .line 4500
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 4502
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 4505
    :cond_1
    return-object v4

    .line 4500
    :cond_2
    :try_start_1
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v2, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v2, "capabilities"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v2, "persistentId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v2, "loadMoreUri"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Account;->m(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v11

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v3, v2, :cond_3

    aget-object v2, p4, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v14, -0x1

    if-ne v2, v14, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_4
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-ne v7, v2, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/provider/EmailProvider;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    invoke-virtual {v12, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4502
    :catchall_0
    move-exception v2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 4500
    :cond_6
    if-ne v8, v2, :cond_7

    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    sparse-switch v13, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to map folder type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    const/4 v2, 0x1

    :goto_3
    move-wide/from16 v0, v16

    invoke-static {v11, v2, v0, v1}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/service/o;IJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_1
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_2
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_3
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_4
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_5
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_6
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const/16 v2, 0x9

    goto :goto_3

    :sswitch_8
    const/16 v2, 0xa

    goto :goto_3

    :sswitch_9
    const/16 v2, 0x8

    goto :goto_3

    :cond_7
    if-ne v9, v2, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v15, 0xb

    invoke-static {v2, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    if-ne v10, v2, :cond_a

    const/16 v2, 0x8

    if-eq v13, v2, :cond_a

    if-eqz v11, :cond_9

    iget-boolean v2, v11, Lcom/android/email/service/o;->UZ:Z

    if-nez v2, :cond_a

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x800 -> :sswitch_8
        0x1001 -> :sswitch_9
    .end sparse-switch
.end method

.method private a(Landroid/database/MatrixCursor;ILandroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 4386
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 4387
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 4392
    if-ne p4, v0, :cond_0

    .line 4396
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4397
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/email/provider/EmailProvider;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4387
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4399
    :cond_0
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 4402
    :cond_1
    return-object p1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const-wide/32 v2, 0x10000000

    .line 4183
    new-instance v0, Lcom/android/mail/utils/G;

    invoke-direct {v0, p2}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;)V

    .line 4185
    sget-object v1, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4186
    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/android/email/provider/EmailProvider;->a(JI[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 4187
    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/email/provider/EmailProvider;->a(JI[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 4189
    invoke-direct {p0, v2, v3, v5, p2}, Lcom/android/email/provider/EmailProvider;->a(JI[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 4196
    :goto_0
    return-object v0

    .line 4191
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4192
    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/email/provider/EmailProvider;->a(JI[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 4193
    invoke-direct {p0, v2, v3, v5, p2}, Lcom/android/email/provider/EmailProvider;->a(JI[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 5318
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 5320
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5321
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 5322
    if-eqz p2, :cond_0

    .line 5323
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "is_uiprovider"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5327
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 16

    .prologue
    .line 4882
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 4884
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v5, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 4885
    if-nez v6, :cond_0

    const/4 v2, 0x0

    .line 5048
    :goto_0
    return-object v2

    .line 4886
    :cond_0
    const-string v2, "customFrom"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4888
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4889
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    .line 4893
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->YK:J

    .line 4894
    const-string v2, "toAddresses"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    .line 4895
    const-string v2, "ccAddresses"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    .line 4896
    const-string v2, "bccAddresses"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->YW:Ljava/lang/String;

    .line 4897
    const-string v2, "subject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    .line 4898
    const-string v2, "bodyText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->Zd:Ljava/lang/String;

    .line 4899
    const-string v2, "bodyHtml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->Ze:Ljava/lang/String;

    .line 4900
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->YR:J

    .line 4901
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->Lq:J

    .line 4902
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->Xy:Ljava/lang/String;

    .line 4903
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/g;->Vu:I

    .line 4904
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/g;->Vs:Z

    .line 4905
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/g;->YM:Z

    .line 4906
    const-string v2, "quotedTextStartPos"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/g;->YA:I

    .line 4907
    const/4 v2, 0x0

    .line 4908
    const-string v3, "draftType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 4909
    packed-switch v7, :pswitch_data_0

    .line 4923
    :goto_2
    const/4 v3, 0x0

    .line 4924
    const-string v4, "quotedTextStartPos"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4925
    const-string v3, "quotedTextStartPos"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 4926
    const-string v4, "appendRefMessageContent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 4927
    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    .line 4930
    :cond_1
    const-string v4, "appendRefMessageContent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4931
    const/high16 v4, 0x20000

    or-int/2addr v2, v4

    .line 4933
    :cond_2
    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/emailcommon/provider/g;->YP:I

    .line 4934
    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/g;->dM:I

    .line 4936
    const-string v2, "refMessageId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4937
    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/g;->YA:I

    if-ltz v3, :cond_3

    .line 4938
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 4940
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->YB:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4947
    :cond_3
    :goto_3
    const-string v2, "attachments"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->bK(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4950
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4951
    const/4 v3, 0x0

    .line 4952
    const-string v2, "opened_fds"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 4954
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v3

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mail/providers/Attachment;

    .line 4955
    iget-object v10, v3, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 4956
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4958
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 4959
    invoke-static {v5, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 4960
    if-eqz v3, :cond_5

    .line 4963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 4964
    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4965
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4966
    new-instance v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v11, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>(Landroid/os/Parcel;)V

    .line 4967
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 4969
    const-wide/16 v12, 0x0

    iput-wide v12, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    .line 4972
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v12, 0x4

    if-ne v10, v12, :cond_4

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget v3, v6, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_4

    .line 4974
    iget v3, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    .line 4975
    const/4 v4, 0x1

    .line 4977
    :cond_4
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v3, v4

    move v4, v3

    .line 4979
    goto :goto_4

    .line 4891
    :cond_6
    invoke-virtual {v6}, Lcom/android/emailcommon/provider/Account;->lw()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    goto/16 :goto_1

    .line 4911
    :pswitch_0
    const/4 v2, 0x2

    .line 4912
    goto/16 :goto_2

    .line 4914
    :pswitch_1
    const/high16 v2, 0x200000

    .line 4917
    :pswitch_2
    or-int/lit8 v2, v2, 0x1

    .line 4918
    goto/16 :goto_2

    .line 4920
    :pswitch_3
    const/high16 v2, 0x100000

    goto/16 :goto_2

    .line 4982
    :cond_7
    invoke-static {v5, v3, v2}, Lcom/android/mail/utils/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Attachment;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 4986
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/g;->Lq:J

    new-instance v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    iget-object v14, v3, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ax(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "content://"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/attachment/cachedFile"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "filePath"

    invoke-virtual {v14, v15, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->aw(Ljava/lang/String;)V

    :cond_8
    iput-wide v12, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    iget v3, v3, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v12, v3

    iput-wide v12, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4989
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4990
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    .line 4991
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/g;->YN:Z

    .line 4992
    if-eqz v4, :cond_a

    .line 4993
    const v2, 0x7f09020f

    invoke-static {v5, v2}, Lcom/android/emailcommon/b/s;->h(Landroid/content/Context;I)V

    .line 4997
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/g;->lF()Z

    move-result v2

    if-nez v2, :cond_c

    .line 4998
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/g;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 5022
    :goto_5
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/email/provider/EmailProvider;->s(J)V

    .line 5024
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 5025
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 5026
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/g;->YB:J

    .line 5027
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_b

    .line 5028
    invoke-static {v5, v8, v9}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v2

    .line 5030
    if-eqz v2, :cond_b

    .line 5031
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5032
    iget v2, v2, Lcom/android/emailcommon/provider/g;->dM:I

    .line 5033
    packed-switch v7, :pswitch_data_1

    .line 5042
    :goto_6
    const-string v4, "flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5043
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5048
    :cond_b
    const-string v2, "uimessage"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v2, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 5002
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5005
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yh:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5009
    sget-object v3, Lcom/android/emailcommon/provider/e;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "messageKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5014
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/g;->a(Ljava/util/ArrayList;)V

    .line 5017
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/provider/EmailProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 5019
    :catch_0
    move-exception v2

    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "applyBatch exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    .line 5035
    :pswitch_4
    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    .line 5036
    goto :goto_6

    .line 5039
    :pswitch_5
    const/high16 v4, 0x40000

    or-int/2addr v2, v4

    goto :goto_6

    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 4909
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 5033
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 402
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/u;
    .locals 14

    .prologue
    .line 3087
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3088
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3089
    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v6

    .line 3090
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3091
    const/4 v1, 0x0

    .line 3092
    if-eqz v6, :cond_a

    .line 3093
    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/e;->q(Landroid/content/Context;J)Lcom/android/emailcommon/provider/e;

    move-result-object v0

    .line 3094
    if-eqz v0, :cond_0

    .line 3095
    iget-object v2, v0, Lcom/android/emailcommon/provider/e;->Yy:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3096
    sget-object v2, Lcom/android/email/provider/EmailProvider;->SZ:Ljava/util/regex/Pattern;

    iget-object v0, v0, Lcom/android/emailcommon/provider/e;->Yy:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3097
    const-string v0, "bodyEmbedsExternalResources"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3101
    :cond_0
    iget-object v0, v6, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    .line 3102
    const/4 v0, 0x0

    .line 3103
    invoke-static {v3}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v9

    .line 3104
    array-length v10, v8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_1

    aget-object v11, v8, v2

    .line 3105
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 3106
    invoke-virtual {v9, v11}, Lcom/android/mail/i/g;->bG(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3107
    const/4 v0, 0x1

    .line 3111
    :cond_1
    const-string v2, "alwaysShowImages"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3113
    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->p(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 3114
    array-length v0, v2

    if-lez v0, :cond_9

    .line 3115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3117
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v8, v2, v0

    .line 3134
    new-instance v9, Lcom/android/mail/providers/Attachment;

    invoke-direct {v9}, Lcom/android/mail/providers/Attachment;-><init>()V

    .line 3136
    iget-object v10, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 3137
    iget-object v10, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 3138
    iget-wide v10, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    long-to-int v10, v10

    iput v10, v9, Lcom/android/mail/providers/Attachment;->size:I

    .line 3139
    const-string v10, "uiattachment"

    iget-wide v12, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v10, v12, v13}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v9, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 3140
    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    iput v8, v9, Lcom/android/mail/providers/Attachment;->flags:I

    .line 3141
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3104
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3143
    :cond_3
    const-string v0, "attachments"

    const-string v2, "@?"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->n(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 3146
    :goto_2
    iget v1, v6, Lcom/android/emailcommon/provider/g;->YP:I

    if-eqz v1, :cond_4

    .line 3147
    const-string v2, "appendRefMessageContent"

    iget v1, v6, Lcom/android/emailcommon/provider/g;->YP:I

    const/high16 v3, 0x1000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3149
    const-string v1, "quotedTextStartPos"

    iget v2, v6, Lcom/android/emailcommon/provider/g;->YP:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3152
    :cond_4
    iget v1, v6, Lcom/android/emailcommon/provider/g;->dM:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 3153
    const-string v1, "eventIntentUri"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://ui.email2.android.com/event/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v6, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    :cond_5
    const-string v1, "uiattachments"

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "MessageLoaded"

    iget v1, v6, Lcom/android/emailcommon/provider/g;->Vu:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    const-string v1, "true"

    :goto_4
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3165
    const-string v2, "attachmentListUri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    :goto_5
    sget-object v1, Lcom/android/email/provider/EmailProvider;->ST:Lcom/android/email/provider/ProjectionMap;

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/email/provider/ProjectionMap;->kq()Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "_id"

    const-string v3, "Message._id"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "serverMessageId"

    const-string v3, "syncServerId"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "messageUri"

    const-string v3, "uimessage"

    const-string v4, "Message"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "conversationId"

    const-string v3, "uimessage"

    const-string v4, "Message"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "subject"

    const-string v3, "subject"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "snippet"

    const-string v3, "snippet"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "fromAddress"

    const-string v3, "fromList"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "toAddresses"

    const-string v3, "toList"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "ccAddresses"

    const-string v3, "ccList"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "bccAddresses"

    const-string v3, "bccList"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "replyToAddress"

    const-string v3, "replyToList"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "dateReceivedMs"

    const-string v3, "timeStamp"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "bodyHtml"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "bodyText"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "refMessageId"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "draftType"

    sget-object v3, Lcom/android/email/provider/EmailProvider;->SO:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "appendRefMessageContent"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "hasAttachments"

    const-string v3, "flagAttachment"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "attachmentListUri"

    const-string v3, "uiattachments"

    const-string v4, "Message"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "attachmentByCidUri"

    const-string v3, "uiattachmentbycid"

    const-string v4, "Message"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "messageFlags"

    const-string v3, "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "draftType"

    const-string v3, "CASE WHEN (flags&1048576) !=0 THEN 1 WHEN (flags&2097152) !=0 THEN 3 WHEN (flags&1) !=0 THEN 2 WHEN (flags&2) !=0 THEN 4 ELSE 0 END"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "messageAccountUri"

    const-string v3, "uiaccount"

    const-string v4, "accountKey"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "starred"

    const-string v3, "flagFavorite"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "read"

    const-string v3, "flagRead"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "seen"

    const-string v3, "flagSeen"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "spamWarningString"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "spamWarningLevel"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "spamWarningLinkType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "viaDomain"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "clipped"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    const-string v2, "permalink"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/provider/C;->kr()Lcom/android/email/provider/ProjectionMap;

    move-result-object v1

    sput-object v1, Lcom/android/email/provider/EmailProvider;->ST:Lcom/android/email/provider/ProjectionMap;

    :cond_6
    sget-object v1, Lcom/android/email/provider/EmailProvider;->ST:Lcom/android/email/provider/ProjectionMap;

    invoke-static {v1, p1, v7}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3168
    const-string v2, " FROM Message LEFT JOIN Body ON messageKey=Message._id WHERE Message._id=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3173
    new-instance v2, Lcom/android/email/provider/u;

    invoke-direct {v2, v1, v0}, Lcom/android/email/provider/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3147
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 3161
    :cond_8
    const-string v1, "false"

    goto/16 :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_5
.end method

.method protected static a(Landroid/content/Context;JLjava/lang/String;)Ljava/io/File;
    .locals 9

    .prologue
    const-wide/16 v2, 0x64

    .line 2408
    const-string v0, "html"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "txt"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ext must be one of \'html\' or \'txt\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2411
    :cond_0
    div-long v0, p1, v2

    rem-long/2addr v0, v2

    .line 2412
    rem-long v2, p1, v2

    .line 2413
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "body/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2416
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Could not create directory for body file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2418
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3266
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kg()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3267
    const-string v1, " FROM Message WHERE _id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 4042
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4043
    const-string v1, "supportsDownloadAgain"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4044
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kj()Lcom/android/email/provider/ProjectionMap;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4045
    const-string v0, " FROM Attachment WHERE messageKey"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4057
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 4058
    const-string v0, "AND ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 4060
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4061
    const-string v4, "mimeType LIKE \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    add-int/lit8 v0, v3, -0x1

    if-eq v1, v0, :cond_0

    .line 4067
    const-string v0, " OR "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4070
    :cond_1
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4072
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3193
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kg()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3194
    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/StringBuilder;)V

    .line 3195
    const-string v1, " FROM Message WHERE flagLoaded IN (2,1) AND mailboxKey=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3198
    if-eqz p1, :cond_0

    .line 3199
    const-string v1, "AND flagSeen = 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3200
    const-string v1, "AND flagRead = 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    :cond_0
    const-string v1, "ORDER BY timeStamp DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    const-string v1, "LIMIT 1500"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 2986
    sget-object v0, Lcom/android/email/provider/EmailProvider;->So:Landroid/content/ContentValues;

    invoke-static {p0, p1, v0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2991
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "SELECT "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2993
    array-length v6, p1

    move v3, v2

    move v0, v4

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, p1, v3

    .line 2994
    if-eqz v0, :cond_1

    move v1, v2

    .line 3001
    :goto_1
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3002
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3003
    if-nez v0, :cond_2

    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "NULL AS "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3022
    :cond_0
    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_0

    .line 2997
    :cond_1
    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_1

    .line 3005
    :cond_2
    const-string v8, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3006
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3008
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3012
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/email/provider/ProjectionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3014
    if-nez v0, :cond_0

    .line 3015
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "NULL AS "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3024
    :cond_5
    return-object v5
.end method

.method private a(JLandroid/content/ContentValues;)V
    .locals 9

    .prologue
    .line 5780
    const-string v0, "syncInterval"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 5781
    if-nez v1, :cond_1

    .line 5807
    :cond_0
    :goto_0
    return-void

    .line 5785
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/EmailProvider;->u(J)Landroid/accounts/Account;

    move-result-object v2

    .line 5786
    if-eqz v2, :cond_0

    .line 5791
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "Setting sync interval for account %s to %d minutes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5795
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5797
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/PeriodicSync;

    .line 5798
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 5803
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 5804
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_0
.end method

.method private static a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 6084
    const-string v0, "toList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6085
    const-string v0, "toList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6086
    const-string v1, "toList"

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6089
    :cond_0
    const-string v0, "fromList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6090
    const-string v0, "fromList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6091
    const-string v1, "fromList"

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6094
    :cond_1
    const-string v0, "ccList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6095
    const-string v0, "ccList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6096
    const-string v1, "ccList"

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6099
    :cond_2
    const-string v0, "bccList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6100
    const-string v0, "bccList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6101
    const-string v1, "bccList"

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6104
    :cond_3
    const-string v0, "replyToList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6105
    const-string v0, "replyToList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6106
    const-string v1, "replyToList"

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6109
    :cond_4
    return-void
.end method

.method private static a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 5090
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5091
    check-cast p2, Ljava/lang/Integer;

    .line 5092
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5100
    :cond_0
    :goto_0
    return-void

    .line 5093
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 5094
    check-cast p2, Ljava/lang/Boolean;

    .line 5095
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 5096
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 5097
    check-cast p2, Ljava/lang/Long;

    .line 5098
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JJ)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 5938
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v1, "runSearchQuery. account: %d mailbox id: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5942
    new-instance v1, Lcom/android/email/provider/p;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/email/provider/p;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;JJ)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/android/email/provider/p;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5966
    return-void
.end method

.method private static a(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 5

    .prologue
    .line 2352
    const-string v0, "htmlContent"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    const-string v0, "htmlContent"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2355
    :try_start_0
    const-string v1, "html"

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    :cond_0
    const-string v0, "textContent"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2362
    const-string v0, "textContent"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2364
    :try_start_1
    const-string v1, "txt"

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2370
    :cond_1
    return-void

    .line 2356
    :catch_0
    move-exception v0

    .line 2357
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException while writing html body for message id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2365
    :catch_1
    move-exception v0

    .line 2366
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException while writing text body for message id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2383
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2384
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2385
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2386
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "did not delete text body for %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2396
    :cond_0
    :goto_0
    return-void

    .line 2389
    :cond_1
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 2391
    :try_start_0
    invoke-virtual {v1, p4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v0
.end method

.method private a(Landroid/database/MatrixCursor;)V
    .locals 8

    .prologue
    .line 3753
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/r;->ha()J

    move-result-wide v0

    .line 3755
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Account;->l(Landroid/content/Context;J)J

    move-result-wide v2

    .line 3756
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 3872
    :goto_0
    return-void

    .line 3759
    :cond_0
    new-instance v1, Lcom/google/common/collect/y;

    invoke-direct {v1}, Lcom/google/common/collect/y;-><init>()V

    .line 3761
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 3762
    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 3763
    aget-object v5, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 3762
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3765
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 3767
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v5

    .line 3768
    array-length v0, v4

    new-array v4, v0, [Ljava/lang/Object;

    .line 3769
    const-string v0, "_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3770
    const-string v0, "_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3772
    :cond_2
    const-string v0, "capabilities"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3773
    const-string v0, "capabilities"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v6, 0x1084000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3778
    :cond_3
    const-string v0, "folderListUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3779
    const-string v0, "folderListUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "uifolders"

    sget-object v7, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3782
    :cond_4
    const-string v0, "name"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3783
    const-string v0, "name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09020b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3786
    :cond_5
    const-string v0, "accountManagerName"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3787
    const-string v0, "accountManagerName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09020b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3790
    :cond_6
    const-string v0, "accountId"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3791
    const-string v0, "accountId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "Account Id"

    aput-object v6, v4, v0

    .line 3793
    :cond_7
    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3794
    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "unknown"

    aput-object v6, v4, v0

    .line 3796
    :cond_8
    const-string v0, "undoUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3797
    const-string v0, "undoUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'content://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/uiundo\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3800
    :cond_9
    const-string v0, "accountUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3801
    const-string v0, "accountUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "uiaccount"

    sget-object v7, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3804
    :cond_a
    const-string v0, "mimeType"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3805
    const-string v0, "mimeType"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/android/email/provider/EmailProvider;->Si:Ljava/lang/String;

    aput-object v6, v4, v0

    .line 3808
    :cond_b
    const-string v0, "securityHold"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3809
    const-string v0, "securityHold"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3811
    :cond_c
    const-string v0, "accountSecurityUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3812
    const-string v0, "accountSecurityUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, ""

    aput-object v6, v4, v0

    .line 3814
    :cond_d
    const-string v0, "accountSettingsIntentUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3815
    const-string v0, "accountSettingsIntentUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "settings"

    sget-object v7, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3818
    :cond_e
    const-string v0, "composeUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3819
    const-string v0, "composeUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "compose"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/email/provider/EmailProvider;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3822
    :cond_f
    const-string v0, "updateSettingsUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3823
    const-string v0, "updateSettingsUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "uiacctsettings"

    const-wide/16 v6, -0x1

    invoke-static {v2, v6, v7}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3827
    :cond_10
    const-string v0, "auto_advance"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3828
    const-string v0, "auto_advance"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5}, Lcom/android/mail/i/g;->tP()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3831
    :cond_11
    const-string v0, "snap_headers"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3832
    const-string v0, "snap_headers"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3836
    :cond_12
    const-string v0, "reply_behavior"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3837
    const-string v0, "reply_behavior"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5}, Lcom/android/mail/i/g;->tz()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 3842
    :cond_13
    const-string v0, "conversation_list_icon"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3843
    const-string v0, "conversation_list_icon"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/mail/i/g;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3846
    :cond_14
    const-string v0, "confirm_delete"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3847
    const-string v0, "confirm_delete"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5}, Lcom/android/mail/i/g;->tM()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 3850
    :cond_15
    const-string v0, "confirm_archive"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3851
    const-string v0, "confirm_archive"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3854
    :cond_16
    const-string v0, "confirm_send"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3855
    const-string v0, "confirm_send"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5}, Lcom/android/mail/i/g;->tO()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 3858
    :cond_17
    const-string v0, "default_inbox"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3859
    const-string v0, "default_inbox"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "uifolder"

    const-wide/high16 v6, 0x1000000000000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3862
    :cond_18
    const-string v0, "move_to_inbox"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3863
    const-string v0, "move_to_inbox"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "uifolder"

    const-wide/high16 v6, 0x1000000000000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3866
    :cond_19
    const-string v0, "show_images"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3867
    const-string v0, "show_images"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3871
    :cond_1a
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3837
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 3847
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 3855
    :cond_1d
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not in (select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 429
    if-lez v0, :cond_0

    .line 430
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " orphaned row(s) in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;J)V
    .locals 2

    .prologue
    .line 5737
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5738
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2501
    if-nez p1, :cond_1

    .line 2522
    :cond_0
    :goto_0
    return-void

    .line 2504
    :cond_1
    if-eqz p2, :cond_2

    .line 2505
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2510
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2512
    :goto_1
    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2513
    invoke-direct {p0, p1, p3}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2519
    :goto_2
    sget-object v0, Lcom/android/emailcommon/provider/g;->Xx:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.email.MESSAGE_LIST_DATASET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_1

    .line 2515
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/email/provider/EmailProvider;)V
    .locals 2

    .prologue
    .line 151
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->t(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/email/provider/EmailProvider;JJ)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/provider/EmailProvider;->b(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/android/email/provider/EmailProvider;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 5842
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->u(J)Landroid/accounts/Account;

    move-result-object v0

    .line 5843
    if-eqz v0, :cond_1

    .line 5844
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->G(J)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "force"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "do_not_retry"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "expedited"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    const-string v2, "__deltaMessageCount__"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v2, "callback_uri"

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "callback_method"

    const-string v3, "sync_status"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "requestSync EmailProvider startSync %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5846
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->SL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2544
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1854
    const-string v2, "SELECT h.protocol, a.emailAddress, a.syncKey FROM Account AS a INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE a._id=?"

    new-array v3, v0, [Ljava/lang/String;

    aput-object p2, v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1855
    if-eqz v2, :cond_1

    .line 1857
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1858
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1860
    const v4, 0x7f0902e8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/provider/EmailContent;->av(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1862
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1863
    invoke-static {p0, v4, v3}, Lcom/android/email/provider/EmailProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v3

    .line 1865
    if-eqz v3, :cond_0

    .line 1866
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "force"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "do_not_retry"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "expedited"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "__push_only__"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "callback_uri"

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "callback_method"

    const-string v5, "sync_status"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v4, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v5, "requestSync EmailProvider startSync %s, %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1875
    :goto_0
    return v0

    .line 1867
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    .line 1875
    goto :goto_0

    .line 1872
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(JI[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 11

    .prologue
    .line 3888
    const/16 v0, 0x20

    shl-long v0, p1, v0

    int-to-long v2, p3

    add-long v4, v0, v2

    .line 3889
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 3890
    array-length v0, p4

    new-array v6, v0, [Ljava/lang/Object;

    .line 3893
    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_e

    .line 3894
    aget-object v1, p4, v0

    .line 3895
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3896
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    .line 3893
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3897
    :cond_1
    const-string v2, "folderUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3898
    const-string v1, "uifolder"

    invoke-static {v1, v3}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    goto :goto_1

    .line 3899
    :cond_2
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3901
    invoke-static {p3}, Lcom/android/email/provider/EmailProvider;->bc(I)I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/email/provider/EmailProvider;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    goto :goto_1

    .line 3902
    :cond_3
    const-string v2, "hasChildren"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3903
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto :goto_1

    .line 3904
    :cond_4
    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3905
    const/16 v1, 0x1020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto :goto_1

    .line 3907
    :cond_5
    const-string v2, "conversationListUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3908
    const-string v1, "uimessages"

    invoke-static {v1, v3}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    goto :goto_1

    .line 3909
    :cond_6
    const-string v2, "unreadCount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3910
    if-nez p3, :cond_7

    const-wide/32 v8, 0x10000000

    cmp-long v1, p1, v8

    if-nez v1, :cond_7

    .line 3911
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0) AND flagRead=0"

    const/4 v8, 0x0

    invoke-static {v1, v2, v7, v8}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3916
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto :goto_1

    .line 3917
    :cond_7
    const/16 v1, 0xa

    if-ne p3, v1, :cond_9

    .line 3920
    const-wide/32 v8, 0x10000000

    cmp-long v1, p1, v8

    if-nez v1, :cond_8

    .line 3921
    const-string v2, ""

    .line 3922
    const/4 v1, 0x0

    .line 3927
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "flagRead=0 AND mailboxKey NOT IN (SELECT "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "_id FROM Mailbox WHERE "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "type=6"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v8, v2, v1}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3932
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto/16 :goto_1

    .line 3924
    :cond_8
    const-string v2, "accountKey= ? AND "

    .line 3925
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    goto :goto_2

    .line 3933
    :cond_9
    const/16 v1, 0x9

    if-ne p3, v1, :cond_0

    .line 3936
    const-wide/32 v8, 0x10000000

    cmp-long v1, p1, v8

    if-nez v1, :cond_a

    .line 3937
    const-string v2, ""

    .line 3938
    const/4 v1, 0x0

    .line 3943
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "flagFavorite=1"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v8, v2, v1}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3945
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto/16 :goto_1

    .line 3940
    :cond_a
    const-string v2, "accountKey= ? AND "

    .line 3941
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    goto :goto_3

    .line 3947
    :cond_b
    const-string v2, "iconResId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3948
    if-nez p3, :cond_c

    .line 3949
    const v1, 0x7f020097

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto/16 :goto_1

    .line 3950
    :cond_c
    const/16 v1, 0xa

    if-ne p3, v1, :cond_d

    .line 3951
    const v1, 0x7f0200a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto/16 :goto_1

    .line 3952
    :cond_d
    const/16 v1, 0x9

    if-ne p3, v1, :cond_0

    .line 3953
    const v1, 0x7f0200a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    goto/16 :goto_1

    .line 3957
    :cond_e
    return-object v6
.end method

.method private b(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 5868
    if-eqz p1, :cond_0

    .line 5869
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/provider/D;->K(Landroid/content/Context;)Lcom/android/email/provider/D;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    new-instance v1, Lcom/android/email/provider/o;

    invoke-direct {v1, p0, p1}, Lcom/android/email/provider/o;-><init>(Lcom/android/email/provider/EmailProvider;Lcom/android/emailcommon/provider/Mailbox;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/provider/D;->a(JLcom/android/email/provider/F;)V

    .line 5889
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 5891
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b([Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3961
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3962
    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3963
    const-string v2, "select _id from Account"

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3968
    if-nez p2, :cond_4

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v2, v0, :cond_4

    move v2, v0

    .line 3971
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3973
    const-string v6, "accounts_loaded"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3974
    new-instance v6, Lcom/android/mail/utils/H;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, p1, v7, v0}, Lcom/android/mail/utils/H;-><init>([Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 3975
    array-length v0, p1

    new-array v7, v0, [Ljava/lang/Object;

    .line 3976
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3977
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3978
    invoke-direct {p0, p1, v0}, Lcom/android/email/provider/EmailProvider;->c([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 3981
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 3982
    :goto_2
    array-length v9, p1

    if-ge v0, v9, :cond_0

    .line 3983
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v0

    .line 3982
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3985
    :cond_0
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3988
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3995
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3988
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3990
    :cond_2
    if-eqz v2, :cond_3

    .line 3992
    invoke-direct {p0, v6}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/MatrixCursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3995
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3997
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    invoke-virtual {v6, v0, v1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3999
    return-object v6

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/email/provider/EmailProvider;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private b(JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 5

    .prologue
    .line 4863
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 4864
    if-nez v0, :cond_0

    .line 4865
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->b(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 4867
    :cond_0
    return-object v0

    .line 4865
    :pswitch_1
    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Zw:J

    goto :goto_0

    :pswitch_2
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Zw:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/net/Uri;)Lcom/android/emailcommon/provider/g;
    .locals 3

    .prologue
    .line 5332
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5333
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3295
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kh()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3297
    const-string v1, ", case when hierarchicalName is null then displayName else hierarchicalName end as h_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    const-string v1, " FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 ORDER BY h_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3383
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3384
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 3385
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider;->Tf:Lcom/android/emailcommon/service/SearchParams;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/email/provider/EmailProvider;->Tf:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v6, v5, Lcom/android/emailcommon/service/SearchParams;->aaM:J

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 3387
    const-string v0, "loadMoreUri"

    const-string v1, "uiloadmore"

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    const-string v0, "capabilities"

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3426
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kh()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    invoke-static {v0, p1, v4}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3427
    const-string v1, " FROM Mailbox WHERE _id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3391
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 3392
    invoke-static {v5, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 3394
    if-eqz v6, :cond_0

    .line 3395
    iget-wide v8, v6, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v5, v8, v9}, Lcom/android/emailcommon/provider/Account;->m(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 3396
    invoke-static {v5, v7}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v5

    .line 3398
    if-eqz v5, :cond_2

    iget-boolean v7, v5, Lcom/android/email/service/o;->UZ:Z

    if-eqz v7, :cond_2

    .line 3400
    const-string v7, "loadMoreUri"

    const-string v8, "uiloadmore"

    invoke-static {v8, v2, v3}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    :cond_2
    const-string v7, "capabilities"

    iget v8, v6, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    invoke-static {v5, v8, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/service/o;IJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3409
    if-nez p1, :cond_4

    .line 3419
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 3420
    const-string v0, "persistentId"

    iget-object v1, v6, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3412
    :cond_4
    array-length v3, p1

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v5, p1, v2

    .line 3413
    const-string v7, "persistentId"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3412
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private b(JJ)V
    .locals 1

    .prologue
    .line 5723
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/email/provider/EmailProvider;->c(Ljava/lang/String;J)V

    .line 5724
    return-void
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5727
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 5728
    :cond_0
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->kf()Ljava/util/Set;

    move-result-object v0

    .line 5729
    if-eqz v0, :cond_1

    .line 5730
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5734
    :goto_0
    return-void

    .line 5732
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 3180
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "displayName,fromList,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "toList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
    return-void
.end method

.method private static bb(I)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2471
    const/4 v0, 0x0

    .line 2472
    sparse-switch p0, :sswitch_data_0

    .line 2483
    :goto_0
    return-object v0

    .line 2476
    :sswitch_0
    sget-object v0, Lcom/android/emailcommon/provider/g;->Xx:Landroid/net/Uri;

    goto :goto_0

    .line 2480
    :sswitch_1
    sget-object v0, Lcom/android/emailcommon/provider/Account;->Xx:Landroid/net/Uri;

    goto :goto_0

    .line 2472
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_0
    .end sparse-switch
.end method

.method private static bc(I)I
    .locals 1

    .prologue
    .line 4556
    packed-switch p0, :pswitch_data_0

    .line 4577
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4558
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4560
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 4562
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 4564
    :pswitch_4
    const/16 v0, 0x20

    goto :goto_0

    .line 4566
    :pswitch_5
    const/16 v0, 0x10

    goto :goto_0

    .line 4568
    :pswitch_6
    const/16 v0, 0x40

    goto :goto_0

    .line 4570
    :pswitch_7
    const/16 v0, 0x80

    goto :goto_0

    .line 4572
    :pswitch_8
    const/16 v0, 0x800

    goto :goto_0

    .line 4575
    :pswitch_9
    const/16 v0, 0x1001

    goto :goto_0

    .line 4556
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private c(Landroid/net/Uri;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x6

    const/4 v0, 0x0

    .line 5486
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5487
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;)Lcom/android/emailcommon/provider/g;

    move-result-object v2

    .line 5488
    if-nez v2, :cond_1

    .line 5510
    :cond_0
    :goto_0
    return v0

    .line 5489
    :cond_1
    iget-wide v4, v2, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 5490
    if-eqz v3, :cond_0

    .line 5491
    iget v4, v3, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    if-eq v4, v6, :cond_2

    iget v4, v3, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 5493
    :cond_2
    iget-wide v4, v2, Lcom/android/emailcommon/provider/g;->Lq:J

    iget-wide v6, v2, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/emailcommon/b/a;->c(Landroid/content/Context;JJ)V

    .line 5494
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/g;->YD:Landroid/net/Uri;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5496
    iget-wide v4, v3, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/email/provider/EmailProvider;->b(JJ)V

    .line 5497
    iget-wide v2, v2, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/provider/EmailProvider;->s(J)V

    goto :goto_0

    .line 5500
    :cond_3
    iget-wide v4, v2, Lcom/android/emailcommon/provider/g;->Lq:J

    invoke-static {v1, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 5502
    if-eqz v1, :cond_0

    .line 5505
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5506
    const-string v4, "mailboxKey"

    iget-wide v6, v1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5507
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)I

    move-result v0

    .line 5508
    iget-wide v4, v3, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/email/provider/EmailProvider;->b(JJ)V

    .line 5509
    iget-wide v2, v2, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/provider/EmailProvider;->s(J)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/email/provider/EmailProvider;)Lcom/android/emailcommon/service/SearchParams;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Tf:Lcom/android/emailcommon/service/SearchParams;

    return-object v0
.end method

.method private static c([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3315
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kh()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3316
    const-string v1, " FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 AND parentKey < 0 AND lastTouchedTime > 0 ORDER BY lastTouchedTime DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .prologue
    .line 3535
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3536
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3537
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 3539
    const/4 v3, 0x0

    .line 3542
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v8

    .line 3544
    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    .line 3545
    if-nez v9, :cond_0

    .line 3546
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v10, "Account %d not found during genQueryAccount"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v10, v11}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3548
    :cond_0
    const-string v2, "capabilities"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3550
    const-string v10, "capabilities"

    if-nez v9, :cond_20

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3553
    :cond_1
    const-string v2, "accountSettingsIntentUri"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3554
    const-string v2, "accountSettingsIntentUri"

    const-string v10, "settings"

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/email/provider/EmailProvider;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    :cond_2
    const-string v2, "composeUri"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3558
    const-string v2, "composeUri"

    const-string v10, "compose"

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/email/provider/EmailProvider;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    :cond_3
    const-string v2, "reauthenticationUri"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3562
    const-string v2, "reauthenticationUri"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->w(J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    :cond_4
    const-string v2, "mimeType"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3566
    const-string v2, "mimeType"

    sget-object v10, Lcom/android/email/provider/EmailProvider;->Si:Ljava/lang/String;

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3568
    :cond_5
    const-string v2, "color"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3569
    const-string v2, "color"

    sget-object v10, Lcom/android/email/provider/EmailProvider;->SR:Ljava/lang/String;

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v10

    .line 3575
    const-string v2, "confirm_delete"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3576
    const-string v11, "confirm_delete"

    invoke-virtual {v10}, Lcom/android/mail/i/g;->tM()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "1"

    :goto_1
    invoke-virtual {v4, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    :cond_7
    const-string v2, "confirm_send"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3580
    const-string v11, "confirm_send"

    invoke-virtual {v10}, Lcom/android/mail/i/g;->tO()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "1"

    :goto_2
    invoke-virtual {v4, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    :cond_8
    const-string v2, "swipe"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3584
    const-string v2, "swipe"

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mail/i/g;->bb(Z)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3587
    :cond_9
    const-string v2, "conversation_list_icon"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3589
    const-string v2, "conversation_list_icon"

    invoke-static {v10}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/mail/i/g;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3592
    :cond_a
    const-string v2, "auto_advance"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3593
    const-string v2, "auto_advance"

    invoke-virtual {v10}, Lcom/android/mail/i/g;->tP()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    :cond_b
    const/4 v2, 0x0

    invoke-static {v5, v6, v7, v2}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v12

    .line 3599
    const-string v2, "default_inbox"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-eqz v2, :cond_23

    .line 3601
    const-string v2, "default_inbox"

    const-string v11, "uifolder"

    invoke-static {v11, v12, v13}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    :goto_3
    const-string v2, "default_inbox_name"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-eqz v2, :cond_c

    .line 3610
    const-string v2, "default_inbox_name"

    invoke-static {v5, v12, v13}, Lcom/android/emailcommon/provider/Mailbox;->x(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3613
    :cond_c
    const-string v2, "syncStatus"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3614
    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-eqz v2, :cond_24

    .line 3615
    const-string v2, "syncStatus"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3621
    :cond_d
    :goto_4
    const-string v2, "updateSettingsUri"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3622
    const-string v2, "updateSettingsUri"

    const-string v11, "uiacctsettings"

    const-wide/16 v14, -0x1

    invoke-static {v11, v14, v15}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3625
    :cond_e
    const-string v2, "enableMessageTransforms"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3627
    const-string v2, "enableMessageTransforms"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3629
    :cond_f
    const-string v2, "securityHold"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3630
    if-eqz v9, :cond_25

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_25

    const/4 v2, 0x0

    .line 3632
    :goto_5
    const-string v11, "securityHold"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3634
    :cond_10
    const-string v2, "accountSecurityUri"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3635
    const-string v11, "accountSecurityUri"

    if-nez v9, :cond_26

    const-string v2, ""

    :goto_6
    invoke-virtual {v4, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    :cond_11
    const-string v2, "importance_markers_enabled"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3642
    const-string v2, "importance_markers_enabled"

    const-string v9, "0"

    invoke-virtual {v4, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :cond_12
    const-string v2, "show_chevrons_enabled"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3647
    const-string v2, "show_chevrons_enabled"

    const-string v9, "0"

    invoke-virtual {v4, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    :cond_13
    const-string v2, "setup_intent_uri"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3653
    const/4 v2, 0x6

    invoke-static {v5, v6, v7, v2}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v14

    .line 3654
    const-wide/16 v16, -0x1

    cmp-long v2, v14, v16

    if-nez v2, :cond_29

    .line 3655
    invoke-static {v5, v6, v7}, Lcom/android/email/service/n;->j(Landroid/content/Context;J)Lcom/android/email/service/o;

    move-result-object v2

    .line 3656
    if-eqz v2, :cond_14

    iget-boolean v3, v2, Lcom/android/email/service/o;->Vb:Z

    if-eqz v3, :cond_14

    .line 3657
    const-string v3, "setup_intent_uri"

    const-string v9, "setup"

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/android/email/provider/EmailProvider;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    :cond_14
    :goto_7
    const-string v3, "type"

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3664
    if-nez v2, :cond_15

    .line 3665
    invoke-static {v5, v6, v7}, Lcom/android/email/service/n;->j(Landroid/content/Context;J)Lcom/android/email/service/o;

    move-result-object v2

    .line 3667
    :cond_15
    if-eqz v2, :cond_27

    .line 3668
    iget-object v2, v2, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    .line 3673
    :goto_8
    const-string v3, "type"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    :cond_16
    const-string v2, "move_to_inbox"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_17

    .line 3677
    const-string v2, "move_to_inbox"

    const-string v3, "uifolder"

    invoke-static {v3, v12, v13}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    :cond_17
    const-string v2, "syncAuthority"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3681
    const-string v2, "syncAuthority"

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    :cond_18
    const-string v2, "quickResponseUri"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3684
    const-string v2, "quickResponseUri"

    const-string v3, "quickresponse/account"

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3687
    :cond_19
    const-string v2, "settingsFragmentClass"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3688
    const-string v2, "settingsFragmentClass"

    const-string v3, "com.android.email.activity.setup.AccountSettingsFragment"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    :cond_1a
    const-string v2, "reply_behavior"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3692
    const-string v3, "reply_behavior"

    invoke-virtual {v10}, Lcom/android/mail/i/g;->tz()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3697
    :cond_1b
    const-string v2, "show_images"

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3698
    const-string v2, "show_images"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3702
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/email/provider/EmailProvider;->SW:Lcom/android/email/provider/ProjectionMap;

    if-nez v3, :cond_1f

    invoke-static {}, Lcom/android/email/provider/ProjectionMap;->kq()Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "_id"

    const-string v6, "_id"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "folderListUri"

    const-string v6, "uifolders"

    const-string v7, "_id"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "fullFolderListUri"

    const-string v6, "uifullfolders"

    const-string v7, "_id"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "allFolderListUri"

    const-string v6, "uiallfolders"

    const-string v7, "_id"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "name"

    const-string v6, "displayName"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "accountManagerName"

    const-string v6, "emailAddress"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "accountId"

    const-string v6, "emailAddress"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "senderName"

    const-string v6, "senderName"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "undoUri"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'content://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/uiundo\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "accountUri"

    const-string v6, "uiaccount"

    const-string v7, "_id"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "searchUri"

    const-string v6, "uisearch"

    const-string v7, "_id"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "providerVersion"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "syncStatus"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "recentFolderListUri"

    const-string v6, "uirecentfolders"

    const-string v7, "_id"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "defaultRecentFolderListUri"

    const-string v6, "uidefaultrecentfolders"

    const-string v7, "_id"

    invoke-static {v6, v7}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "signature"

    const-string v6, "signature"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "snap_headers"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "confirm_archive"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "conversation_view_mode"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const-string v5, "veiled_address_pattern"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    const v5, 0x7f0902d7

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "sendFeedbackIntentUri"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    :cond_1d
    const v5, 0x7f0901c0

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "helpIntentUri"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    :cond_1e
    invoke-virtual {v3}, Lcom/android/email/provider/C;->kr()Lcom/android/email/provider/ProjectionMap;

    move-result-object v2

    sput-object v2, Lcom/android/email/provider/EmailProvider;->SW:Lcom/android/email/provider/ProjectionMap;

    :cond_1f
    sget-object v2, Lcom/android/email/provider/EmailProvider;->SW:Lcom/android/email/provider/ProjectionMap;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3703
    const-string v3, " FROM Account WHERE _id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3550
    :cond_20
    invoke-static {v5, v9}, Lcom/android/email/provider/EmailProvider;->j(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    goto/16 :goto_0

    .line 3576
    :cond_21
    const-string v2, "0"

    goto/16 :goto_1

    .line 3580
    :cond_22
    const-string v2, "0"

    goto/16 :goto_2

    .line 3604
    :cond_23
    const-string v2, "default_inbox"

    const-string v11, "uiinbox"

    invoke-static {v11, v6, v7}, Lcom/android/email/provider/EmailProvider;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3617
    :cond_24
    const-string v2, "syncStatus"

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 3630
    :cond_25
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 3635
    :cond_26
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/email/activity/setup/AccountSecurity;->l(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 3670
    :cond_27
    const-string v2, "unknown"

    goto/16 :goto_8

    .line 3692
    :cond_28
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_29
    move-object v2, v3

    goto/16 :goto_7
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 581
    if-eqz p0, :cond_0

    .line 583
    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sk:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 586
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 623
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 588
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 589
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 590
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 591
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 596
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 623
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 599
    :cond_3
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 600
    const/4 v0, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 601
    const-string v1, "Mailbox"

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->XT:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 605
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 613
    :goto_2
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 609
    :cond_4
    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 613
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 618
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 619
    const/4 v0, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 620
    const-string v0, "_id=?"

    invoke-virtual {p0, p1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 623
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 5688
    sget-object v0, Lcom/android/email/provider/EmailProvider;->Sz:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5689
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SA:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5690
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 5691
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    .line 5696
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SA:Landroid/net/Uri;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    .line 5698
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    const-wide/32 v2, 0x10000000

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    .line 5701
    monitor-enter p0

    .line 5702
    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Te:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 5703
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/email/provider/n;

    invoke-direct {v2, p0}, Lcom/android/email/provider/n;-><init>(Lcom/android/email/provider/EmailProvider;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Te:Landroid/os/Handler;

    .line 5714
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5715
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Te:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5716
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Te:Landroid/os/Handler;

    invoke-static {v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5718
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5719
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->Te:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5720
    return-void

    .line 5714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Landroid/net/Uri;)I
    .locals 14

    .prologue
    .line 5519
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 5520
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 5521
    invoke-direct {p0, v8}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5524
    const-string v1, "Mailbox"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "accountKey"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5527
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5528
    :cond_0
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Null or empty cursor when trying to purge mailbox %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5530
    const/4 v0, 0x0

    .line 5554
    :goto_0
    return v0

    .line 5532
    :cond_1
    const-string v2, "accountKey"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 5536
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 5538
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mailboxKey="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5539
    const-string v1, "Message"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5541
    const/4 v0, 0x0

    .line 5544
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5545
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5547
    invoke-static {v8, v12, v13, v2, v3}, Lcom/android/emailcommon/b/a;->c(Landroid/content/Context;JJ)V

    .line 5548
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/g;->YD:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 5550
    invoke-direct {p0, v2, v3}, Lcom/android/email/provider/EmailProvider;->s(J)V

    goto :goto_1

    .line 5553
    :cond_2
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/email/provider/EmailProvider;->b(JJ)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 5767
    invoke-static {p0, p2}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v1

    .line 5768
    if-nez v1, :cond_0

    .line 5769
    const/4 v0, 0x0

    .line 5771
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, v1, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4518
    sparse-switch p1, :sswitch_data_0

    .line 4546
    :goto_0
    return-object p2

    .line 4520
    :sswitch_0
    const v0, 0x7f0901fb

    .line 4546
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4523
    :sswitch_1
    const v0, 0x7f0901fc

    .line 4524
    goto :goto_1

    .line 4526
    :sswitch_2
    const v0, 0x7f0901fd

    .line 4527
    goto :goto_1

    .line 4529
    :sswitch_3
    const v0, 0x7f0901fe

    .line 4530
    goto :goto_1

    .line 4532
    :sswitch_4
    const v0, 0x7f0901ff

    .line 4533
    goto :goto_1

    .line 4535
    :sswitch_5
    const v0, 0x7f090200

    .line 4536
    goto :goto_1

    .line 4538
    :sswitch_6
    const v0, 0x7f090201

    .line 4539
    goto :goto_1

    .line 4541
    :sswitch_7
    const v0, 0x7f090202

    .line 4542
    goto :goto_1

    .line 4518
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method private static d([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4140
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kh()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4141
    const-string v1, " FROM Mailbox WHERE parentKey =? ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4143
    const-string v1, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/email/provider/EmailProvider;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sy:Ljava/util/Set;

    return-object v0
.end method

.method private static d(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 2334
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2335
    const-string v1, "htmlContent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2336
    const-string v1, "textContent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2337
    invoke-static {p0, p1, p2, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 2338
    return-void
.end method

.method public static e(Landroid/content/Context;J)Lcom/android/mail/providers/Folder;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4265
    const-string v1, "uifolder"

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4268
    if-nez v1, :cond_0

    .line 4269
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v1, "Null folder cursor for mailboxId %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4281
    :goto_0
    return-object v3

    .line 4275
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4276
    new-instance v3, Lcom/android/mail/providers/Folder;

    invoke-direct {v3, v1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4279
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private e(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 5621
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 5622
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v0

    .line 5623
    if-eqz v0, :cond_0

    .line 5624
    iget-wide v0, v0, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->r(J)V

    .line 5626
    :cond_0
    return-void
.end method

.method private static e([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 4621
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 4622
    const-string v1, "unreadSenders"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4623
    sget-object v0, Lcom/android/mail/providers/E;->aCw:[Ljava/lang/String;

    .line 4625
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1680
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    .line 1681
    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/Account;->XO:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v8

    .line 1685
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1686
    new-instance v2, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 1687
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/Account;->b(Landroid/database/Cursor;)V

    .line 1688
    invoke-virtual {v2, p0}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v3

    .line 1690
    if-nez v3, :cond_0

    .line 1691
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Could not find service info for account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1701
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1694
    :cond_0
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/android/emailcommon/provider/Account;->ad(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1695
    iget-object v3, v3, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/Account;->at(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 1697
    const-string v3, "accountJson"

    invoke-virtual {v9, v2, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1698
    add-int/lit8 v0, v0, 0x1

    .line 1699
    goto :goto_0

    .line 1701
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1703
    return v0
.end method

.method private f([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5598
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5602
    :try_start_0
    new-instance v1, Lcom/android/mail/utils/G;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "conversationUri"

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 5605
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 5606
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5614
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v1, "applyBatch exception"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5617
    :cond_0
    new-instance v0, Lcom/android/mail/utils/G;

    invoke-direct {v0, p1, v5}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    :goto_1
    return-object v0

    .line 5609
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 5611
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 5612
    goto :goto_1
.end method

.method private f(Landroid/net/Uri;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 3

    .prologue
    .line 5741
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5742
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/content/Context;J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6118
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/email/provider/EmailProvider;->Tg:[Ljava/lang/String;

    const-string v2, "_id =?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6121
    if-nez v0, :cond_0

    .line 6122
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v2, "Could not find email address for account %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6126
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/b/a;->C(Landroid/content/Context;J)V

    .line 6129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6130
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 6131
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=?"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6134
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 6135
    const-string v4, "syncKey"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6136
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id =?"

    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6139
    if-eqz v0, :cond_1

    .line 6140
    invoke-static {p0, p1, p2}, Lcom/android/email/service/n;->i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;

    move-result-object v1

    .line 6142
    if-eqz v1, :cond_1

    .line 6144
    :try_start_0
    invoke-interface {v1, v0}, Lcom/android/emailcommon/service/r;->R(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6150
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g(Landroid/net/Uri;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6034
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6035
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 6038
    :try_start_0
    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 6039
    if-nez v3, :cond_0

    .line 6059
    :goto_0
    return v0

    .line 6043
    :cond_0
    invoke-static {v2, v4, v5}, Lcom/android/email/provider/EmailProvider;->f(Landroid/content/Context;J)V

    .line 6046
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 6047
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6050
    invoke-static {v2}, Lcom/android/email/provider/a;->D(Landroid/content/Context;)V

    .line 6051
    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->hf()V

    .line 6052
    invoke-static {v2}, Lcom/android/email/provider/EmailProvider;->J(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 6055
    goto :goto_0

    .line 6056
    :catch_0
    move-exception v2

    .line 6057
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v4, "Exception while deleting account"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1547
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    if-eqz p1, :cond_0

    .line 1550
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1554
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 3458
    if-nez p1, :cond_0

    move v0, v1

    .line 3524
    :goto_0
    return v0

    .line 3463
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3465
    const v0, 0x7f0902e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0902e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3467
    :cond_1
    const v0, 0x104061

    .line 3502
    :goto_1
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v5, "getCapabilities() for %d (protocol %s): 0x%x %s"

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    aput-object v4, v6, v10

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v4, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, v0

    :goto_2
    const/16 v8, 0x20

    if-ge v1, v8, :cond_8

    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3472
    :cond_3
    const v0, 0x7f0902e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3473
    const v0, 0x104000

    goto :goto_1

    .line 3475
    :cond_4
    const v0, 0x7f0902e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3476
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->XG:Ljava/lang/String;

    .line 3477
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    .line 3478
    if-eqz v0, :cond_5

    .line 3480
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3485
    :cond_5
    :goto_3
    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_6

    .line 3486
    const v0, 0x104461

    goto :goto_1

    .line 3493
    :cond_6
    const v0, 0x104401

    .line 3498
    goto :goto_1

    .line 3499
    :cond_7
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v2, "Unknown protocol for account %d"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 3500
    goto/16 :goto_0

    .line 3502
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3507
    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3508
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 3512
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3513
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 3516
    :cond_a
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 3519
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 3522
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 3524
    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1568
    if-nez p1, :cond_0

    .line 1571
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3047
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\' || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ke()V
    .locals 4

    .prologue
    .line 1245
    sget-object v1, Lcom/android/email/provider/EmailProvider;->Sn:Ljava/lang/Object;

    monitor-enter v1

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 1248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "EmailProvider.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1255
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EmailProviderBody.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1258
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1259
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v2, "Deleting orphaned EmailProvider database..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1260
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "EmailProvider.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1265
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 1261
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1262
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v2, "Deleting orphaned EmailProviderBody database..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1263
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "EmailProviderBody.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private kf()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->SL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static kg()Lcom/android/email/provider/ProjectionMap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2681
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SS:Lcom/android/email/provider/ProjectionMap;

    if-nez v0, :cond_0

    .line 2682
    invoke-static {}, Lcom/android/email/provider/ProjectionMap;->kq()Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "conversationUri"

    const-string v2, "uimessage"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "messageListUri"

    const-string v2, "uimessage"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "subject"

    const-string v2, "subject"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "snippet"

    const-string v2, "snippet"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "conversationInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "dateReceivedMs"

    const-string v2, "timeStamp"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "hasAttachments"

    const-string v2, "flagAttachment"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "numMessages"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "numDrafts"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "sendingState"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "priority"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "read"

    const-string v2, "flagRead"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "seen"

    const-string v2, "flagSeen"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "starred"

    const-string v2, "flagFavorite"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "conversationFlags"

    const-string v2, "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END + CASE WHEN (flags&524288) !=0 THEN 8 ELSE 0 END + CASE WHEN (flags&262144) !=0 THEN 4 ELSE 0 END"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "accountUri"

    const-string v2, "uiaccount"

    const-string v3, "accountKey"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "senderInfo"

    const-string v2, "fromList"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "orderKey"

    const-string v2, "timeStamp"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/provider/C;->kr()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SS:Lcom/android/email/provider/ProjectionMap;

    .line 2707
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SS:Lcom/android/email/provider/ProjectionMap;

    return-object v0
.end method

.method private static kh()Lcom/android/email/provider/ProjectionMap;
    .locals 5

    .prologue
    .line 2828
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SV:Lcom/android/email/provider/ProjectionMap;

    if-nez v0, :cond_0

    .line 2829
    invoke-static {}, Lcom/android/email/provider/ProjectionMap;->kq()Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "persistentId"

    const-string v2, "serverId"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "folderUri"

    const-string v2, "uifolder"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "displayName"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "hasChildren"

    const-string v2, "flags&1"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "capabilities"

    const-string v2, "CASE WHEN (flags&16) !=0 THEN 8 ELSE 0 END"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "syncWindow"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "conversationListUri"

    const-string v2, "uimessages"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "childFoldersListUri"

    const-string v2, "uisubfolders"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "unreadCount"

    const-string v2, "unreadCount"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "totalCount"

    const-string v2, "CASE WHEN totalCount<0 OR type=3 OR type=4 OR type=6 THEN messageCount ELSE totalCount END"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "refreshUri"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sj:Ljava/lang/String;

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "syncStatus"

    const-string v2, "uiSyncStatus"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "lastSyncResult"

    const-string v2, "uiLastSyncResult"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "type"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->SU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "iconResId"

    const-string v2, "CASE type WHEN 0 THEN 2130837655 WHEN 3 THEN 2130837650 WHEN 4 THEN 2130837659 WHEN 5 THEN 2130837663 WHEN 6 THEN 2130837668 WHEN 9 THEN 2130837667 ELSE 2130837651 END"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "loadMoreUri"

    const-string v2, "uiloadmore"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "hierarchicalDesc"

    const-string v2, "hierarchicalName"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "parentUri"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "case when parentKey=-1 then NULL else "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "uifolder"

    const-string v4, "parentKey"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "unreadSenders"

    const-string v2, "(SELECT group_concat(fromList) FROM (SELECT fromList FROM Message WHERE mailboxKey=Mailbox._id AND flagRead=0 GROUP BY fromList ORDER BY timeStamp DESC))"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/provider/C;->kr()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SV:Lcom/android/email/provider/ProjectionMap;

    .line 2866
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SV:Lcom/android/email/provider/ProjectionMap;

    return-object v0
.end method

.method private static ki()Lcom/android/email/provider/ProjectionMap;
    .locals 5

    .prologue
    .line 2931
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SX:Lcom/android/email/provider/ProjectionMap;

    if-nez v0, :cond_0

    .line 2932
    invoke-static {}, Lcom/android/email/provider/ProjectionMap;->kq()Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "quickResponse"

    const-string v2, "quickResponse"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "uri"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "quickresponse"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'||_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/provider/C;->kr()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SX:Lcom/android/email/provider/ProjectionMap;

    .line 2939
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SX:Lcom/android/email/provider/ProjectionMap;

    return-object v0
.end method

.method private static kj()Lcom/android/email/provider/ProjectionMap;
    .locals 4

    .prologue
    .line 2961
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SY:Lcom/android/email/provider/ProjectionMap;

    if-nez v0, :cond_0

    .line 2962
    invoke-static {}, Lcom/android/email/provider/ProjectionMap;->kq()Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "_display_name"

    const-string v2, "fileName"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "_size"

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "uri"

    const-string v2, "uiattachment"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "contentType"

    const-string v2, "mimeType"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "state"

    const-string v2, "uiState"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "destination"

    const-string v2, "uiDestination"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "downloadedSize"

    const-string v2, "uiDownloadedSize"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "contentUri"

    const-string v2, "contentUri"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    const-string v1, "flags"

    const-string v2, "flags"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/C;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/provider/C;->kr()Lcom/android/email/provider/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->SY:Lcom/android/email/provider/ProjectionMap;

    .line 2975
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SY:Lcom/android/email/provider/ProjectionMap;

    return-object v0
.end method

.method private static kk()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4120
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yi:Ljava/lang/String;

    .line 4121
    const-string v1, "%s/\' || %s || \'/\' || %s || \'/%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "accountKey"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "RAW"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@CASE WHEN contentUri IS NULL THEN \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' WHEN contentUri IS NOT NULL THEN contentUri END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized kl()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 6246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sx:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 6247
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/email/provider/q;

    invoke-direct {v2, p0}, Lcom/android/email/provider/q;-><init>(Lcom/android/email/provider/EmailProvider;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sx:Landroid/os/Handler;

    .line 6265
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sx:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic km()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic kn()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/email/provider/EmailProvider;->Sz:Landroid/net/Uri;

    return-object v0
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3061
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\' || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3437
    sget-object v0, Lcom/android/email/provider/EmailProvider;->Ta:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3442
    sget-object v0, Lcom/android/email/provider/EmailProvider;->Tb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static p(J)Z
    .locals 2

    .prologue
    .line 3733
    const-wide v0, 0x100000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static q(J)Z
    .locals 4

    .prologue
    .line 3737
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x10000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r(J)V
    .locals 5

    .prologue
    .line 5633
    sget-object v0, Lcom/android/email/provider/EmailProvider;->Sz:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5634
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 5635
    if-nez v0, :cond_0

    .line 5636
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No mailbox for notification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5645
    :goto_0
    return-void

    .line 5640
    :cond_0
    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    if-nez v0, :cond_1

    .line 5641
    sget-object v0, Lcom/android/email/provider/EmailProvider;->Sz:Landroid/net/Uri;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5644
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/EmailProvider;->v(J)V

    goto :goto_0
.end method

.method private s(J)V
    .locals 1

    .prologue
    .line 5652
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SG:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    .line 5653
    return-void
.end method

.method private t(J)V
    .locals 3

    .prologue
    .line 5669
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SC:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5672
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5673
    return-void
.end method

.method private u(J)Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 5751
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5752
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 5753
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 5754
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/email/provider/EmailProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method private v(J)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 6158
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 6160
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->Tj:Landroid/appwidget/AppWidgetManager;

    if-nez v1, :cond_0

    .line 6161
    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->Tj:Landroid/appwidget/AppWidgetManager;

    .line 6162
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {v7}, Lcom/android/email/provider/I;->aP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->Tk:Landroid/content/ComponentName;

    .line 6166
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->Tj:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Tk:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 6167
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Th:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 6168
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->Th:[I

    .line 6169
    invoke-static {v7, v1}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;[I)[[Ljava/lang/String;

    move-result-object v8

    .line 6171
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->Ti:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6172
    array-length v9, v8

    move v6, v0

    :goto_0
    if-ge v6, v9, :cond_5

    aget-object v0, v8, v6

    .line 6174
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6172
    :cond_1
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 6175
    :cond_2
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 6176
    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->q(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6178
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Ti:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6179
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Ti:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6182
    :cond_3
    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 6185
    :pswitch_0
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->XT:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6189
    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6190
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Ti:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 6194
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 6206
    :cond_5
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Ti:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6208
    const-string v1, "folderUri"

    const-string v2, "uifolder"

    invoke-static {v2, p1, p2}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6209
    sget-object v1, Lcom/android/email/provider/EmailProvider;->Si:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 6210
    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6212
    :cond_6
    return-void

    .line 6182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static w(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 6400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->XX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACCOUNT_SETTINGS/incoming/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 6402
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/b/k;->a(Landroid/net/Uri$Builder;J)V

    .line 6403
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2554
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->a(Ljava/util/Set;)V

    .line 2555
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2556
    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2557
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2559
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 2560
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2564
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->kf()Ljava/util/Set;

    move-result-object v0

    .line 2565
    invoke-direct {p0, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/util/Set;)V

    .line 2566
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2567
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 2563
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2564
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->kf()Ljava/util/Set;

    move-result-object v0

    .line 2565
    invoke-direct {p0, v5}, Lcom/android/email/provider/EmailProvider;->a(Ljava/util/Set;)V

    .line 2566
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2567
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 2569
    :cond_0
    throw v1

    :cond_1
    return-object v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2283
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "EmailProvider#call(%s, %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2287
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->Yf:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2288
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2290
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->Yf:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    :cond_0
    :goto_0
    return-object v1

    .line 2295
    :cond_1
    const-string v0, "sync_status"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2296
    const-string v0, "id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "status_code"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v6, Lcom/android/email/provider/EmailProvider;->Su:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/provider/D;->K(Landroid/content/Context;)Lcom/android/email/provider/D;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/android/email/provider/D;->x(J)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "uiLastSyncResult"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Mailbox"

    const-string v8, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v7, v6, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2299
    :cond_4
    const-string v0, "fix_parent_keys"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2300
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->D(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 2305
    :cond_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2306
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2310
    const-string v0, "send_message"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2311
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_7

    move-object v0, v1

    .line 2312
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/android/email/r;->i(J)V

    .line 2322
    :goto_4
    if-eqz v0, :cond_0

    .line 2323
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2324
    const-string v2, "messageUri"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 2311
    :cond_6
    new-instance v0, Lcom/android/emailcommon/provider/g;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/g;-><init>()V

    goto :goto_2

    :cond_7
    const/4 v3, 0x4

    invoke-direct {p0, v4, v5, v3}, Lcom/android/email/provider/EmailProvider;->b(JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v0, v1

    goto :goto_3

    :cond_8
    const/4 v6, 0x5

    invoke-direct {p0, v4, v5, v6}, Lcom/android/email/provider/EmailProvider;->b(JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    if-nez v6, :cond_9

    move-object v0, v1

    goto :goto_3

    :cond_9
    invoke-direct {p0, v0, v3, p3}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .line 2313
    :cond_a
    const-string v0, "save_message"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2314
    const/4 v0, 0x3

    invoke-direct {p0, v4, v5, v0}, Lcom/android/email/provider/EmailProvider;->b(JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v0, v1

    goto :goto_4

    :cond_b
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_c

    new-instance v0, Lcom/android/emailcommon/provider/g;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/g;-><init>()V

    :cond_c
    invoke-direct {p0, v0, v3, p3}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 2315
    :cond_d
    const-string v0, "set_current_account"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2316
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Unhandled (but expected) Content provider method: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_4

    .line 2318
    :cond_e
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected Content provider method: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto/16 :goto_4

    :cond_f
    move-object v0, v1

    goto :goto_5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    .prologue
    .line 630
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v0, "delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v6

    .line 632
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 637
    invoke-direct {p0, v7}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 638
    shr-int/lit8 v1, v6, 0xc

    .line 639
    const-string v5, "0"

    .line 640
    const/4 v8, 0x0

    .line 642
    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sl:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    const/4 v4, -0x1

    .line 646
    const/16 v2, 0x2001

    if-eq v6, v2, :cond_0

    const/16 v2, 0x2002

    if-ne v6, v2, :cond_1

    .line 647
    :cond_0
    :try_start_0
    const-string v2, "is_uiprovider"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->e(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 651
    :cond_1
    sparse-switch v6, :sswitch_data_0

    move v3, v8

    .line 695
    :goto_0
    sparse-switch v6, :sswitch_data_1

    .line 761
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 792
    :catch_0
    move-exception v1

    move v2, v3

    .line 793
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->ke()V

    .line 794
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    :catchall_0
    move-exception v1

    move v3, v2

    :goto_2
    if-eqz v3, :cond_2

    .line 797
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v1

    .line 653
    :sswitch_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->c(Landroid/net/Uri;)I

    move-result v0

    .line 806
    :goto_3
    return v0

    .line 655
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailProvider;->f(Landroid/content/Context;J)V

    const/4 v0, 0x1

    goto :goto_3

    .line 657
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->g(Landroid/net/Uri;)I

    move-result v0

    goto :goto_3

    .line 659
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->d(Landroid/net/Uri;)I

    move-result v0

    goto :goto_3

    .line 661
    :sswitch_4
    sget-object v2, Lcom/android/emailcommon/provider/g;->YI:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v2

    .line 664
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 665
    sget-object v1, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/email/provider/EmailProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    .line 673
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 796
    goto :goto_3

    .line 670
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 796
    const/4 v0, 0x0

    goto :goto_3

    .line 673
    :catchall_1
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 792
    :catch_1
    move-exception v1

    move v2, v8

    goto :goto_1

    .line 691
    :sswitch_5
    const/4 v2, 0x1

    .line 692
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v3, v2

    goto/16 :goto_0

    .line 708
    :sswitch_6
    :try_start_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 709
    const/16 v4, 0x2002

    if-ne v6, v4, :cond_5

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from Message_Updates where _id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 718
    :cond_5
    const/16 v4, 0x1001

    if-ne v6, v4, :cond_9

    .line 719
    invoke-static {v7, v2}, Lcom/android/emailcommon/provider/Mailbox;->q(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 724
    :goto_4
    invoke-static {v2, p2}, Lcom/android/email/provider/EmailProvider;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 726
    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    .line 727
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SC:Landroid/net/Uri;

    invoke-direct {p0, v4, v2}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 728
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 763
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 764
    const/16 v4, 0x2001

    if-ne v6, v4, :cond_c

    .line 766
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v4

    .line 768
    :try_start_8
    invoke-static {v7, v4, v5}, Lcom/android/email/provider/EmailProvider;->d(Landroid/content/Context;J)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 772
    :goto_6
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from Body where messageKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 790
    :goto_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 796
    :cond_7
    if-eqz v3, :cond_8

    .line 797
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    :cond_8
    invoke-static {v6}, Lcom/android/email/provider/EmailProvider;->bb(I)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "delete"

    invoke-direct {p0, v0, v3, v2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    move v0, v1

    .line 806
    goto/16 :goto_3

    .line 721
    :cond_9
    const-wide/16 v4, -0x1

    goto :goto_4

    .line 729
    :cond_a
    const/16 v8, 0x1001

    if-ne v6, v8, :cond_b

    .line 730
    :try_start_a
    invoke-direct {p0, v2, v4, v5}, Lcom/android/email/provider/EmailProvider;->c(Ljava/lang/String;J)V

    goto :goto_5

    .line 796
    :catchall_2
    move-exception v1

    goto/16 :goto_2

    .line 731
    :cond_b
    const/16 v4, 0x3001

    if-ne v6, v4, :cond_6

    .line 732
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SD:Landroid/net/Uri;

    invoke-direct {p0, v4, v2}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_5

    .line 737
    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "messageKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/email/provider/EmailProvider;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 752
    :sswitch_8
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move-object v2, v5

    .line 753
    goto :goto_5

    .line 755
    :sswitch_9
    const-string v1, "MessageMove"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v4

    move-object v2, v5

    .line 756
    goto/16 :goto_5

    .line 758
    :sswitch_a
    const-string v1, "MessageStateChange"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v4

    move-object v2, v5

    .line 759
    goto/16 :goto_5

    .line 769
    :catch_2
    move-exception v4

    .line 770
    sget-object v5, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v7, "Exception while deleting bodies"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v4, v7, v8}, Lcom/android/mail/utils/E;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_6

    .line 775
    :cond_c
    const-string v4, "select messageKey from Body except select _id from Message"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v4

    .line 777
    :goto_8
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 778
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-wide v8

    .line 780
    :try_start_c
    invoke-static {v7, v8, v9}, Lcom/android/email/provider/EmailProvider;->d(Landroid/content/Context;J)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_8

    .line 781
    :catch_3
    move-exception v5

    .line 782
    :try_start_d
    sget-object v8, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v9, "Exception while deleting bodies"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v5, v9, v10}, Lcom/android/mail/utils/E;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_8

    .line 786
    :catchall_3
    move-exception v1

    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 788
    const-string v4, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_7

    .line 796
    :catchall_4
    move-exception v1

    move v3, v8

    goto/16 :goto_2

    .line 792
    :catch_4
    move-exception v1

    goto/16 :goto_1

    .line 651
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x1000 -> :sswitch_5
        0x1001 -> :sswitch_5
        0x2000 -> :sswitch_5
        0x2001 -> :sswitch_5
        0x2002 -> :sswitch_5
        0x2003 -> :sswitch_4
        0x9003 -> :sswitch_0
        0x9007 -> :sswitch_2
        0x900d -> :sswitch_1
        0x9014 -> :sswitch_3
    .end sparse-switch

    .line 695
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_6
        0x1000 -> :sswitch_8
        0x1001 -> :sswitch_6
        0x2000 -> :sswitch_8
        0x2001 -> :sswitch_6
        0x2002 -> :sswitch_6
        0x2004 -> :sswitch_9
        0x2005 -> :sswitch_a
        0x3000 -> :sswitch_8
        0x3001 -> :sswitch_6
        0x3002 -> :sswitch_7
        0x4000 -> :sswitch_8
        0x4001 -> :sswitch_6
        0x5000 -> :sswitch_8
        0x5001 -> :sswitch_6
        0x6000 -> :sswitch_8
        0x6001 -> :sswitch_6
        0x7000 -> :sswitch_8
        0x7001 -> :sswitch_6
        0x8001 -> :sswitch_6
        0xa000 -> :sswitch_8
        0xa001 -> :sswitch_6
        0xb001 -> :sswitch_6
    .end sparse-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 6216
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 6217
    const-string v0, "Installed services:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6218
    invoke-static {v6}, Lcom/android/email/service/n;->P(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/o;

    .line 6219
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 6221
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6222
    const-string v0, "Accounts: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6223
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->XO:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6224
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 6225
    const-string v0, "  None"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6228
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6229
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 6230
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->b(Landroid/database/Cursor;)V

    .line 6231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Account "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6232
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->XC:J

    invoke-static {v6, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->u(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 6234
    if-eqz v2, :cond_1

    .line 6235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    Protocol = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->XG:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6241
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6235
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XG:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 6241
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6242
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 812
    const-string v0, "getType"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 813
    sparse-switch v0, :sswitch_data_0

    .line 869
    :cond_0
    :goto_0
    return-object v5

    .line 815
    :sswitch_0
    const-string v5, "vnd.android.cursor.item/email-body"

    goto :goto_0

    .line 817
    :sswitch_1
    const-string v5, "vnd.android.cursor.dir/email-body"

    goto :goto_0

    .line 825
    :sswitch_2
    const-string v0, "vnd.android.cursor.item/email-message"

    .line 826
    const-string v1, "mailboxId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    if-eqz v1, :cond_1

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 830
    goto :goto_0

    .line 833
    :sswitch_3
    const-string v5, "vnd.android.cursor.dir/email-message"

    goto :goto_0

    .line 835
    :sswitch_4
    const-string v5, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_0

    .line 837
    :sswitch_5
    const-string v5, "vnd.android.cursor.item/email-mailbox"

    goto :goto_0

    .line 839
    :sswitch_6
    const-string v5, "vnd.android.cursor.dir/email-account"

    goto :goto_0

    .line 841
    :sswitch_7
    const-string v5, "vnd.android.cursor.item/email-account"

    goto :goto_0

    .line 844
    :sswitch_8
    const-string v5, "vnd.android.cursor.dir/email-attachment"

    goto :goto_0

    .line 846
    :sswitch_9
    const-string v5, "vnd.android.cursor.item/email-attachment"

    goto :goto_0

    .line 848
    :sswitch_a
    const-string v5, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_0

    .line 850
    :sswitch_b
    const-string v5, "vnd.android.cursor.item/email-hostauth"

    goto :goto_0

    .line 852
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 853
    const-string v1, "Attachment"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Ry:[Ljava/lang/String;

    const-string v3, "cachedFile=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 857
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 863
    if-eqz v1, :cond_0

    .line 864
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 860
    :cond_2
    if-eqz v1, :cond_0

    .line 864
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 864
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 813
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_5
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_8
        0x3001 -> :sswitch_9
        0x3002 -> :sswitch_8
        0x3003 -> :sswitch_c
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0xa000 -> :sswitch_1
        0xa001 -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 890
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insert: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v0, "insert"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    .line 892
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 895
    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 896
    shr-int/lit8 v0, v2, 0xc

    .line 897
    const-string v5, "0"

    .line 902
    const/16 v6, 0x1001

    if-eq v2, v6, :cond_0

    const/16 v6, 0x1000

    if-ne v2, v6, :cond_1

    .line 903
    :cond_0
    const-string v6, "unreadCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 904
    const-string v6, "messageCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 1018
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1021
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->ke()V

    .line 1022
    throw v0

    .line 912
    :sswitch_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 914
    const-string v1, "htmlContent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 915
    const-string v1, "textContent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 917
    const-string v1, "Body"

    const-string v6, "foo"

    invoke-virtual {v4, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 918
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 922
    const-string v1, "messageKey"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 923
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot insert body without MESSAGE_KEY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_2
    const-string v1, "messageKey"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 928
    invoke-static {v3, v6, v7}, Lcom/android/email/provider/EmailProvider;->d(Landroid/content/Context;J)V

    .line 929
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v7, p2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLandroid/content/ContentValues;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1026
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/android/email/provider/EmailProvider;->bb(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "insert"

    invoke-direct {p0, v1, v2, v5}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v10}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1030
    :goto_1
    return-object v0

    .line 936
    :sswitch_1
    :try_start_2
    invoke-static {p2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/ContentValues;)V

    .line 944
    :sswitch_2
    sget-object v3, Lcom/android/email/provider/EmailProvider;->Sl:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "foo"

    invoke-virtual {v4, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 945
    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 946
    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 969
    :sswitch_3
    invoke-direct {p0, v6, v7, p2}, Lcom/android/email/provider/EmailProvider;->a(JLandroid/content/ContentValues;)V

    .line 970
    const-string v1, "is_uiprovider"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 971
    invoke-direct {p0, v6, v7}, Lcom/android/email/provider/EmailProvider;->t(J)V

    .line 973
    :cond_4
    sget-object v1, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :sswitch_4
    const-string v1, "mailboxKey"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 949
    const-string v1, "is_uiprovider"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 950
    invoke-direct {p0, v6, v7}, Lcom/android/email/provider/EmailProvider;->r(J)V

    .line 952
    :cond_5
    const-string v1, "accountKey"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/email/provider/EmailProvider;->b(JJ)V

    goto :goto_0

    .line 955
    :sswitch_5
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 956
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x40

    if-ge v1, v3, :cond_3

    .line 959
    const-string v1, "accountKey"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 961
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 962
    sget-object v3, Lcom/android/email/provider/EmailProvider;->SC:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v3, v6, v7}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    .line 963
    sget-object v3, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v3, v6, v7}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    goto/16 :goto_0

    .line 977
    :sswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :sswitch_7
    const-string v3, "flags"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 981
    const-string v1, "flags"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 984
    :cond_6
    const-string v3, "location"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 985
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v8, "attachment with blank location"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v8, v9}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 987
    :cond_7
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->SN:Lcom/android/email/provider/t;

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v6, v7, v1}, Lcom/android/email/provider/t;->a(Landroid/content/Context;JI)V

    goto/16 :goto_0

    .line 992
    :sswitch_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 993
    const-string v2, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 994
    sget-object v0, Lcom/android/emailcommon/provider/q;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 999
    :sswitch_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1000
    const-string v2, "mailboxKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1001
    sget-object v0, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 1004
    :sswitch_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1005
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1006
    const-string v2, "messageKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 1010
    :sswitch_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1011
    const-string v2, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1012
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 1014
    :sswitch_c
    sget-object v1, Lcom/android/email/provider/EmailProvider;->Sl:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1015
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 910
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_b
        0x1000 -> :sswitch_2
        0x1001 -> :sswitch_9
        0x2000 -> :sswitch_1
        0x2001 -> :sswitch_a
        0x3000 -> :sswitch_2
        0x3002 -> :sswitch_c
        0x4000 -> :sswitch_2
        0x5000 -> :sswitch_1
        0x6000 -> :sswitch_1
        0x7000 -> :sswitch_2
        0x8000 -> :sswitch_2
        0x8002 -> :sswitch_8
        0xa000 -> :sswitch_0
        0xb000 -> :sswitch_2
    .end sparse-switch

    .line 946
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_4
        0x3000 -> :sswitch_7
        0x5000 -> :sswitch_6
        0x6000 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 9

    .prologue
    const v8, 0x7f0902e9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1036
    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent;->g(Landroid/content/Context;)V

    .line 1037
    sget-object v1, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/email/provider/EmailProvider;->Ss:Landroid/net/Uri;

    if-eqz v2, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    :goto_0
    invoke-static {v0}, Lcom/android/email/b;->g(Landroid/content/Context;)V

    .line 1040
    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->I(Landroid/content/Context;)V

    .line 1041
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/email/provider/k;

    invoke-direct {v1, v0}, Lcom/android/email/provider/k;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/emailcommon/b/g;->a(Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;

    .line 1044
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    const-string v2, "update-all-widgets"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1047
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1051
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1053
    new-instance v2, Lcom/android/email/provider/l;

    invoke-direct {v2, p0, v1}, Lcom/android/email/provider/l;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1066
    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/i/g;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1068
    return v6

    .line 1037
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/integrityCheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/email/provider/EmailProvider;->Ss:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/accountBackup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/email/provider/EmailProvider;->St:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/email/provider/EmailProvider;->Su:Landroid/net/Uri;

    const v2, 0x7f0902e9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/email/provider/EmailProvider;->Si:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->XX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".uinotifications"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uimessages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->Sz:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uifolder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->SA:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uifolders"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uiaccount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->SC:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uiattachment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->SD:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uiattachments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->SE:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uiaccts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/uimessage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/email/provider/EmailProvider;->SG:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/uirecentfolders"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/email/provider/EmailProvider;->SH:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "account"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "account/#"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "accountCheck/#"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "mailbox"

    const/16 v5, 0x1000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "mailbox/*"

    const/16 v5, 0x1001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "mailboxNotification/#"

    const/16 v5, 0x1002

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "mailboxMostRecentMessage/#"

    const/16 v5, 0x1003

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "mailboxCount/#"

    const/16 v5, 0x1004

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "message"

    const/16 v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "message/#"

    const/16 v5, 0x2001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "attachment"

    const/16 v5, 0x3000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "attachment/#"

    const/16 v5, 0x3001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "attachment/message/#"

    const/16 v5, 0x3002

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "attachment/cachedFile"

    const/16 v5, 0x3003

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "body"

    const v5, 0xa000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "body/#"

    const v5, 0xa001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "bodyHtml/#"

    const v5, 0xa002

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "bodyText/#"

    const v5, 0xa003

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "hostauth"

    const/16 v5, 0x4000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "hostauth/*"

    const/16 v5, 0x4001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "credential"

    const v5, 0xb000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "credential/*"

    const v5, 0xb001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "syncedMessage/#"

    const/16 v5, 0x2002

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "messageBySelection"

    const/16 v5, 0x2003

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "messageMove"

    const/16 v5, 0x2004

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "messageChange"

    const/16 v5, 0x2005

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "deletedMessage"

    const/16 v5, 0x6000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "deletedMessage/#"

    const/16 v5, 0x6001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "updatedMessage"

    const/16 v5, 0x5000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "updatedMessage/#"

    const/16 v5, 0x5001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "policy"

    const/16 v5, 0x7000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "policy/#"

    const/16 v5, 0x7001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "quickresponse"

    const v5, 0x8000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "quickresponse/#"

    const v5, 0x8001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "quickresponse/account/#"

    const v5, 0x8002

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uifolders/#"

    const v5, 0x9000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uifullfolders/#"

    const v5, 0x9012

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiallfolders/#"

    const v5, 0x9013

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uisubfolders/#"

    const v5, 0x9001

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uimessages/#"

    const v5, 0x9002

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uimessage/#"

    const v5, 0x9003

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiundo"

    const v5, 0x9004

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/email/provider/EmailProvider;->Sj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x9005

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uifolder/*"

    const v5, 0x9006

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiinbox/#"

    const v5, 0x9015

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiaccount/#"

    const v5, 0x9007

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiaccts"

    const v5, 0x9008

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiacctsettings"

    const v5, 0x9016

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiattachments/#"

    const v5, 0x9009

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiattachment/#"

    const v5, 0x900a

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiattachmentbycid/#/*"

    const v5, 0x900b

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uisearch/#"

    const v5, 0x900c

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiaccountdata/#"

    const v5, 0x900d

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiloadmore/#"

    const v5, 0x900e

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uiconversation/#"

    const v5, 0x900f

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uirecentfolders/#"

    const v5, 0x9010

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uidefaultrecentfolders/#"

    const v5, 0x9011

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "pickTrashFolder/#"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "pickSentFolder/#"

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/email/provider/EmailProvider;->Sm:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string v4, "uipurgefolder/#"

    const v5, 0x9014

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6307
    const-string v0, "removal-action"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversation-list-swipe"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversation-list-sender-image"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "default-reply-all"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversation-overview-mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto-advance-mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "snap-header-mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirm-delete"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirm-archive"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirm-send"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6317
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 6319
    :cond_1
    return-void
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2424
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2425
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v1, "EmailProvider.openFile: %s"

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2428
    :cond_0
    const-string v0, "openFile"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 2429
    sparse-switch v0, :sswitch_data_0

    .line 2461
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "unable to open file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :sswitch_0
    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2435
    if-eqz v0, :cond_1

    .line 2439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2441
    :try_start_0
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Opening attachment %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2442
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    :goto_0
    return-object v0

    .line 2445
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2450
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2451
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "html"

    invoke-static {v2, v0, v1, v3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, Lcom/android/email/provider/H;->parseMode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 2455
    :sswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2456
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "txt"

    invoke-static {v2, v0, v1, v3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, Lcom/android/email/provider/H;->parseMode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 2429
    :sswitch_data_0
    .sparse-switch
        0x3003 -> :sswitch_0
        0xa002 -> :sswitch_1
        0xa003 -> :sswitch_2
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    .prologue
    .line 1271
    const/4 v11, 0x0

    .line 1274
    :try_start_0
    const-string v2, "query"

    invoke-static {p1, v2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1298
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1300
    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1301
    shr-int/lit8 v3, v4, 0xc

    .line 1302
    const-string v5, "limit"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1305
    sget-object v5, Lcom/android/email/provider/EmailProvider;->Sl:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1308
    sparse-switch v4, :sswitch_data_0

    .line 1520
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1522
    :catch_0
    move-exception v2

    move-object v3, v11

    .line 1523
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->ke()V

    .line 1524
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1530
    :catchall_0
    move-exception v2

    move-object v11, v3

    :goto_1
    if-nez v11, :cond_0

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    throw v2

    .line 1275
    :catch_1
    move-exception v2

    .line 1276
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1279
    if-eqz v3, :cond_1

    const-string v4, "/-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1281
    const-string v4, "query"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v3

    .line 1282
    sparse-switch v3, :sswitch_data_1

    .line 1296
    :cond_1
    throw v2

    .line 1293
    :sswitch_0
    new-instance v2, Lcom/android/mail/utils/G;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 1542
    :cond_2
    :goto_2
    return-object v2

    .line 1311
    :sswitch_1
    :try_start_3
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "runSearchQuery in search %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v13, v3}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "In uiSearch, inbox doesn\'t exist for account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    .line 1530
    :goto_3
    if-nez v2, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1311
    :cond_3
    :try_start_4
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No query parameter in search query"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1525
    :catch_2
    move-exception v2

    .line 1526
    :goto_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->ke()V

    .line 1527
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1528
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1530
    :catchall_1
    move-exception v2

    goto/16 :goto_1

    .line 1311
    :cond_4
    :try_start_6
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v2, 0x8

    invoke-static {v4, v12, v13, v2}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    if-nez v2, :cond_23

    new-instance v2, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    iput-wide v12, v2, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    const-string v6, "__search_mailbox__"

    iput-object v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    const-string v6, "__search_mailbox__"

    iput-object v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    const/4 v6, 0x0

    iput v6, v2, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    const/16 v6, 0x8

    iput v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/16 v6, 0x8

    iput v6, v2, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    invoke-virtual {v2, v4}, Lcom/android/emailcommon/provider/Mailbox;->ac(Landroid/content/Context;)Landroid/net/Uri;

    move-object v8, v2

    :goto_5
    iget-wide v6, v8, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    new-instance v2, Lcom/android/emailcommon/service/SearchParams;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-direct/range {v2 .. v7}, Lcom/android/emailcommon/service/SearchParams;-><init>(JLjava/lang/String;J)V

    iput-object v2, p0, Lcom/android/email/provider/EmailProvider;->Tf:Lcom/android/emailcommon/service/SearchParams;

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->Tf:Lcom/android/emailcommon/service/SearchParams;

    iget v2, v2, Lcom/android/emailcommon/service/SearchParams;->gY:I

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "deleting existing search results."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "displayName"

    iget-object v9, p0, Lcom/android/email/provider/EmailProvider;->Tf:Lcom/android/emailcommon/service/SearchParams;

    iget-object v9, v9, Lcom/android/emailcommon/service/SearchParams;->aaI:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "uiSyncStatus"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "totalCount"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v4, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v4, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "mailboxKey="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    move-object v2, p0

    move-wide v4, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JJ)V

    const v2, 0x9006

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v8, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/email/provider/EmailProvider;->a(ILandroid/net/Uri;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_3

    .line 1314
    :sswitch_2
    const-string v2, "suppress_combined"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1316
    if-eqz v2, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 1318
    :goto_6
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/android/email/provider/EmailProvider;->b([Ljava/lang/String;Z)Landroid/database/Cursor;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    .line 1530
    if-nez v2, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1316
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 1321
    :sswitch_3
    :try_start_7
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->f([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v2

    .line 1530
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1336
    :sswitch_4
    if-nez p3, :cond_7

    if-eqz p4, :cond_8

    .line 1337
    :cond_7
    :try_start_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "UI queries can\'t have selection/args"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1340
    :cond_8
    const-string v2, "seen"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1341
    if-eqz v2, :cond_9

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 1344
    :goto_7
    move-object/from16 v0, p2

    invoke-direct {p0, v4, p1, v0, v2}, Lcom/android/email/provider/EmailProvider;->a(ILandroid/net/Uri;[Ljava/lang/String;Z)Landroid/database/Cursor;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v2

    .line 1530
    if-nez v2, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1341
    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    .line 1347
    :sswitch_5
    :try_start_9
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/email/provider/EmailProvider;->SB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    sget-object v7, Lcom/android/email/provider/EmailProvider;->Tc:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v7

    if-eqz v7, :cond_b

    move-object v2, v3

    .line 1530
    :cond_a
    :goto_8
    if-nez v2, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1347
    :cond_b
    :try_start_a
    sget-object v7, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kh()Lcom/android/email/provider/ProjectionMap;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 AND parentKey < 0 ORDER BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p2

    invoke-direct {p0, v5, v8, v9, v0}, Lcom/android/email/provider/EmailProvider;->a(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v2, v4, v3

    new-instance v2, Landroid/database/MergeCursor;

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_8

    .line 1350
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->f(Landroid/net/Uri;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    if-eqz v2, :cond_c

    iget v3, v2, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->Tf:Lcom/android/emailcommon/service/SearchParams;

    iget v4, v3, Lcom/android/emailcommon/service/SearchParams;->gY:I

    add-int/lit8 v4, v4, 0xa

    iput v4, v3, Lcom/android/emailcommon/service/SearchParams;->gY:I

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    iget-wide v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JJ)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1351
    :cond_c
    :goto_9
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "Query returning null for uri: %s selection: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1350
    :cond_d
    const/16 v3, 0xa

    :try_start_b
    invoke-direct {p0, v2, v3}, Lcom/android/email/provider/EmailProvider;->b(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;

    goto :goto_9

    .line 1353
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->f(Landroid/net/Uri;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/email/provider/EmailProvider;->b(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1354
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "Query returning null for uri: %s selection: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1356
    :sswitch_8
    :try_start_c
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "SELECT mailboxKey, SUM(CASE flagRead WHEN 0 THEN 1 ELSE 0 END), SUM(CASE flagSeen WHEN 0 THEN 1 ELSE 0 END)\nFROM Message\nWHERE accountKey = ?\nGROUP BY mailboxKey"

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v2

    .line 1530
    if-nez v2, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1359
    :sswitch_9
    :try_start_d
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "select max(_id) from Message where mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v2

    .line 1530
    if-nez v2, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1362
    :sswitch_a
    :try_start_e
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "select count(*) from Message where mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v2

    .line 1530
    if-nez v2, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1365
    :sswitch_b
    :try_start_f
    const-string v3, "MessageMove"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v2

    .line 1530
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1368
    :sswitch_c
    :try_start_10
    const-string v3, "MessageStateChange"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v2

    .line 1530
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1379
    :sswitch_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    :try_start_11
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v2

    .line 1530
    :goto_a
    if-nez v2, :cond_e

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1539
    :cond_e
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1540
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 1383
    :sswitch_e
    :try_start_12
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->ki()Lcom/android/email/provider/ProjectionMap;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM QuickResponse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_a

    .line 1387
    :sswitch_f
    new-instance v3, Lcom/android/email/provider/C;

    invoke-direct {v3}, Lcom/android/email/provider/C;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/email/provider/C;->g([Ljava/lang/String;)Lcom/android/email/provider/C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/provider/C;->kr()Lcom/android/email/provider/ProjectionMap;

    move-result-object v3

    .line 1390
    const-string v5, "htmlContent"

    invoke-virtual {v3, v5}, Lcom/android/email/provider/ProjectionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "textContent"

    invoke-virtual {v3, v5}, Lcom/android/email/provider/ProjectionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1392
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Body content cannot be returned in the cursor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1396
    :cond_10
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1397
    const-string v6, "htmlContentUri"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "bodyHtml"

    const-string v9, "messageKey"

    invoke-static {v8, v9}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v6, "textContentUri"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "bodyText"

    const-string v9, "messageKey"

    invoke-static {v8, v9}, Lcom/android/email/provider/EmailProvider;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    move-object/from16 v0, p2

    invoke-static {v3, v0, v5}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1403
    const-string v3, " FROM Body"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    const v3, 0xa001

    if-ne v4, v3, :cond_14

    .line 1405
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1406
    const-string v4, " WHERE "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/email/provider/EmailProvider;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    :cond_11
    :goto_b
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1411
    const-string v3, " ORDER BY "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    :cond_12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1414
    const-string v3, " LIMIT "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    :cond_13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_a

    .line 1407
    :cond_14
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1408
    const-string v3, " WHERE "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1427
    :sswitch_10
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1428
    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/email/provider/EmailProvider;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_a

    .line 1432
    :sswitch_11
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1435
    move-object/from16 v0, p2

    array-length v4, v0

    new-array v4, v4, [Ljava/lang/String;

    .line 1436
    const/4 v6, 0x0

    :goto_c
    move-object/from16 v0, p2

    array-length v7, v0

    if-ge v6, v7, :cond_16

    .line 1437
    aget-object v7, p2, v6

    .line 1438
    const-string v8, "flags"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1439
    const-string v7, "flags & ~128 AS flags"

    aput-object v7, v4, v6

    .line 1436
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1443
    :cond_15
    aget-object v7, p2, v6

    aput-object v7, v4, v6

    goto :goto_d

    .line 1447
    :cond_16
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/email/provider/EmailProvider;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_a

    .line 1451
    :sswitch_12
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1452
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->ki()Lcom/android/email/provider/ProjectionMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM QuickResponse"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE _id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_a

    .line 1456
    :sswitch_13
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1457
    const-string v3, "Attachment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "messageKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/email/provider/EmailProvider;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_a

    .line 1463
    :sswitch_14
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1464
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->ki()Lcom/android/email/provider/ProjectionMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM QuickResponse"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE accountKey=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_a

    .line 1467
    :sswitch_15
    if-nez p2, :cond_17

    .line 1468
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p2, v0

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, p2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, p2, v3

    .line 1477
    :cond_17
    const-string v3, "Attachment"

    sget-object v4, Lcom/android/email/provider/EmailProvider;->Sr:[Ljava/lang/String;

    const-string v5, "cachedFile=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-object v3

    .line 1481
    :try_start_13
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_18

    .line 1482
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "multiple results querying CACHED_FILE_ACCESS %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1484
    :cond_18
    if-eqz v3, :cond_20

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1485
    new-instance v2, Lcom/android/mail/utils/G;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;)V

    .line 1486
    move-object/from16 v0, p2

    array-length v4, v0

    new-array v5, v4, [Ljava/lang/Object;

    .line 1487
    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v6, v0

    :goto_e
    if-ge v4, v6, :cond_1e

    .line 1488
    aget-object v7, p2, v4

    .line 1489
    const-string v8, "_id"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1490
    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v4

    .line 1487
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1493
    :cond_19
    const-string v8, "_data"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1494
    const-string v7, "contentUri"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_f

    .line 1514
    :catchall_2
    move-exception v2

    if-eqz v3, :cond_1a

    .line 1515
    :try_start_14
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v2
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1522
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 1497
    :cond_1b
    :try_start_15
    const-string v8, "_display_name"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1498
    const-string v7, "fileName"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    goto :goto_f

    .line 1501
    :cond_1c
    const-string v8, "_size"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1502
    const-string v7, "size"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    goto :goto_f

    .line 1505
    :cond_1d
    sget-object v8, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v9, "unexpected column %s requested for CACHED_FILE"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_f

    .line 1510
    :cond_1e
    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1514
    if-eqz v3, :cond_1f

    .line 1515
    :try_start_16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1530
    :cond_1f
    if-nez v3, :cond_2

    .line 1535
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v4, "Query returning null for uri: %s selection: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1514
    :cond_20
    if-eqz v3, :cond_21

    .line 1515
    :try_start_17
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1518
    :cond_21
    if-nez v3, :cond_22

    .line 1535
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v3, "Query returning null for uri: %s selection: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1525
    :catch_4
    move-exception v2

    move-object v11, v3

    goto/16 :goto_4

    :cond_23
    move-object v8, v2

    goto/16 :goto_5

    .line 1308
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_11
        0x1000 -> :sswitch_d
        0x1001 -> :sswitch_10
        0x1002 -> :sswitch_8
        0x1003 -> :sswitch_9
        0x1004 -> :sswitch_a
        0x2000 -> :sswitch_d
        0x2001 -> :sswitch_10
        0x2004 -> :sswitch_b
        0x2005 -> :sswitch_c
        0x3000 -> :sswitch_d
        0x3001 -> :sswitch_10
        0x3002 -> :sswitch_13
        0x3003 -> :sswitch_15
        0x4000 -> :sswitch_d
        0x4001 -> :sswitch_10
        0x5000 -> :sswitch_d
        0x5001 -> :sswitch_10
        0x6000 -> :sswitch_d
        0x6001 -> :sswitch_10
        0x7000 -> :sswitch_d
        0x7001 -> :sswitch_10
        0x8000 -> :sswitch_e
        0x8001 -> :sswitch_12
        0x8002 -> :sswitch_14
        0x9000 -> :sswitch_5
        0x9001 -> :sswitch_4
        0x9002 -> :sswitch_4
        0x9003 -> :sswitch_4
        0x9004 -> :sswitch_3
        0x9005 -> :sswitch_7
        0x9006 -> :sswitch_4
        0x9007 -> :sswitch_4
        0x9008 -> :sswitch_2
        0x9009 -> :sswitch_4
        0x900a -> :sswitch_4
        0x900b -> :sswitch_4
        0x900c -> :sswitch_1
        0x900e -> :sswitch_6
        0x900f -> :sswitch_4
        0x9010 -> :sswitch_4
        0x9012 -> :sswitch_4
        0x9013 -> :sswitch_4
        0x9015 -> :sswitch_4
        0xa000 -> :sswitch_f
        0xa001 -> :sswitch_f
        0xb000 -> :sswitch_d
        0xb001 -> :sswitch_10
    .end sparse-switch

    .line 1282
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x3001 -> :sswitch_0
        0x4001 -> :sswitch_0
        0x5001 -> :sswitch_0
        0x6001 -> :sswitch_0
        0x7001 -> :sswitch_0
        0xa001 -> :sswitch_0
        0xb001 -> :sswitch_0
    .end sparse-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 571
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->Sv:Landroid/database/sqlite/SQLiteDatabase;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 575
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->Sw:Landroid/database/sqlite/SQLiteDatabase;

    .line 577
    :cond_1
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21

    .prologue
    .line 1914
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1916
    sget-object v4, Lcom/android/email/provider/EmailProvider;->Ss:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1917
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->ke()V

    .line 1918
    const/4 v4, 0x0

    .line 2258
    :cond_0
    :goto_0
    return v4

    .line 1919
    :cond_1
    sget-object v4, Lcom/android/email/provider/EmailProvider;->St:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1920
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/provider/EmailProvider;->f(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v4

    goto :goto_0

    .line 1924
    :cond_2
    sget-object v16, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 1926
    const-string v4, "update"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v17

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 1929
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailProvider;->G(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1930
    shr-int/lit8 v5, v17, 0xc

    .line 1935
    const/16 v6, 0x1001

    move/from16 v0, v17

    if-eq v0, v6, :cond_3

    const/16 v6, 0x1000

    move/from16 v0, v17

    if-ne v0, v6, :cond_4

    .line 1936
    :cond_3
    const-string v6, "unreadCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1937
    const-string v6, "messageCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1940
    :cond_4
    sget-object v6, Lcom/android/email/provider/EmailProvider;->Sl:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1941
    const-string v13, "0"

    .line 1944
    sparse-switch v17, :sswitch_data_0

    .line 2246
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown URI "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    :catch_0
    move-exception v4

    .line 2249
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->ke()V

    .line 2250
    throw v4

    .line 1946
    :sswitch_0
    const/4 v4, 0x6

    const v5, 0x7f0902d4

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;II)I

    move-result v4

    goto/16 :goto_0

    .line 1948
    :sswitch_1
    const/4 v4, 0x5

    const v5, 0x7f0902d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;II)I

    move-result v4

    goto/16 :goto_0

    .line 1950
    :sswitch_2
    invoke-static/range {v18 .. v18}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v5

    const-string v4, "auto_advance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "auto_advance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/mail/i/g;->cu(I)V

    :cond_5
    const-string v4, "conversation_view_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "conversation_view_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/mail/i/g;->bg(Z)V

    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 1952
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v4

    goto/16 :goto_0

    .line 1954
    :sswitch_4
    invoke-direct/range {p0 .. p2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v4

    goto/16 :goto_0

    .line 1956
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/provider/EmailProvider;->Q(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v6

    array-length v7, v6

    if-gtz v7, :cond_8

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;Ljava/lang/String;[Landroid/net/Uri;)I

    move-result v4

    sget-object v5, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v6, "uiPopulateRecentFolders: %d folders changed"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1958
    :sswitch_6
    const/4 v4, 0x0

    const-string v5, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    if-nez v6, :cond_9

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-eqz v5, :cond_a

    const/4 v9, 0x4

    if-ne v5, v9, :cond_b

    :cond_a
    const-string v4, "uiState"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "flags"

    iget v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit8 v9, v9, -0x3

    iput v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, v8, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    const/4 v4, 0x1

    :cond_b
    const/4 v9, 0x2

    if-eq v5, v9, :cond_c

    const/4 v9, 0x4

    if-ne v5, v9, :cond_e

    :cond_c
    const-string v4, "uiState"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "destination"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "uiDestination"

    if-nez v4, :cond_10

    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "flags"

    iget v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    or-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "location"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "location"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    const-string v10, "attachment with blank location"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v9, v10, v11}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_d
    invoke-virtual {v6, v8, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    const/4 v4, 0x1

    :cond_e
    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/android/email/provider/EmailProvider;->SG:Landroid/net/Uri;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 1960
    :sswitch_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)I

    move-result v4

    goto/16 :goto_0

    .line 1962
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 1964
    const/4 v6, 0x1

    .line 1965
    const/4 v5, 0x0

    .line 1967
    :try_start_2
    const-string v8, "select count(*) from (select count(*) as dupes from Mailbox where accountKey=? group by serverId) where dupes > 1"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1968
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1969
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 1972
    :goto_3
    if-eqz v5, :cond_0

    .line 1973
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1972
    :catchall_0
    move-exception v4

    if-eqz v5, :cond_11

    .line 1973
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4

    .line 1979
    :sswitch_9
    sget-object v6, Lcom/android/emailcommon/provider/g;->YI:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    .line 1982
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1983
    sget-object v4, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v6, v7}, Lcom/android/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    .line 1991
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1988
    :cond_12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2003
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 2004
    const/16 v6, 0x2002

    move/from16 v0, v17

    if-ne v0, v6, :cond_21

    .line 2006
    const/4 v8, 0x0

    .line 2007
    const-wide/16 v10, 0x0

    .line 2008
    const-wide/16 v6, 0x0

    .line 2009
    const-string v9, "SELECT h.protocol, m.mailboxKey, a._id FROM Message AS m INNER JOIN Account AS a ON m.accountKey=a._id INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE m._id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v4, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v9

    .line 2010
    if-eqz v9, :cond_3e

    .line 2012
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2013
    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2014
    const v7, 0x7f0902e8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2016
    const/4 v6, 0x1

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2017
    const/4 v6, 0x2

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-wide v6

    .line 2020
    :cond_13
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-wide v14, v6

    move v6, v8

    .line 2024
    :goto_4
    if-eqz v6, :cond_20

    .line 2026
    const-string v6, "mailboxKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 2027
    if-eqz v6, :cond_14

    .line 2028
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v9, Lcom/android/email/provider/EmailProvider;->SJ:Ljava/lang/String;

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    const-string v20, "MessageMove"

    aput-object v20, v12, v19

    const/16 v19, 0x1

    aput-object v13, v12, v19

    const/16 v19, 0x2

    aput-object v13, v12, v19

    const/16 v19, 0x3

    aput-object v13, v12, v19

    const/16 v19, 0x4

    aput-object v13, v12, v19

    const/16 v19, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v12, v19

    const/16 v19, 0x6

    aput-object v13, v12, v19

    const/16 v19, 0x7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v19

    invoke-static {v8, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2030
    :cond_14
    const-string v6, "flagRead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 2031
    const-string v6, "flagFavorite"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 2032
    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v6

    .line 2034
    :goto_5
    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2036
    :goto_6
    if-nez v8, :cond_15

    if-eqz v9, :cond_16

    .line 2037
    :cond_15
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v9, Lcom/android/email/provider/EmailProvider;->SK:Ljava/lang/String;

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    const-string v20, "MessageStateChange"

    aput-object v20, v12, v19

    const/16 v19, 0x1

    aput-object v13, v12, v19

    const/16 v19, 0x2

    aput-object v13, v12, v19

    const/16 v19, 0x3

    aput-object v13, v12, v19

    const/16 v19, 0x4

    aput-object v13, v12, v19

    const/16 v19, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v19

    const/4 v7, 0x6

    aput-object v13, v12, v7

    const/4 v7, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v7

    invoke-static {v8, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2052
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->kl()Landroid/os/Handler;

    move-result-object v19

    .line 2053
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/email/provider/EmailProvider;->u(J)Landroid/accounts/Account;

    move-result-object v9

    .line 2055
    if-eqz v9, :cond_1f

    .line 2056
    new-instance v6, Lcom/android/email/provider/v;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/email/provider/v;-><init>(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;JB)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/provider/EmailProvider;->Sy:Ljava/util/Set;

    monitor-enter v7
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2059
    :try_start_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/provider/EmailProvider;->Sy:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 2060
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/provider/EmailProvider;->Sy:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2061
    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2063
    const-wide/16 v8, 0x7530

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2065
    :cond_17
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2082
    :cond_18
    :goto_7
    :try_start_9
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/android/email/provider/EmailProvider;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2084
    const/16 v5, 0x2001

    move/from16 v0, v17

    if-eq v0, v5, :cond_19

    const/16 v5, 0x2002

    move/from16 v0, v17

    if-ne v0, v5, :cond_23

    .line 2085
    :cond_19
    const-string v4, "is_uiprovider"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-direct/range {p0 .. p1}, Lcom/android/email/provider/EmailProvider;->e(Landroid/net/Uri;)V

    :cond_1a
    sget-object v4, Lcom/android/email/provider/EmailProvider;->SG:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    const-string v4, "flagRead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "mailboxKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_1b
    sget-object v4, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailProvider;->Td:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v5

    if-eqz v5, :cond_22

    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/email/provider/EmailProvider;->b(JJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_1c
    :try_start_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0

    move v4, v10

    .line 2254
    :goto_8
    if-lez v4, :cond_0

    .line 2255
    invoke-static/range {v17 .. v17}, Lcom/android/email/provider/EmailProvider;->bb(I)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v13}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2020
    :catchall_2
    move-exception v4

    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2032
    :cond_1d
    const/4 v6, -0x1

    move v7, v6

    goto/16 :goto_5

    .line 2034
    :cond_1e
    const/4 v6, -0x1

    goto/16 :goto_6

    .line 2065
    :catchall_3
    move-exception v4

    monitor-exit v7

    throw v4

    .line 2066
    :cond_1f
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v7, "Attempted to start delayed sync for invalid account %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 2077
    :cond_20
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert or ignore into Message_Updates select * from Message where _id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2079
    :cond_21
    const/16 v6, 0x2001

    move/from16 v0, v17

    if-ne v0, v6, :cond_18

    .line 2080
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delete from Message_Updates where _id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2085
    :catchall_4
    move-exception v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_22
    move v4, v10

    goto :goto_8

    .line 2086
    :cond_23
    const/16 v5, 0x3001

    move/from16 v0, v17

    if-ne v0, v5, :cond_27

    .line 2087
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 2088
    const-string v6, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 2089
    const-string v6, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2090
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/provider/EmailProvider;->SN:Lcom/android/email/provider/t;

    move-object/from16 v0, v18

    invoke-interface {v7, v0, v4, v5, v6}, Lcom/android/email/provider/t;->a(Landroid/content/Context;JI)V

    .line 2094
    :cond_24
    const-string v6, "uiState"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_25

    const-string v6, "uiDownloadedSize"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 2097
    :cond_25
    sget-object v6, Lcom/android/email/provider/EmailProvider;->SD:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2098
    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 2099
    if-eqz v4, :cond_26

    .line 2101
    sget-object v5, Lcom/android/email/provider/EmailProvider;->SE:Landroid/net/Uri;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/email/provider/EmailProvider;->a(Landroid/net/Uri;J)V

    :cond_26
    move v4, v10

    .line 2104
    goto/16 :goto_8

    :cond_27
    const/16 v5, 0x1001

    move/from16 v0, v17

    if-ne v0, v5, :cond_2a

    .line 2105
    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/emailcommon/provider/Mailbox;->q(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 2106
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v7}, Lcom/android/email/provider/EmailProvider;->c(Ljava/lang/String;J)V

    .line 2107
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "syncLookback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    const-string v6, "syncInterval"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    :cond_28
    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    :cond_29
    move v4, v10

    .line 2108
    goto/16 :goto_8

    :cond_2a
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_3d

    .line 2109
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v7, v1}, Lcom/android/email/provider/EmailProvider;->a(JLandroid/content/ContentValues;)V

    .line 2111
    sget-object v5, Lcom/android/email/provider/EmailProvider;->SC:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2112
    sget-object v5, Lcom/android/email/provider/EmailProvider;->SF:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/email/provider/EmailProvider;->b(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2113
    const-string v5, "syncLookback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, "syncInterval"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_2b
    move-object/from16 v0, v18

    invoke-static {v0, v4, v13}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    :cond_2c
    move v4, v10

    goto/16 :goto_8

    .line 2117
    :sswitch_b
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2118
    const-string v7, "htmlContent"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2119
    const-string v7, "textContent"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2121
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/android/email/provider/EmailProvider;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2124
    const-string v6, "htmlContent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    const-string v6, "textContent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2127
    :cond_2d
    const-string v6, "messageKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 2128
    const-string v4, "messageKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2139
    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v6, v7, v1}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLandroid/content/ContentValues;)V

    move v4, v5

    .line 2140
    goto/16 :goto_8

    .line 2130
    :cond_2e
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2131
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "select messageKey from Body where _id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 2137
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v6

    goto :goto_9

    .line 2144
    :sswitch_c
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2145
    const-string v7, "htmlContent"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2146
    const-string v7, "textContent"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-eqz v7, :cond_30

    .line 2150
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 2170
    :cond_2f
    :goto_a
    if-nez v12, :cond_33

    const-string v5, "messageKey=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2173
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string v5, "Body Update to non-existent row, morphing to insert"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2174
    new-instance v4, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2175
    const-string v5, "messageKey"

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    sget-object v5, Lcom/android/emailcommon/provider/e;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    move v4, v12

    .line 2177
    goto/16 :goto_8

    .line 2154
    :cond_30
    const/4 v12, 0x0

    .line 2156
    const/4 v6, 0x1

    :try_start_d
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-result-object v5

    .line 2158
    if-eqz v5, :cond_31

    .line 2159
    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-result v12

    .line 2164
    :goto_b
    if-eqz v5, :cond_2f

    .line 2165
    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 2161
    :cond_31
    const/4 v12, 0x0

    goto :goto_b

    .line 2164
    :catchall_5
    move-exception v4

    move-object v5, v12

    :goto_c
    if-eqz v5, :cond_32

    .line 2165
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_32
    throw v4

    .line 2179
    :cond_33
    const-string v5, "htmlContent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "textContent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 2182
    :cond_34
    const-string v5, "messageKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2183
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    const-string v6, "messageKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 2213
    :goto_d
    const/4 v5, 0x0

    :goto_e
    array-length v6, v4

    if-ge v5, v6, :cond_39

    .line 2214
    aget-wide v6, v4, v5

    .line 2215
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v6, v7, v1}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 2213
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 2184
    :cond_35
    const-string v5, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2185
    const-string v5, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2186
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "select messageKey from Body where _id="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 2192
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v8

    aput-wide v8, v4, v6

    goto :goto_d

    .line 2194
    :cond_36
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "messageKey"

    aput-object v7, v6, v5

    .line 2195
    const-string v5, "Body"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v7

    .line 2199
    :try_start_10
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 2200
    if-nez v4, :cond_37

    .line 2201
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t find body record"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 2209
    :catchall_6
    move-exception v4

    :try_start_11
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_0

    .line 2203
    :cond_37
    :try_start_12
    new-array v4, v4, [J

    .line 2204
    const/4 v5, 0x0

    .line 2205
    :goto_f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2206
    add-int/lit8 v6, v5, 0x1

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v4, v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move v5, v6

    goto :goto_f

    .line 2209
    :cond_38
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    :cond_39
    move v4, v12

    .line 2217
    goto/16 :goto_8

    .line 2222
    :sswitch_d
    invoke-static/range {p2 .. p2}, Lcom/android/email/provider/EmailProvider;->a(Landroid/content/ContentValues;)V

    .line 2230
    :sswitch_e
    const/16 v6, 0x3000

    move/from16 v0, v17

    if-ne v0, v6, :cond_3a

    .line 2231
    const-string v6, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const-string v6, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 2233
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    const-string v8, "attachment with blank location"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2236
    :cond_3a
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    move v4, v10

    .line 2237
    goto/16 :goto_8

    .line 2239
    :sswitch_f
    const-string v5, "MessageMove"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    move v4, v10

    .line 2240
    goto/16 :goto_8

    .line 2242
    :sswitch_10
    const-string v5, "MessageStateChange"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v10

    move v4, v10

    .line 2244
    goto/16 :goto_8

    .line 2164
    :catchall_7
    move-exception v4

    goto/16 :goto_c

    :cond_3b
    move v4, v12

    goto/16 :goto_8

    :cond_3c
    move v4, v5

    goto/16 :goto_8

    :cond_3d
    move v4, v10

    goto/16 :goto_8

    :cond_3e
    move-wide v14, v6

    move v6, v8

    goto/16 :goto_4

    :cond_3f
    move v4, v6

    goto/16 :goto_3

    .line 1944
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_a
        0x2 -> :sswitch_8
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1000 -> :sswitch_e
        0x1001 -> :sswitch_a
        0x2000 -> :sswitch_d
        0x2001 -> :sswitch_a
        0x2002 -> :sswitch_a
        0x2003 -> :sswitch_9
        0x2004 -> :sswitch_f
        0x2005 -> :sswitch_10
        0x3000 -> :sswitch_e
        0x3001 -> :sswitch_a
        0x4000 -> :sswitch_e
        0x4001 -> :sswitch_a
        0x5000 -> :sswitch_e
        0x5001 -> :sswitch_a
        0x7000 -> :sswitch_e
        0x7001 -> :sswitch_a
        0x8001 -> :sswitch_a
        0x9003 -> :sswitch_7
        0x9006 -> :sswitch_3
        0x900a -> :sswitch_6
        0x9010 -> :sswitch_4
        0x9011 -> :sswitch_5
        0x9016 -> :sswitch_2
        0xa000 -> :sswitch_c
        0xa001 -> :sswitch_b
        0xb000 -> :sswitch_e
        0xb001 -> :sswitch_a
    .end sparse-switch
.end method
