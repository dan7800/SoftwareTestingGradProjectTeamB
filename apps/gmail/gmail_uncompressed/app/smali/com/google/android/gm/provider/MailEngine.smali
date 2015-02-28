.class public final Lcom/google/android/gm/provider/MailEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/j;


# static fields
.field static final TAG:Ljava/lang/String;

.field private static aQy:Z

.field private static aQz:Lcom/android/mail/utils/ab;

.field private static biT:Landroid/os/HandlerThread;

.field static final bia:[Ljava/lang/String;

.field static final bib:[Ljava/lang/String;

.field static final bic:[Ljava/lang/String;

.field private static final bid:[Ljava/lang/String;

.field private static final bie:[Ljava/lang/String;

.field private static final bif:[Ljava/lang/String;

.field private static final big:[Ljava/lang/String;

.field private static final bih:[Ljava/lang/String;

.field private static bii:Ljava/lang/String;

.field private static final bij:[Ljava/lang/String;

.field private static final bik:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bil:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final bim:Ljava/util/Random;

.field private static bin:Lcom/google/android/gm/provider/aJ;

.field private static bio:Lcom/google/android/gm/provider/aU;

.field private static bja:J

.field private static bjb:Ljava/lang/Object;

.field static final bjd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final bje:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/aK;",
            ">;"
        }
    .end annotation
.end field

.field private static bjg:Landroid/os/Handler;

.field private static final bji:[[Ljava/lang/String;

.field private static final bjj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final bjk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static bjt:J

.field static bju:Lcom/google/android/gm/provider/aH;


# instance fields
.field private Tw:Landroid/accounts/Account;

.field private volatile aAC:I

.field final aBL:Ljava/lang/Object;

.field bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field private bcK:Lcom/google/android/gm/provider/bG;

.field private final bdb:Lcom/google/android/gm/provider/g;

.field bdv:Lcom/google/android/gm/provider/ae;

.field private bdw:Lcom/google/android/gm/provider/D;

.field bhA:Lcom/google/android/gm/provider/Operations;

.field private biA:Lcom/google/android/gm/provider/aJ;

.field private final biB:Lcom/google/android/gm/provider/aU;

.field private final biC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private biD:Lcom/google/android/common/http/GoogleHttpClient;

.field private final biE:Lorg/apache/http/client/CookieStore;

.field private final biF:Lcom/google/android/gm/provider/P;

.field private volatile biG:Z

.field private biH:Z

.field private biI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Handler;",
            "Lcom/google/android/gm/provider/aL;",
            ">;>;"
        }
    .end annotation
.end field

.field private final biJ:Ljava/lang/Object;

.field private volatile biK:Z

.field private biL:I

.field private biM:J

.field private final biN:Ljava/lang/Object;

.field private biO:J

.field private biP:Z

.field private final biQ:Ljava/lang/Object;

.field private biR:Ljava/lang/Thread;

.field private final biS:Ljava/util/Observer;

.field private final biU:Lcom/google/android/gm/provider/aI;

.field private biV:I

.field private final biW:Ljava/lang/Runnable;

.field private final biX:I

.field private final biY:I

.field private final biZ:I

.field private final bip:Ljava/lang/Object;

.field private volatile biq:Z

.field private bir:Ljava/lang/Thread;

.field private bis:Z

.field bit:Lcom/google/android/gm/provider/MailSync;

.field biu:Landroid/database/sqlite/SQLiteDatabase;

.field private final biv:Lcom/google/android/gm/provider/bH;

.field final biw:Lcom/google/android/gm/provider/bB;

.field final bix:Ljava/lang/Object;

.field private final biy:Ljava/util/BitSet;

.field biz:Lcom/google/android/gm/provider/ba;

.field private volatile bjc:Z

.field bjf:Landroid/os/PowerManager$WakeLock;

.field private final bjh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bjl:Landroid/os/Handler;

.field private final bjm:Landroid/app/PendingIntent;

.field private bjn:Z

.field private volatile bjo:Z

.field private final bjp:Ljava/lang/Object;

.field private bjq:Ljava/lang/String;

.field private bjr:Ljava/lang/String;

.field private bjs:Lcom/google/android/gm/provider/aG;

.field private final bjv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/aP;",
            ">;"
        }
    .end annotation
.end field

.field private final bjw:Ljava/lang/Object;

.field private bjx:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    .line 293
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "conversation_fts_table"

    aput-object v1, v0, v4

    const-string v1, "message_fts_table"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bia:[Ljava/lang/String;

    .line 298
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "toAddresses"

    aput-object v1, v0, v4

    const-string v1, "ccAddresses"

    aput-object v1, v0, v5

    const-string v1, "bccAddresses"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bib:[Ljava/lang/String;

    .line 303
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "fromAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bic:[Ljava/lang/String;

    .line 351
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "messageId"

    aput-object v1, v0, v4

    const-string v1, "conversation"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bid:[Ljava/lang/String;

    .line 355
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bie:[Ljava/lang/String;

    .line 356
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "synced"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bif:[Ljava/lang/String;

    .line 358
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->big:[Ljava/lang/String;

    .line 361
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bih:[Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bii:Ljava/lang/String;

    .line 408
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^^cached"

    aput-object v1, v0, v4

    const-string v1, "^^out"

    aput-object v1, v0, v5

    const-string v1, "^imi"

    aput-object v1, v0, v6

    const-string v1, "^imn"

    aput-object v1, v0, v7

    const-string v1, "^im"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "^io_ns"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^^important"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^^unimportant"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "^^retry"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "^^failed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bij:[Ljava/lang/String;

    .line 437
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gmail_message_ad_forward"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gmail_message_ad_save_to_inbox"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gmail_message_ad_dismiss"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gmail_message_ad_dismiss_body"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bik:Ljava/util/Map;

    .line 450
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->k([Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bil:Ljava/util/Set;

    .line 462
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bim:Ljava/util/Random;

    .line 666
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gm/provider/MailEngine;->bja:J

    .line 672
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bjb:Ljava/lang/Object;

    .line 683
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    .line 699
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    .line 703
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bjg:Landroid/os/Handler;

    .line 720
    const/16 v0, 0x15

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "clientCreated"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "synced"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "queryId"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "messages._id"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "conversation"

    aput-object v2, v1, v4

    const-string v2, "messages.conversation"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "subject"

    aput-object v3, v2, v4

    const-string v3, "messages.subject"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "snippet"

    aput-object v3, v2, v4

    const-string v3, "messages.snippet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fromAddress"

    aput-object v3, v2, v4

    const-string v3, "messages.fromAddress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "toAddresses"

    aput-object v3, v2, v4

    const-string v3, "messages.toAddresses"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ccAddresses"

    aput-object v3, v2, v4

    const-string v3, "messages.ccAddresses"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bccAddresses"

    aput-object v3, v2, v4

    const-string v3, "messages.bccAddresses"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "body"

    aput-object v3, v2, v4

    const-string v3, "CASE WHEN bodyCompressed IS NULL THEN \'0\' || messages.body ELSE \'1\' || bodyCompressed END"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "labelIds"

    aput-object v3, v2, v4

    const-string v3, "group_concat(labels_id, \' \')"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "labelCount"

    aput-object v3, v2, v4

    const-string v3, "COUNT(*)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "messageLabels"

    aput-object v3, v2, v4

    const-string v3, "group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || (CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    WHEN \'^sq_ig_i_personal\' THEN ?    WHEN \'^sq_ig_i_social\' THEN ?    WHEN \'^sq_ig_i_promo\' THEN ?    WHEN \'^sq_ig_i_notification\' THEN ?    WHEN \'^sq_ig_i_group\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden), \'^**^\')"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isStarred"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^t\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isDraft"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^r\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isInOutbox"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^^out\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isInRetry"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^^retry\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isInFailed"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^^failed\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isUnread"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^u\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bji:[[Ljava/lang/String;

    .line 777
    new-instance v0, Lcom/google/android/gm/provider/bu;

    invoke-direct {v0}, Lcom/google/android/gm/provider/bu;-><init>()V

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->aCy:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bu;->D([Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bji:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bu;->a([[Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bu;->HJ()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bjj:Ljava/util/Map;

    .line 782
    new-instance v0, Lcom/google/android/gm/provider/bu;

    invoke-direct {v0}, Lcom/google/android/gm/provider/bu;-><init>()V

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bu;->D([Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    WHEN \'^sq_ig_i_personal\' THEN ?    WHEN \'^sq_ig_i_social\' THEN ?    WHEN \'^sq_ig_i_promo\' THEN ?    WHEN \'^sq_ig_i_notification\' THEN ?    WHEN \'^sq_ig_i_group\' THEN ?    ELSE labels.name END) "

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/bu;->ac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    move-result-object v0

    const-string v1, "sortOrder"

    const-string v2, "CASE labels.systemLabel WHEN 0 THEN labels.canonicalName ELSE labels.systemLabelOrder END"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/bu;->ac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bu;->HJ()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bjk:Ljava/util/Map;

    .line 791
    sput-boolean v4, Lcom/google/android/gm/provider/MailEngine;->aQy:Z

    .line 799
    new-instance v0, Lcom/google/android/gm/provider/av;

    invoke-direct {v0}, Lcom/google/android/gm/provider/av;-><init>()V

    .line 814
    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->aQz:Lcom/android/mail/utils/ab;

    invoke-static {v0}, Lcom/android/mail/utils/aa;->a(Lcom/android/mail/utils/ab;)V

    .line 7122
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/google/android/gm/provider/MailEngine;->bjt:J

    .line 7123
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bju:Lcom/google/android/gm/provider/aH;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bip:Ljava/lang/Object;

    .line 468
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine;->biq:Z

    .line 469
    iput-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->bir:Ljava/lang/Thread;

    .line 475
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine;->bis:Z

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->aBL:Ljava/lang/Object;

    .line 492
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    .line 493
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biy:Ljava/util/BitSet;

    .line 494
    iput v7, p0, Lcom/google/android/gm/provider/MailEngine;->aAC:I

    .line 505
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biC:Ljava/util/Map;

    .line 522
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine;->biH:Z

    .line 532
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biJ:Ljava/lang/Object;

    .line 543
    iput v7, p0, Lcom/google/android/gm/provider/MailEngine;->biL:I

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->biM:J

    .line 553
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biN:Ljava/lang/Object;

    .line 558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->biO:J

    .line 563
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine;->biP:Z

    .line 568
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biQ:Ljava/lang/Object;

    .line 570
    iput-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->biR:Ljava/lang/Thread;

    .line 572
    new-instance v0, Lcom/google/android/gm/provider/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/ak;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biS:Ljava/util/Observer;

    .line 593
    iput v7, p0, Lcom/google/android/gm/provider/MailEngine;->biV:I

    .line 600
    new-instance v0, Lcom/google/android/gm/provider/au;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/au;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biW:Ljava/lang/Runnable;

    .line 677
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine;->bjc:Z

    .line 701
    iput-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->bjf:Landroid/os/PowerManager$WakeLock;

    .line 711
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjh:Ljava/util/Map;

    .line 1567
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine;->bjn:Z

    .line 1677
    iput-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    .line 2693
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine;->bjo:Z

    .line 2783
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjp:Ljava/lang/Object;

    .line 2784
    iput-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->bjq:Ljava/lang/String;

    .line 2785
    iput-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->bjr:Ljava/lang/String;

    .line 2786
    iput-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->bjs:Lcom/google/android/gm/provider/aG;

    .line 7933
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjv:Ljava/util/Map;

    .line 7934
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjw:Ljava/lang/Object;

    .line 1244
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Background tasks"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1246
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1248
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 1250
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bjl:Landroid/os/Handler;

    .line 1254
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    .line 1255
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    .line 1256
    new-instance v0, Lcom/google/android/gm/provider/bG;

    new-instance v1, Lcom/google/android/gm/provider/a;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gm/provider/a;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    invoke-direct {v0, p2, v1}, Lcom/google/android/gm/provider/bG;-><init>(Ljava/lang/String;Lcom/google/android/gm/provider/a;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcK:Lcom/google/android/gm/provider/bG;

    .line 1257
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gm/provider/MailEngine;->eR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    new-instance v1, Lcom/google/android/gm/provider/S;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/S;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gm/provider/x;->DU()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-eq v1, v5, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to upgrade internal db from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1288
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1289
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biD:Lcom/google/android/common/http/GoogleHttpClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biD:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v1}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 1290
    :cond_3
    throw v0

    .line 1257
    :cond_4
    if-eq v0, v5, :cond_0

    const/4 v2, 0x2

    :try_start_3
    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/x;->dJ(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 1258
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gm/provider/MailEngine;->eQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    new-instance v2, Lcom/google/android/gm/provider/aO;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gm/provider/aO;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gm/provider/aO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 1259
    new-instance v0, Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/bB;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    .line 1260
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->beginTransactionNonExclusive()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1262
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->nD()V

    .line 1263
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1265
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 1268
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/aO;->a(Lcom/google/android/gm/provider/aO;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1270
    new-instance v0, Lcom/google/android/gm/provider/P;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gm/provider/P;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    .line 1272
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biE:Lorg/apache/http/client/CookieStore;

    .line 1274
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bin:Lcom/google/android/gm/provider/aJ;

    if-nez v0, :cond_6

    .line 1275
    new-instance v0, Lcom/google/android/gm/provider/aT;

    invoke-direct {v0}, Lcom/google/android/gm/provider/aT;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biA:Lcom/google/android/gm/provider/aJ;

    .line 1280
    :goto_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bio:Lcom/google/android/gm/provider/aU;

    if-nez v0, :cond_7

    .line 1282
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/persistence/b;->bP(Landroid/content/Context;)Lcom/google/android/gm/provider/aU;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biB:Lcom/google/android/gm/provider/aU;
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1293
    :goto_2
    new-instance v0, Lcom/google/android/gm/provider/aB;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/aB;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->g(Ljava/lang/Runnable;)V

    .line 1294
    new-instance v0, Lcom/google/android/gm/provider/al;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/al;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->g(Ljava/lang/Runnable;)V

    .line 1298
    new-instance v0, Lcom/google/android/gm/provider/g;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->bcK:Lcom/google/android/gm/provider/bG;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/bG;Lcom/google/android/gm/provider/j;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdb:Lcom/google/android/gm/provider/g;

    .line 1301
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/provider/f;->bW(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1303
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/gm/provider/MailIndexerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1304
    const-string v1, "com.google.android.gm.intent.provider.INDEX_MESSAGE_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "indexer"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1307
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1308
    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v0

    .line 1321
    :goto_3
    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjm:Landroid/app/PendingIntent;

    .line 1322
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1323
    new-instance v1, Lcom/google/android/gm/provider/aI;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gm/provider/aI;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biU:Lcom/google/android/gm/provider/aI;

    .line 1325
    new-instance v1, Lcom/google/android/gm/provider/bH;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-direct {v1, v2}, Lcom/google/android/gm/provider/bH;-><init>(Lcom/google/android/gm/provider/ae;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biv:Lcom/google/android/gm/provider/bH;

    .line 1326
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biv:Lcom/google/android/gm/provider/bH;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bH;->HU()V

    .line 1327
    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/MailEngine;->biX:I

    .line 1328
    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/google/android/gm/provider/MailEngine;->biX:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine;->biY:I

    .line 1331
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_min_interval_between_latency_reports_seconds"

    const/16 v2, 0x2a30

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine;->biZ:I

    .line 1335
    return-void

    .line 1265
    :catchall_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0

    .line 1277
    :cond_6
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bin:Lcom/google/android/gm/provider/aJ;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biA:Lcom/google/android/gm/provider/aJ;

    goto/16 :goto_1

    .line 1284
    :cond_7
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bio:Lcom/google/android/gm/provider/aU;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biB:Lcom/google/android/gm/provider/aU;
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 1313
    :catch_1
    move-exception v0

    .line 1318
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "UOE while creating pending intent.  Probably running tests"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_8
    move-object v0, v6

    goto :goto_3
.end method

.method static synthetic A(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biR:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic B(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biN:Ljava/lang/Object;

    return-object v0
.end method

.method private B(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3998
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3999
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/gm/provider/GmailProvider;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 4002
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gp()V

    .line 4003
    return-void
.end method

.method static synthetic C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biQ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic D(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    return-void
.end method

.method static synthetic E(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjc:Z

    return v0
.end method

.method static synthetic F(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjq:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized FO()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 1045
    const-class v1, Lcom/google/android/gm/provider/MailEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bjg:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MailEngine creation"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1051
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/android/gm/provider/MailEngine;->bjg:Landroid/os/Handler;

    .line 1053
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bjg:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static FS()V
    .locals 7

    .prologue
    .line 1158
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    monitor-enter v1

    .line 1159
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aK;

    .line 1160
    iget-object v3, v0, Lcom/google/android/gm/provider/aK;->bko:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1161
    :try_start_1
    iget-object v4, v0, Lcom/google/android/gm/provider/aK;->bdz:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v4, :cond_4

    .line 1162
    iget-object v4, v0, Lcom/google/android/gm/provider/aK;->bdz:Lcom/google/android/gm/provider/MailEngine;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/google/android/gm/provider/MailEngine;->bjc:Z

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    iget-object v5, v4, Lcom/google/android/gm/provider/MailEngine;->bip:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->bir:Ljava/lang/Thread;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    invoke-direct {v4, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/Thread;)V

    iget-object v5, v4, Lcom/google/android/gm/provider/MailEngine;->biQ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->biR:Ljava/lang/Thread;

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-direct {v4, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/Thread;)V

    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-direct {v4, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/Thread;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1164
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1167
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1162
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v5

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_0
    iget-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->bjl:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "blockUntilBackgroundTasksComplete: queueing"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v5, v4, Lcom/google/android/gm/provider/MailEngine;->bjl:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gm/provider/as;

    invoke-direct {v6, v4, v0}, Lcom/google/android/gm/provider/as;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bju:Lcom/google/android/gm/provider/aH;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bju:Lcom/google/android/gm/provider/aH;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/android/gm/provider/aH;->cancel(Z)Z

    :cond_1
    iget-object v5, v4, Lcom/google/android/gm/provider/MailEngine;->aBL:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    iget-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, v4, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1164
    :cond_4
    :try_start_b
    monitor-exit v3

    goto/16 :goto_0

    .line 1162
    :catchall_4
    move-exception v0

    monitor-exit v5

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1165
    :cond_5
    :try_start_c
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1167
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private FU()V
    .locals 3

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjn:Z

    if-eqz v0, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjn:Z

    .line 1574
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bij:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1575
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bij:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1576
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1578
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/ae;->eG(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    .line 1574
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1585
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gb()V

    .line 1587
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->GA()V

    goto :goto_0
.end method

.method private FV()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1642
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1643
    const-string v1, "custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1644
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private FW()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 1654
    const-string v0, "name = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gm/c/b;->bqQ:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized FY()Lcom/google/android/common/http/GoogleHttpClient;
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1684
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bii:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1688
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1690
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1692
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1701
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android-GmailProvider"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1704
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1707
    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    iget v0, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v0, :cond_3

    .line 1709
    const-string v0, "sw"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    :goto_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-static {}, Lcom/android/mail/utils/ag;->Bf()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_4

    .line 1716
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dpi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    :goto_2
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bii:Ljava/lang/String;

    .line 1727
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "device_info"

    iget v2, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const-string v4, "swdp"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-static {}, Lcom/android/mail/utils/ag;->Bf()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    move v2, v0

    .line 1730
    :goto_3
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "device_info"

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const-string v4, "dpi"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biD:Lcom/google/android/common/http/GoogleHttpClient;

    if-nez v0, :cond_2

    .line 1734
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bii:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biD:Lcom/google/android/common/http/GoogleHttpClient;

    .line 1736
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_timeout_ms"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1740
    if-eq v0, v6, :cond_1

    .line 1741
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Changing network timeout (because of gservices) to %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1742
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biD:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v1}, Lcom/google/android/common/http/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 1743
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1744
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1745
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biD:Lcom/google/android/common/http/GoogleHttpClient;

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->dn(Ljava/lang/String;)V

    .line 1750
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biD:Lcom/google/android/common/http/GoogleHttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1694
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Error finding package %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1700
    goto/16 :goto_0

    .line 1696
    :catch_1
    move-exception v0

    .line 1699
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Error getting the PackageManager "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto/16 :goto_0

    .line 1711
    :cond_3
    const-string v0, "?swdp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1718
    :cond_4
    :try_start_4
    const-string v0, " ?density"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_5
    move v2, v6

    .line 1729
    goto/16 :goto_3
.end method

.method static synthetic G(Lcom/google/android/gm/provider/MailEngine;)J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->biO:J

    return-wide v0
.end method

.method static synthetic GC()Z
    .locals 1

    .prologue
    .line 160
    sget-boolean v0, Lcom/google/android/gm/provider/MailEngine;->aQy:Z

    return v0
.end method

.method static synthetic GD()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->big:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic GE()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->Gy()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private Gb()V
    .locals 3

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->Hv()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->A([Ljava/lang/String;)[Lcom/google/android/gm/provider/af;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->Hw()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->A([Ljava/lang/String;)[Lcom/google/android/gm/provider/af;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/ae;->a([Lcom/google/android/gm/provider/af;[Lcom/google/android/gm/provider/af;)V

    .line 1901
    :cond_0
    return-void
.end method

.method private Gf()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 1989
    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->Hh()Lcom/google/android/gm/provider/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1990
    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->Hh()Lcom/google/android/gm/provider/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/f;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Ge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bjm:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gmail_full_text_search_indexer_delay_msec"

    const v4, 0x493e0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v4, "Scheduling index for %s ms from now"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v2, v2

    add-long/2addr v2, v4

    const-wide/32 v4, 0xdbba0

    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->bjm:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private Gh()V
    .locals 5

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2276
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->dX(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2278
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/GmailProvider;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 2279
    return-void
.end method

.method private Gm()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2352
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.google"

    sget-object v4, Lcom/google/android/gm/a;->aWC:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2357
    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 2358
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    invoke-virtual {v6, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 2363
    :goto_1
    return v0

    .line 2357
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2362
    :cond_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Account doesn\'t support mail %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2363
    goto :goto_1

    .line 2364
    :catch_0
    move-exception v0

    .line 2365
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static Gn()Z
    .locals 4

    .prologue
    .line 2508
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bim:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc8

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Go()Z
    .locals 4

    .prologue
    .line 2789
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 2790
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->FO()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/provider/an;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gm/provider/an;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/os/Handler;Lcom/google/android/gm/provider/aL;)V

    .line 2796
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    return v0
.end method

.method private Gp()V
    .locals 3

    .prologue
    .line 3991
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3992
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->es(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3993
    return-void
.end method

.method private Gs()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4669
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->Hx()J

    move-result-wide v4

    .line 4670
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Starting purging messages. Oldest message id in duration: %d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v2, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4673
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 4674
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SELECT _id FROM conversations\nWHERE\n  (syncRationale = \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'\nOR (syncRationale = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'  AND syncRationaleMessageId < ?)) AND queryId = 0 LIMIT 100"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4682
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move v0, v3

    .line 4684
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4685
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4687
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gm/provider/Operations;->aP(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4688
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, " Conversation ID %d has unacked send or save operations."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v2, v5, v8}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v2, v3

    .line 4693
    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    .line 4694
    goto :goto_0

    .line 4691
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gm/provider/ae;->ap(J)Z

    move-result v2

    goto :goto_1

    .line 4698
    :cond_2
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Finished purging messages "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4701
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private Gw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8133
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8137
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "calculateUnknownSyncRationalesAndPurgeInBackground: exiting (labelMap not synced"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8177
    :goto_0
    return-void

    .line 8145
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "calculateUnknownSyncRationalesAndPurgeInBackground: queueing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8146
    new-instance v0, Lcom/google/android/gm/provider/at;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/at;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->g(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static declared-synchronized Gy()Landroid/os/Looper;
    .locals 4

    .prologue
    .line 8356
    const-class v1, Lcom/google/android/gm/provider/MailEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->biT:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 8357
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Dataset changed notifier"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8359
    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->biT:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8361
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->biT:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 8356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic H(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 3

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Cancelling background sync for live request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biK:Z

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->FR()V

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biK:Z

    return v0
.end method

.method static synthetic J(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjw:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjv:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic L(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gs()Z

    move-result v0

    return v0
.end method

.method static synthetic M(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gf()V

    return-void
.end method

.method static V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 932
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "getOrMakeMailEngine for %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 933
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v0

    .line 943
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 945
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 946
    :try_start_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aK;

    .line 947
    if-nez v0, :cond_4

    .line 948
    new-instance v0, Lcom/google/android/gm/provider/aK;

    invoke-direct {v0}, Lcom/google/android/gm/provider/aK;-><init>()V

    .line 949
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    move-object v2, v0

    .line 954
    :goto_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    :try_start_2
    iget-object v4, v2, Lcom/google/android/gm/provider/aK;->bko:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 964
    :try_start_3
    iget-object v0, v2, Lcom/google/android/gm/provider/aK;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 965
    if-nez v0, :cond_1

    .line 966
    new-instance v0, Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {v0, p0, p1, v3}, Lcom/google/android/gm/provider/MailEngine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iput-object v0, v2, Lcom/google/android/gm/provider/aK;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 969
    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->Ht()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 970
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FR()V

    .line 973
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 977
    if-eqz v1, :cond_2

    .line 979
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V

    :cond_2
    return-object v0

    .line 955
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 977
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 979
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V

    :cond_3
    throw v0

    .line 974
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method public static W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2

    .prologue
    .line 994
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 995
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOrMakeMailEngineSync should not be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    return-object v0
.end method

.method private X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2069
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2070
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "engine_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2073
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;J)J
    .locals 1

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/google/android/gm/provider/MailEngine;->biO:J

    return-wide p1
.end method

.method static a(Lcom/google/android/gm/provider/uiprovider/GmailAttachment;)Landroid/os/ParcelFileDescriptor;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4436
    const/4 v0, 0x0

    .line 4438
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4439
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    .line 4445
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 4449
    invoke-static {v0}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4452
    :try_start_0
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v4, "Opening attachment %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4453
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4456
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 4440
    :cond_1
    iget v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4442
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4456
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4460
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t find local attachment"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4461
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Missing local attachment."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aG;)Lcom/google/android/gm/provider/aG;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->bjs:Lcom/google/android/gm/provider/aG;

    return-object p1
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;)Lcom/google/android/gm/provider/aW;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2544
    new-instance v0, Lcom/google/android/gm/provider/aW;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/provider/aW;-><init>(Lcom/google/android/gm/provider/MailEngine;B)V

    .line 2545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2546
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v0, Lcom/google/android/gm/provider/aW;->bkE:J

    .line 2549
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2, v1, p2, p3}, Lcom/google/android/gm/provider/MailSync;->a(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/br;Lcom/google/android/gm/provider/aX;)I

    move-result v2

    iput v2, v0, Lcom/google/android/gm/provider/aW;->bkD:I

    .line 2564
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Gr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2565
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gm/provider/aW;->bkC:Z

    .line 2570
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    const-string v3, "moreForwardSyncNeeded"

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/MailSync;->fc(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2571
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 2574
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2576
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->b(Lorg/apache/http/HttpResponse;)V

    .line 2578
    return-object v0

    .line 2576
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->b(Lorg/apache/http/HttpResponse;)V

    throw v0
.end method

.method private a(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/bm;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3133
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3134
    const/4 v0, 0x0

    .line 3202
    :goto_0
    return-object v0

    .line 3137
    :cond_0
    new-instance v3, Lcom/google/android/gm/provider/bm;

    invoke-direct {v3}, Lcom/google/android/gm/provider/bm;-><init>()V

    .line 3138
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3139
    const-string v0, "messageId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3140
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blK:Ljava/lang/String;

    .line 3141
    iput-wide v4, v3, Lcom/google/android/gm/provider/bm;->blL:J

    .line 3142
    iput-wide v6, v3, Lcom/google/android/gm/provider/bm;->bkt:J

    .line 3143
    const-string v0, "conversation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/bm;->bku:J

    .line 3145
    const-string v0, "refMessageId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/bm;->blM:J

    .line 3147
    const-string v0, "refAdEventId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->bmg:Ljava/lang/String;

    .line 3149
    const-string v0, "fromAddress"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blC:Ljava/lang/String;

    .line 3151
    const-string v0, "customFromAddress"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->bma:Ljava/lang/String;

    .line 3153
    const-string v0, "toAddresses"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdF:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blN:Ljava/util/List;

    .line 3156
    const-string v0, "ccAddresses"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdF:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blO:Ljava/util/List;

    .line 3159
    const-string v0, "bccAddresses"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdF:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blP:Ljava/util/List;

    .line 3162
    const-string v0, "replyToAddresses"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdF:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blQ:Ljava/util/List;

    .line 3165
    const-string v0, "dateSentMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/bm;->blR:J

    .line 3167
    const-string v0, "dateReceivedMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/bm;->aBf:J

    .line 3169
    const-string v0, "subject"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->ayV:Ljava/lang/String;

    .line 3171
    const-string v0, "snippet"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->abh:Ljava/lang/String;

    .line 3173
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->DY()Landroid/text/TextUtils$StringSplitter;

    move-result-object v0

    .line 3174
    const-string v4, "labelIds"

    invoke-static {p1, v4}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3175
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->a(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    .line 3176
    const-string v0, "listInfo"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blS:Ljava/lang/String;

    .line 3178
    const-string v0, "personalLevel"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->dN(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->blF:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 3181
    const-string v0, "forward"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/google/android/gm/provider/bm;->blV:Z

    .line 3183
    const-string v0, "includeQuotedText"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/google/android/gm/provider/bm;->blW:Z

    .line 3185
    const-string v0, "quoteStartPos"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/bm;->blX:J

    .line 3187
    const-string v0, "clientCreated"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_4

    :goto_3
    iput-boolean v1, v3, Lcom/google/android/gm/provider/bm;->blY:Z

    .line 3189
    const-string v0, "joinedAttachmentInfos"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3191
    iget-object v1, v3, Lcom/google/android/gm/provider/bm;->blT:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3194
    if-eqz p2, :cond_1

    .line 3195
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    .line 3198
    :cond_1
    const-string v0, "permalink"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/bm;->aBy:Ljava/lang/String;

    .line 3200
    const-string v0, "clipped"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/google/android/gm/provider/bm;->bmh:I

    move-object v0, v3

    .line 3202
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 3181
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3183
    goto :goto_2

    :cond_4
    move v1, v2

    .line 3187
    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Landroid/database/Cursor;)Lcom/google/android/gm/provider/bm;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/bm;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 2053
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->eS(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2055
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object p2

    .line 2056
    :cond_0
    :try_start_1
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 2058
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->biR:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 1

    .prologue
    .line 5141
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 5143
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/P;->ak(J)V

    .line 5144
    return-void
.end method

.method private a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZZ)V
    .locals 7

    .prologue
    .line 5148
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 5151
    if-nez p6, :cond_0

    .line 5152
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/P;->ak(J)V

    .line 5154
    :cond_0
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 9

    .prologue
    .line 5206
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjh:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5208
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 5263
    :goto_0
    return-void

    .line 5214
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjh:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5216
    new-instance v0, Lcom/google/android/gm/provider/aq;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/provider/aq;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;J)V

    .line 5252
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 5253
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5255
    :cond_1
    new-instance v1, Lcom/google/android/gm/provider/ar;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/provider/ar;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/ar;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    const-string v0, "joinedAttachmentInfos"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget v7, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    if-eqz v0, :cond_4

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    iget v8, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    move v0, v4

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->K(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "joinedAttachmentInfos"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Updated attachments string from %s to %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v0, v5, v4

    invoke-static {v1, v2, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/aM;)V
    .locals 6

    .prologue
    .line 1012
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_0
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->FO()Landroid/os/Handler;

    move-result-object v3

    .line 1018
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1020
    new-instance v0, Lcom/google/android/gm/provider/ax;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/gm/provider/aM;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1042
    return-void
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2086
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2087
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    const-string v1, "sync_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2090
    return-void
.end method

.method private a(Lcom/google/android/gm/provider/Advertisement;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 3771
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;ILjava/lang/String;Z)V

    .line 3772
    return-void
.end method

.method private a(Lcom/google/android/gm/provider/Advertisement;ILjava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3782
    iget-object v1, p1, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v1, v1, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bil:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3785
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v1, p2, p1, p3}, Lcom/google/android/gm/provider/Operations;->a(ILcom/google/android/gm/provider/Advertisement;Ljava/lang/String;)J

    .line 3786
    if-eqz p4, :cond_1

    .line 3788
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3789
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3794
    :cond_1
    iget-object v1, p1, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v1, v1, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    if-eqz v1, :cond_2

    .line 3795
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 3796
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->d(Lcom/google/android/gm/provider/Advertisement;)Ljava/lang/String;

    move-result-object v0

    .line 3797
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3798
    iget-object v1, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "click_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ads"

    const-string v4, "event_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->B(Ljava/util/Collection;)V

    .line 3804
    :cond_2
    :goto_0
    return-void

    .line 3801
    :cond_3
    if-ne p2, v5, :cond_7

    iget-object v1, p1, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p1, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    :cond_4
    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FY()Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    :cond_5
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Reporting ad event failed for adActionType %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Failed to make http request for adActionType: %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Missing view url"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bik:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, p1, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "label"

    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bik:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Missing interaction url"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;I)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->dQ(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;IZ)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V
    .locals 9

    .prologue
    .line 160
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 9

    .prologue
    .line 160
    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->B(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->o(Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;)V
    .locals 1

    .prologue
    .line 1224
    if-eqz p1, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    .line 1226
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1228
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aX;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;Landroid/content/SyncResult;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/af;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biC:Ljava/util/Map;

    iget-wide v2, p1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->e(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->eG(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine;Z)Z
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    return p1
.end method

.method private a(Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;Landroid/content/SyncResult;Z)Z
    .locals 22

    .prologue
    .line 2377
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/persistence/b;->bQ(Landroid/content/Context;)J

    move-result-wide v18

    .line 2379
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/google/android/gm/provider/aX;->bkG:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x200000

    move v10, v4

    .line 2381
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/common/a;->dm(Ljava/lang/String;)I

    move-result v4

    .line 2384
    or-int/2addr v4, v10

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2387
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2389
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "runSyncLoop normalSync - %b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2397
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/google/android/gm/provider/aX;->bkG:Z

    if-nez v4, :cond_4

    if-nez p4, :cond_4

    const/4 v4, 0x1

    .line 2399
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v4, v0, v6}, Lcom/google/android/gm/provider/MailSync;->a(ZLcom/google/android/gm/provider/aX;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    .line 2400
    const/4 v4, 0x0

    .line 2402
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gmail-max-sync-per-interval"

    const/16 v8, 0x32

    invoke-static {v6, v7, v8}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 2405
    const/4 v14, 0x0

    .line 2406
    const/4 v11, 0x0

    .line 2407
    const-wide/16 v12, 0x0

    move/from16 v16, v4

    move-object v4, v5

    .line 2408
    :goto_2
    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gm/provider/MailEngine;->biK:Z

    if-nez v5, :cond_7

    .line 2410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gm/provider/MailEngine;->biM:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/gm/provider/MailEngine;->biL:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gm/provider/MailEngine;->biM:J

    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gm/provider/MailEngine;->biL:I

    if-le v5, v15, :cond_5

    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Sync check time: %d Sync count: %d Max syncs allowed in period: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gm/provider/MailEngine;->biM:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gm/provider/MailEngine;->biL:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Too many sync loops, cancelling sync."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gm/provider/MailEngine;->biK:Z

    if-eqz p3, :cond_1

    const-wide/16 v4, 0x1e

    move-object/from16 v0, p3

    iput-wide v4, v0, Landroid/content/SyncResult;->delayUntil:J

    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Too many sync loops detected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2457
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 2460
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2462
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/ae;->FJ()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2463
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2467
    :catchall_0
    move-exception v4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2479
    :catchall_1
    move-exception v4

    if-eqz p1, :cond_2

    .line 2480
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/aN;->GY()I

    move-result v5

    invoke-static {v10, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 2482
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailSync;->Hy()V

    .line 2486
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/persistence/b;->bR(Landroid/content/Context;)V

    throw v4

    .line 2379
    :cond_3
    const/high16 v4, 0x100000

    move v10, v4

    goto/16 :goto_0

    .line 2397
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2413
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;)Lcom/google/android/gm/provider/aW;

    move-result-object v4

    .line 2414
    iget v5, v4, Lcom/google/android/gm/provider/aW;->bkD:I
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/2addr v5, v11

    .line 2415
    :try_start_5
    iget-wide v6, v4, Lcom/google/android/gm/provider/aW;->bkE:J
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2416
    add-int/lit8 v8, v14, 0x1

    .line 2417
    :try_start_6
    iget-boolean v4, v4, Lcom/google/android/gm/provider/aW;->bkC:Z
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    or-int v4, v4, v16

    .line 2432
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v9, v11, v0, v12}, Lcom/google/android/gm/provider/MailSync;->a(ZLcom/google/android/gm/provider/aX;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v9

    .line 2433
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gm/provider/MailEngine;->biL:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/gm/provider/MailEngine;->biL:I

    move-wide v12, v6

    move v11, v5

    move v14, v8

    move/from16 v16, v4

    move-object v4, v9

    goto/16 :goto_2

    .line 2418
    :catch_1
    move-exception v4

    move-wide v6, v12

    move v5, v11

    move v8, v14

    .line 2419
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/aX;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2421
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 2422
    sget-object v11, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v12, "Exception during conversation sync. Will attempt to fetch one conversation at a time"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v4, v12, v13}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2424
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/aX;Lcom/google/android/gm/provider/aN;Ljava/util/ArrayList;)Z

    move-result v4

    or-int v4, v4, v16

    goto :goto_4

    .line 2426
    :cond_6
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2473
    :catch_2
    move-exception v4

    move-object v11, v4

    .line 2475
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v4

    const-string v5, "sync"

    const-string v6, "run_sync_loop_exception"

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2477
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2436
    :cond_7
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailSync;->Ht()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailEngine;->FQ()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_8
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "gmail-ls"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v5, v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    sget-object v6, Lcom/google/android/gsf/h;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "authority=? AND _sync_account=? AND _sync_account_type=?"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2438
    :cond_9
    :goto_7
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailEngine;->Gf()V

    .line 2441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 2444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 2445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "VACUUM"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2449
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 2451
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "screen_on"

    move-object v15, v4

    .line 2452
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v20, v4, v20

    .line 2453
    if-lez v14, :cond_b

    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->Gn()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v4

    const-string v5, "sync"

    const-string v6, "sample_sync_loop"

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v5, "sync"

    const-string v8, "run_sync_loop_ms"

    move-wide/from16 v6, v20

    move-object v9, v15

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "sync"

    mul-int/lit16 v6, v14, 0x3e8

    int-to-long v6, v6

    const-string v8, "sync_num_requests"

    move-object v9, v15

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "sync"

    mul-int/lit16 v6, v11, 0x3e8

    int-to-long v6, v6

    const-string v8, "sync_num_bytes"

    move-object v9, v15

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "sync"

    const-string v8, "sync_http_duration_ms"

    move-wide v6, v12

    move-object v9, v15

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v5, v18, v6

    if-lez v5, :cond_b

    const-string v5, "sync"

    const-string v8, "time_since_last_sync_ms"

    move-wide/from16 v6, v18

    move-object v9, v15

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2479
    :cond_b
    if-eqz p1, :cond_c

    .line 2480
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/aN;->GY()I

    move-result v4

    invoke-static {v10, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 2482
    :cond_c
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailSync;->Hy()V

    .line 2486
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/persistence/b;->bR(Landroid/content/Context;)V

    return v16

    .line 2436
    :catch_3
    move-exception v4

    :try_start_c
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v6, "NPE.  This shouldn\'t happen"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 2473
    :catch_4
    move-exception v4

    move-object v11, v4

    goto/16 :goto_6

    .line 2436
    :cond_d
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/MailEngine;->bcK:Lcom/google/android/gm/provider/bG;

    invoke-virtual {v8}, Lcom/google/android/gm/provider/bG;->HT()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "?client="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "gmail-ls"

    aput-object v6, v8, v5

    const/4 v5, 0x1

    aput-object v15, v8, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v8, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v8, v5

    sget-object v5, Lcom/google/android/gsf/h;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "authority=? AND feed=? AND _sync_account=? AND _sync_account_type=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_e

    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Null cursor returned when querying for SubscribedFeeds"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_7

    .line 2473
    :catch_5
    move-exception v4

    move-object v11, v4

    goto/16 :goto_6

    .line 2436
    :cond_e
    :try_start_d
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v7, "gmail-ls"

    const-string v8, "mail"

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v17, "feed"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "_sync_account"

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "_sync_account_type"

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "authority"

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "service"

    invoke-virtual {v9, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/google/android/gsf/h;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailEngine;->FR()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_9
    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_7

    :cond_f
    :try_start_f
    sget-object v6, Lcom/google/android/gsf/h;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "authority=? AND feed!=? AND _sync_account=? AND _sync_account_type=?"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v4

    :try_start_10
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2451
    :cond_10
    const-string v4, "screen_off"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v15, v4

    goto/16 :goto_8

    .line 2465
    :cond_11
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2467
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 2470
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v4

    const-string v5, "sync"

    const-string v6, "run_sync_loop_exception"

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2472
    throw v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2418
    :catch_6
    move-exception v4

    move-wide v6, v12

    move v8, v14

    goto/16 :goto_5

    :catch_7
    move-exception v4

    goto/16 :goto_5
.end method

.method private a(Lcom/google/android/gm/provider/aX;Lcom/google/android/gm/provider/aN;Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/aX;",
            "Lcom/google/android/gm/provider/aN;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/bj;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 2594
    .line 2596
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gm/provider/MailSync;->a(ZLcom/google/android/gm/provider/aX;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 2598
    if-eqz v0, :cond_3

    .line 2599
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gm/provider/MailEngine;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;)Lcom/google/android/gm/provider/aW;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gm/provider/aW;->bkC:Z

    .line 2602
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2603
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Fetching conversations one by one: %d"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v1

    move v2, v0

    .line 2604
    :goto_1
    if-ge v3, v4, :cond_0

    .line 2605
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biK:Z

    if-eqz v0, :cond_1

    .line 2606
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Sync canceled. Aborting."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2624
    :cond_0
    return v2

    .line 2609
    :cond_1
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/bj;

    .line 2610
    iget-wide v6, v0, Lcom/google/android/gm/provider/bj;->id:J

    .line 2612
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v8, "Fetching conversation %d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v5, v8, v9}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2613
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    new-array v8, v11, [Lcom/google/android/gm/provider/bj;

    aput-object v0, v8, v1

    invoke-static {v8}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v1, p1, v0}, Lcom/google/android/gm/provider/MailSync;->a(ZLcom/google/android/gm/provider/aX;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 2615
    if-eqz v0, :cond_2

    .line 2617
    :try_start_0
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gm/provider/MailEngine;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;)Lcom/google/android/gm/provider/aW;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gm/provider/aW;->bkC:Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v2

    .line 2604
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 2618
    :catch_0
    move-exception v0

    .line 2619
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v8, "Exception while fetching conversation %d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v5, v0, v8, v9}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2620
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0, v6, v7}, Lcom/google/android/gm/provider/ba;->aL(J)V

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4467
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4468
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->ed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4469
    const/4 v0, 0x1

    .line 4472
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gm/provider/bw;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aD(J)I
    .locals 13

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 3673
    .line 3674
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3675
    :cond_0
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 3676
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "messageId"

    aput-object v3, v2, v11

    const-string v3, "conversation"

    aput-object v3, v2, v10

    const/4 v3, 0x2

    const-string v6, "joinedAttachmentInfos"

    aput-object v6, v2, v3

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3686
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 3687
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3688
    const-string v0, "messageId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3690
    const-string v0, "conversation"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3692
    const-string v0, "joinedAttachmentInfos"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3696
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3698
    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    .line 3699
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    new-array v6, v10, [Ljava/lang/Long;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v6}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gm/provider/ae;->G(Ljava/util/List;)V

    .line 3700
    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 3701
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    const-string v6, "messageExpunged"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gm/provider/Operations;->b(JJLjava/lang/String;)J

    .line 3703
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eT(Ljava/lang/String;)V

    move v0, v10

    .line 3707
    :goto_1
    return v0

    .line 3696
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v11

    .line 3707
    goto :goto_1

    :cond_2
    move-wide v2, v8

    move-object v0, v5

    move-wide v4, v8

    goto :goto_0
.end method

.method private aE(J)Lcom/google/android/gm/provider/aP;
    .locals 5

    .prologue
    .line 7944
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bjw:Ljava/lang/Object;

    monitor-enter v1

    .line 7945
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjv:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aP;

    .line 7946
    if-nez v0, :cond_0

    .line 7947
    new-instance v0, Lcom/google/android/gm/provider/aP;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gm/provider/aP;-><init>(Lcom/google/android/gm/provider/MailEngine;J)V

    .line 7948
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bjv:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7950
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7951
    return-object v0

    .line 7950
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ay(J)Lcom/google/android/gm/provider/aQ;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 3218
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3219
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bid:[Ljava/lang/String;

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3223
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3224
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3235
    :goto_0
    return-object v5

    .line 3226
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3227
    new-instance v5, Lcom/google/android/gm/provider/aQ;

    invoke-direct {v5, p0}, Lcom/google/android/gm/provider/aQ;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 3228
    const-string v0, "messageId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/google/android/gm/provider/aQ;->bkt:J

    .line 3230
    const-string v0, "conversation"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/google/android/gm/provider/aQ;->bku:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private az(J)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3243
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 3244
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bif:[Ljava/lang/String;

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3248
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3255
    :goto_0
    return v9

    .line 3251
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3252
    const-string v0, "synced"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    .line 3255
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    :cond_1
    move v0, v9

    .line 3252
    goto :goto_1

    .line 3255
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 2035
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->eS(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2037
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object p2

    .line 2038
    :cond_0
    :try_start_1
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 2040
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3207
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3208
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static b(Landroid/content/Context;[Landroid/accounts/Account;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MailEngine;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 868
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    monitor-enter v2

    .line 869
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 870
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v2

    .line 873
    if-eqz p1, :cond_1

    .line 874
    array-length v4, p1

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, p1, v0

    .line 875
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 876
    sget-object v6, Lcom/google/android/gm/provider/ad;->TAG:Ljava/lang/String;

    const-string v7, "getMailEngines from valid account: %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 877
    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 874
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 881
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 883
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 884
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aK;

    .line 885
    iget-object v5, v0, Lcom/google/android/gm/provider/aK;->bko:Ljava/lang/Object;

    monitor-enter v5

    .line 886
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gm/provider/aK;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 887
    if-eqz v0, :cond_3

    .line 890
    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 891
    invoke-static {p0}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gm/i;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 892
    sget-object v8, Lcom/google/android/gm/provider/ad;->TAG:Ljava/lang/String;

    const-string v9, "getMailEngines check engine name: %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 894
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 895
    invoke-virtual {v0, v7}, Lcom/google/android/gm/provider/MailEngine;->be(Ljava/lang/String;)V

    .line 897
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 898
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 902
    :cond_4
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 906
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 907
    aget-object v1, p1, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 909
    :cond_5
    new-instance v0, Lcom/google/android/gm/provider/aw;

    invoke-direct {v0}, Lcom/google/android/gm/provider/aw;-><init>()V

    .line 916
    new-instance v1, Lcom/android/mail/utils/Y;

    invoke-direct {v1, v2, v0}, Lcom/android/mail/utils/Y;-><init>([Ljava/lang/Object;Lcom/google/android/mail/common/base/C;)V

    .line 918
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 920
    return-object v4
.end method

.method private b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2659
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_enable_conscrypt_provider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/g/a;->ai(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2679
    :cond_0
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 2681
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->c(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 2685
    :goto_0
    return-object v0

    .line 2665
    :catch_0
    move-exception v0

    .line 2668
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Repairable error from installIfNeeded, in runHttpRequest"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2671
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->JR()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/f;->a(ILandroid/content/Context;)V

    .line 2672
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;

    const-string v2, "Error from runHttpRequest"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2673
    :catch_1
    move-exception v0

    .line 2675
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Unrecoverable error from installIfNeeded, in runHttpRequest"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2676
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;

    const-string v2, "Error from runHttpRequest"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2683
    :catch_2
    move-exception v0

    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Authentication error, token invalidated, retrying"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2685
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->c(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/os/Handler;Lcom/google/android/gm/provider/aL;)V
    .locals 1

    .prologue
    .line 1529
    new-instance v0, Lcom/google/android/gm/provider/aD;

    invoke-direct {v0, p1}, Lcom/google/android/gm/provider/aD;-><init>(Lcom/google/android/gm/provider/aL;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1535
    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->eP(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 2750
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 2751
    if-eqz v0, :cond_0

    .line 2752
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2754
    :cond_0
    return-void
.end method

.method private bX(Z)V
    .locals 1

    .prologue
    .line 8085
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8088
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/P;->bR(Z)V

    .line 8092
    :goto_0
    return-void

    .line 8090
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->bY(Z)V

    goto :goto_0
.end method

.method static synthetic bZ(Z)Z
    .locals 0

    .prologue
    .line 160
    sput-boolean p0, Lcom/google/android/gm/provider/MailEngine;->aQy:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->bjq:Ljava/lang/String;

    return-object p1
.end method

.method private c(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 2697
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Cm()Ljava/lang/String;

    move-result-object v0

    .line 2698
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcK:Lcom/google/android/gm/provider/bG;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->biE:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/provider/bG;->a(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v1

    .line 2700
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2702
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->biA:Lcom/google/android/gm/provider/aJ;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FY()Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v5

    invoke-interface {v4, v5, p1, v1}, Lcom/google/android/gm/provider/aJ;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2706
    iget-boolean v6, p0, Lcom/google/android/gm/provider/MailEngine;->bjo:Z

    if-eqz v6, :cond_0

    .line 2707
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->b(Lorg/apache/http/HttpResponse;)V

    .line 2708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjo:Z

    .line 2709
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fake io exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2712
    :cond_0
    invoke-static {v1}, Lcom/google/android/gm/provider/MailSync;->e(Lorg/apache/http/HttpResponse;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2713
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->b(Lorg/apache/http/HttpResponse;)V

    .line 2714
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biE:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 2717
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    const-string v1, "authtoken is invalid"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2720
    :cond_1
    sget-object v6, Lcom/google/android/gm/provider/MailEngine;->bjb:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v10, Lcom/google/android/gm/provider/MailEngine;->bja:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget v0, p0, Lcom/google/android/gm/provider/MailEngine;->biZ:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_2

    sub-long v2, v4, v2

    mul-long/2addr v2, v12

    long-to-int v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gm/provider/MailEngine;->bja:J

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/d/a;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Long;Landroid/os/Bundle;)V

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2722
    return-object v1

    .line 2720
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method static synthetic c(Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 160
    invoke-static {p0}, Lcom/google/android/gm/provider/MailEngine;->b(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method public static final c(Landroid/content/Context;[Landroid/accounts/Account;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1346
    .line 1348
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1349
    array-length v3, p1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v5, p1, v0

    .line 1350
    invoke-static {p0}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1351
    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->eQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1352
    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->eR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v7, v5, v3

    .line 1357
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ".db"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1358
    const-string v8, "mailstore"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1362
    if-nez v8, :cond_1

    const-string v9, "internal"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1363
    :cond_1
    invoke-virtual {p0, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1367
    sget-object v9, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v10, "Database deleted: No account for db [%s]"

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v7, v11, v2

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1376
    :goto_2
    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    .line 1377
    const/16 v0, 0xa

    const-string v8, ".db"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1379
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 1380
    if-eqz v0, :cond_4

    move v0, v1

    .line 1355
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1371
    :cond_3
    sget-object v9, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v10, "No account for db [%s]: deleting. Delete FAILED"

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v7, v11, v2

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_4
    move v0, v2

    .line 1380
    goto :goto_3

    .line 1383
    :cond_5
    return v0
.end method

.method private d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1648
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1649
    const-string v1, "server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1650
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/google/android/gm/provider/af;)Lcom/google/android/gm/provider/af;
    .locals 2

    .prologue
    .line 1760
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->e(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v0

    .line 1761
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/google/android/gm/provider/Advertisement;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 3839
    iget-object v1, p1, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3873
    :goto_0
    return-object v0

    .line 3842
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 3845
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 3846
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FY()Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v1

    .line 3847
    invoke-virtual {v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 3848
    if-eqz v1, :cond_2

    .line 3849
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/a/a/a;->c(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3855
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3856
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3857
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3858
    const-string v1, "ci"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3860
    :cond_1
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Got a bad response from click server"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3866
    :catch_0
    move-exception v1

    .line 3867
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Failed to fetch click id"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3863
    :cond_2
    :try_start_1
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Failed to fetch click id"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 3868
    :catch_1
    move-exception v1

    .line 3869
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Failed to fetch click id due to malformed uri"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3870
    :catch_2
    move-exception v1

    .line 3871
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse json response from the click server"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->bjr:Ljava/lang/String;

    return-object p1
.end method

.method public static d(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1393
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "validateMailEngineAccounts"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1394
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1395
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 1396
    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1397
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1402
    :cond_1
    new-instance v0, Lcom/google/android/gm/provider/aA;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/provider/aA;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 1431
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    sget-object v3, Lcom/google/android/gm/a;->aWC:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1435
    return-void
.end method

.method static synthetic d(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gh()V

    return-void
.end method

.method private dQ(I)V
    .locals 6

    .prologue
    .line 2287
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Gk()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2288
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    monitor-enter v1

    .line 2289
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/mail/providers/E;->P(II)I

    move-result v0

    .line 2290
    iget v2, p0, Lcom/google/android/gm/provider/MailEngine;->aAC:I

    if-eq v0, v2, :cond_0

    .line 2292
    iput v0, p0, Lcom/google/android/gm/provider/MailEngine;->aAC:I

    .line 2293
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gh()V

    .line 2295
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2296
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->Gn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2297
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "sync"

    const-string v2, "last_sync_result"

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid LastSyncResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2287
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Gj()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Gi()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2297
    :pswitch_0
    const-string v3, "success"

    :goto_1
    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2300
    :cond_4
    return-void

    .line 2297
    :pswitch_1
    const-string v3, "connection_error"

    goto :goto_1

    :pswitch_2
    const-string v3, "auth_error"

    goto :goto_1

    :pswitch_3
    const-string v3, "security_error"

    goto :goto_1

    :pswitch_4
    const-string v3, "storage_error"

    goto :goto_1

    :pswitch_5
    const-string v3, "internal_error"

    goto :goto_1

    :pswitch_6
    const-string v3, "server_error"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private e(Lcom/google/android/gm/provider/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-static {p1}, Lcom/google/android/gm/provider/ae;->a(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->ei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    return v0
.end method

.method public static eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2

    .prologue
    .line 1060
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    monitor-enter v1

    .line 1061
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bje:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aK;

    .line 1062
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gm/provider/aK;->bdz:Lcom/google/android/gm/provider/MailEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized eP(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1127
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1131
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->aBL:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1132
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1133
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    .line 1136
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1138
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1139
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1140
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v2, "gmail-ls"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1143
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "Wiping mail db: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1144
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1145
    monitor-exit p0

    return-void

    .line 1136
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1126
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static eQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mailstore."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static eR(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "internal."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private eS(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2107
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "engine_settings"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bie:[Ljava/lang/String;

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static eT(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 4008
    invoke-static {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4010
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 4011
    iget-object v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/mail/common/base/K;->gK(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4012
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Cleaning up cached attachment: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4013
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 4016
    :cond_1
    return-void
.end method

.method private eU(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 8310
    const/4 v0, 0x0

    .line 8311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8312
    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->C([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8315
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gm/provider/Gmail;->c(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 8317
    if-eqz v1, :cond_0

    .line 8318
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8322
    :cond_0
    if-eqz v2, :cond_1

    .line 8323
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8326
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8327
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8329
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 8332
    :cond_1
    return v0

    .line 8317
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 8318
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method static synthetic eV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-static {p0}, Lcom/google/android/gm/provider/MailEngine;->eT(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/gm/provider/MailEngine;)I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine;->biV:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/gm/provider/MailEngine;)I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine;->biY:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/gm/provider/MailEngine;)I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine;->biV:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gm/provider/MailEngine;->biV:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biW:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gm/provider/MailEngine;)I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine;->biX:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/gm/provider/MailEngine;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjl:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    return v0
.end method

.method static synthetic m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FU()V

    return-void
.end method

.method private nD()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1815
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 1816
    new-instance v5, Lcom/google/android/gm/provider/am;

    invoke-direct {v5, p0}, Lcom/google/android/gm/provider/am;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1839
    new-instance v0, Lcom/google/android/gm/provider/Operations;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Operations;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    .line 1840
    new-instance v0, Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/ae;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Operations;Lcom/google/android/gm/provider/ag;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    .line 1841
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fn()Lcom/google/android/gm/provider/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    .line 1842
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biS:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/D;->addObserver(Ljava/util/Observer;)V

    .line 1843
    new-instance v0, Lcom/google/android/gm/provider/aV;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/aV;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    .line 1845
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1846
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_settings"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v6

    const-string v3, "value"

    aput-object v3, v2, v7

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1850
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1852
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1853
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1856
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1859
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1861
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "internal_sync_settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 1865
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1866
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1867
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1868
    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1872
    :catchall_1
    move-exception v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1873
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1870
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1872
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1873
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1876
    new-instance v0, Lcom/google/android/gm/provider/MailSync;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bcK:Lcom/google/android/gm/provider/bG;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/google/android/gm/provider/MailEngine;->bis:Z

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;-><init>(Lcom/google/android/gm/provider/ba;Lcom/google/android/gm/provider/bG;Ljava/util/Map;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    .line 1877
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->Hu()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/ae;->an(J)V

    .line 1879
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FU()V

    .line 1880
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 1882
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 1883
    return-void

    .line 1872
    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method private o(Ljava/lang/String;J)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4336
    invoke-static {p1}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 4341
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v9

    .line 4342
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 4343
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 4346
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "joinedAttachmentInfos"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4354
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4355
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4362
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4365
    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 4369
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Found attachment %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4370
    iget-object v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4373
    iget-object v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4374
    iget v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4375
    iget-object v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    iget-object v0, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4357
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "No row found for message _id %d though one was expected"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4359
    const/4 v0, 0x0

    goto :goto_0

    .line 4362
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4383
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4384
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 4385
    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4386
    if-eqz v1, :cond_4

    .line 4389
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Attachment Content %s is already cached as %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v11, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    aput-object v11, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4391
    iput-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    .line 4392
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4393
    :cond_4
    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4397
    iget-object v0, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4402
    :cond_5
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4403
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4404
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4405
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4406
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v4, "Cached file %s is safe from cleaning"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4407
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 4409
    :cond_6
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v4, "Cached file %s will be cleaned"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 4412
    :cond_7
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4413
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Cleaning up unused cached file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4414
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 4417
    :cond_8
    return-object v8
.end method

.method static synthetic o(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gw()V

    return-void
.end method

.method private o(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/P;->k(Ljava/util/Set;)V

    .line 1790
    :goto_0
    return-void

    .line 1788
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->p(Ljava/util/Set;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    return-object v0
.end method

.method private p(IZ)V
    .locals 2

    .prologue
    .line 2266
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    monitor-enter v1

    .line 2267
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biy:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biy:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(IZ)V

    .line 2269
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gh()V

    .line 2271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic q(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FV()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FW()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 160
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biJ:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biH:Z

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biI:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biI:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gm/provider/aL;

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/os/Handler;Lcom/google/android/gm/provider/aL;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biI:Ljava/util/List;

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gw()V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FV()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/c/f;->b(Ljava/lang/String;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/ae;->Fq()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/c/b;->a(Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->FW()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/c/b;->b(Landroid/net/Uri;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v5}, Lcom/google/android/gm/provider/MailEngine;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/c/g;->c(Ljava/lang/String;Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static synthetic t(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/g;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdb:Lcom/google/android/gm/provider/g;

    return-object v0
.end method

.method static synthetic u(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biC:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic w(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gb()V

    return-void
.end method

.method static synthetic x(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/aU;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biB:Lcom/google/android/gm/provider/aU;

    return-object v0
.end method

.method static synthetic y(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biP:Z

    return-void
.end method

.method static synthetic z(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    return v0
.end method


# virtual methods
.method public final A([Ljava/lang/String;)[Lcom/google/android/gm/provider/af;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1904
    array-length v0, p1

    new-array v3, v0, [Lcom/google/android/gm/provider/af;

    move v0, v1

    .line 1905
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1907
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Lcom/google/android/gm/provider/ae;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v2

    aput-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1908
    :catch_0
    move-exception v2

    .line 1914
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t find label: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1917
    :cond_0
    return-object v3
.end method

.method public final B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;
    .locals 3

    .prologue
    .line 4481
    new-instance v0, Lcom/google/android/gm/provider/aa;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gm/provider/aa;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final C([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 4485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4486
    const-string v0, "select "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4487
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 4488
    aget-object v2, p1, v0

    .line 4489
    if-eqz v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    :cond_0
    const-string v3, "(select value from internal_sync_settings where name =\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4492
    const-string v3, "\') as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4496
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final Cm()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2766
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v2, "mail"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2768
    if-nez v0, :cond_0

    .line 2769
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    const-string v1, "Unable to get auth token"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2771
    :catch_0
    move-exception v0

    .line 2772
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2773
    :catch_1
    move-exception v0

    .line 2774
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2776
    :cond_0
    return-object v0
.end method

.method public final DR()I
    .locals 1

    .prologue
    .line 4913
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->DR()I

    move-result v0

    return v0
.end method

.method public final DS()V
    .locals 1

    .prologue
    .line 1490
    new-instance v0, Lcom/google/android/gm/provider/aC;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/aC;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->g(Ljava/lang/Runnable;)V

    .line 1501
    return-void
.end method

.method public final Ee()Z
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v0

    return v0
.end method

.method final Ef()Z
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ef()Z

    move-result v0

    return v0
.end method

.method public final FP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method final FQ()Z
    .locals 6

    .prologue
    .line 1114
    sget-object v0, Lcom/google/android/gm/provider/ad;->TAG:Ljava/lang/String;

    const-string v1, "isSyncable=%d, isSyncActive=%b, isSyncPending=%b, getSyncAutomatically=%b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1120
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v1, "gmail-ls"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final FR()V
    .locals 2

    .prologue
    .line 1148
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->t(Landroid/os/Bundle;)V

    .line 1149
    return-void
.end method

.method final FT()Z
    .locals 1

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biq:Z

    return v0
.end method

.method public final FX()Lcom/google/android/gm/provider/g;
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdb:Lcom/google/android/gm/provider/g;

    return-object v0
.end method

.method public final FZ()Lcom/google/android/gm/provider/ae;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    return-object v0
.end method

.method public final Fn()Lcom/google/android/gm/provider/D;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    return-object v0
.end method

.method public final Fr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8532
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Fs()V
    .locals 1

    .prologue
    .line 8484
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fs()V

    .line 8485
    return-void
.end method

.method public final Fu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5157
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fu()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final Fv()Z
    .locals 1

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fv()Z

    move-result v0

    return v0
.end method

.method public final Fw()Z
    .locals 1

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fw()Z

    move-result v0

    return v0
.end method

.method public final Fx()Z
    .locals 1

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fx()Z

    move-result v0

    return v0
.end method

.method public final Fy()Z
    .locals 1

    .prologue
    .line 5193
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fy()Z

    move-result v0

    return v0
.end method

.method public final Fz()V
    .locals 1

    .prologue
    .line 5201
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fz()V

    .line 5202
    return-void
.end method

.method public final GA()V
    .locals 1

    .prologue
    .line 8492
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->GA()V

    .line 8493
    return-void
.end method

.method public final GB()Lcom/google/android/gm/provider/bH;
    .locals 1

    .prologue
    .line 8527
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biv:Lcom/google/android/gm/provider/bH;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bH;->HU()V

    .line 8528
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biv:Lcom/google/android/gm/provider/bH;

    return-object v0
.end method

.method final Ga()V
    .locals 1

    .prologue
    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bis:Z

    .line 1891
    return-void
.end method

.method public final Gc()Lcom/google/android/gm/provider/MailSync;
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    return-object v0
.end method

.method public final Gd()Z
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/provider/f;->bW(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method final Ge()Z
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/provider/f;->bW(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Gg()V
    .locals 2

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2014
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bjm:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bjm:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final Gi()Z
    .locals 3

    .prologue
    .line 2319
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    monitor-enter v1

    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biy:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2321
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final Gj()Z
    .locals 3

    .prologue
    .line 2325
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    monitor-enter v1

    .line 2326
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biy:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2327
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final Gk()Z
    .locals 3

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    monitor-enter v1

    .line 2332
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biy:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2333
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final Gl()I
    .locals 2

    .prologue
    .line 2345
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    monitor-enter v1

    .line 2346
    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine;->aAC:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final Gq()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4526
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bix:Ljava/lang/Object;

    monitor-enter v1

    .line 4530
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Gj()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4531
    const/4 v0, 0x2

    .line 4539
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4540
    or-int/lit8 v0, v0, 0x10

    .line 4542
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ef()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4543
    or-int/lit8 v0, v0, 0x20

    .line 4546
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4547
    new-instance v2, Lcom/android/mail/utils/G;

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->bdY:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 4549
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 4552
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4553
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4554
    monitor-exit v1

    return-object v2

    .line 4532
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Gi()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 4535
    const/4 v0, 0x0

    goto :goto_0

    .line 4555
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final Gr()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4638
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4640
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biK:Z

    if-nez v0, :cond_3

    .line 4641
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    move v0, v1

    .line 4644
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gs()Z

    move-result v3

    .line 4645
    if-eqz v3, :cond_1

    .line 4647
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    move v0, v2

    .line 4648
    goto :goto_0

    .line 4649
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4651
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 4654
    :goto_1
    if-eqz v0, :cond_2

    .line 4655
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 4656
    iput-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine;->biP:Z

    .line 4658
    :cond_2
    return v0

    .line 4651
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final Gt()Z
    .locals 1

    .prologue
    .line 4921
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FA()Z

    move-result v0

    return v0
.end method

.method public final Gu()Z
    .locals 1

    .prologue
    .line 4931
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FF()Z

    move-result v0

    return v0
.end method

.method final Gv()V
    .locals 3

    .prologue
    .line 5135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gm.intent.ACTION_UPGRADE_SYNC_WINDOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5136
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5137
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5138
    return-void
.end method

.method public final Gx()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8337
    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->C([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8340
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gm/provider/Gmail;->c(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 8342
    if-eqz v1, :cond_0

    .line 8343
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8347
    :cond_0
    if-eqz v2, :cond_1

    .line 8349
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8350
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8352
    :cond_1
    return-object v0

    .line 8342
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 8343
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method final Gz()V
    .locals 4

    .prologue
    .line 8365
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 8367
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->HQ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8377
    return-void

    .line 8370
    :catch_0
    move-exception v0

    .line 8371
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Exception while attempting to suppress notifications"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8374
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 8375
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception while attempting to suppress notifications"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final H(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3574
    .line 3576
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 3578
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3579
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/provider/MailEngine;->aD(J)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 3580
    goto :goto_0

    .line 3581
    :cond_0
    if-lez v3, :cond_1

    move v1, v2

    .line 3584
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3586
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3587
    if-eqz v1, :cond_2

    .line 3588
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 3591
    :cond_2
    return v3

    .line 3586
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3587
    if-eqz v1, :cond_3

    .line 3588
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    :cond_3
    throw v0
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 8496
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/ae;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final X(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3025
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3026
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Lcom/google/android/gm/provider/bw;->a(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT conversation_labels.*, conversations.*, conversations.queryId = 0 AS synced, (SELECT group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || \n(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    WHEN \'^sq_ig_i_personal\' THEN ?    WHEN \'^sq_ig_i_social\' THEN ?    WHEN \'^sq_ig_i_promo\' THEN ?    WHEN \'^sq_ig_i_notification\' THEN ?    WHEN \'^sq_ig_i_group\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden),    \'^**^\') FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id AND conversation_labels.isZombie = 0) AS conversationLabels   FROM conversation_labels\n  LEFT OUTER JOIN conversations\n  ON conversation_labels.conversation_id = conversations._id\n  AND conversation_labels.queryId = conversations.queryId\nWHERE\n  ( conversations._id = ?)\n  AND isZombie = 0\nGROUP BY conversations._id"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3027
    if-eqz v0, :cond_1

    .line 3028
    const/4 v2, 0x0

    .line 3030
    :try_start_0
    new-instance v1, Lcom/google/android/gm/provider/C;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/google/android/gm/provider/C;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3031
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gm/provider/C;->Ew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3032
    invoke-virtual {v1}, Lcom/google/android/gm/provider/C;->Ed()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 3033
    if-eqz v0, :cond_0

    .line 3038
    invoke-virtual {v1}, Lcom/google/android/gm/provider/C;->close()V

    .line 3043
    :goto_0
    return-object v0

    .line 3038
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gm/provider/C;->close()V

    .line 3043
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 3038
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 3039
    invoke-virtual {v1}, Lcom/google/android/gm/provider/C;->close()V

    :cond_2
    throw v0

    .line 3038
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method final Y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2093
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2094
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "internal_sync_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2097
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/af;Lcom/google/android/gm/provider/af;)I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 4877
    new-array v0, v11, [Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 4878
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message_labels"

    const-string v4, "labels_id = ?"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4879
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversation_labels"

    const-string v4, "labels_id = ?"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 4880
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const v5, 0x7fffffff

    const-string v6, "SHOW"

    move-object v1, p2

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/ae;->a(Lcom/google/android/gm/provider/af;IIIILjava/lang/String;)V

    .line 4882
    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    .line 4884
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "notification-requires-us"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4886
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "label:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4887
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->GT()J

    move-result-wide v4

    iget-object v7, p1, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v3, p0

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 4890
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v11}, Landroid/os/Bundle;-><init>(I)V

    .line 4891
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4892
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->t(Landroid/os/Bundle;)V

    .line 4895
    :cond_0
    return v10
.end method

.method public final a(JZJLandroid/content/ContentValues;Landroid/os/Bundle;)J
    .locals 25

    .prologue
    .line 4086
    new-instance v24, Landroid/util/TimingLogger;

    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "sendOrSaveDraft"

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4088
    const-string v4, "joinedAttachmentInfos"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4089
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->o(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v10

    .line 4092
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 4093
    iget v5, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/mail/common/base/K;->gK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4095
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-static {v5, v4, v0}, Lcom/android/mail/utils/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Attachment;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iput-object v5, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    :cond_1
    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_0

    .line 4097
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v4

    const-string v5, "errors"

    const-string v6, "cache_attachment"

    const-string v7, "failed"

    const-wide/16 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 4095
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 4102
    :cond_3
    invoke-static {v10}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->K(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 4103
    const-string v4, "caching"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4105
    const/16 v16, 0x0

    .line 4106
    const-string v4, "beginTransactionNonExclusive"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 4113
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_b

    :cond_4
    const/4 v4, 0x1

    move v10, v4

    .line 4116
    :goto_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/MailEngine;->ay(J)Lcom/google/android/gm/provider/aQ;

    move-result-object v6

    .line 4118
    if-nez v10, :cond_5

    if-nez v6, :cond_c

    :cond_5
    const-wide/16 v4, 0x0

    move-wide/from16 v22, v4

    .line 4121
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 4123
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p6

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4124
    const-string v4, "value fiddling"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4128
    if-nez v10, :cond_6

    if-nez v6, :cond_f

    .line 4134
    :cond_6
    const/16 v4, 0x14

    shl-long v6, v12, v4

    .line 4135
    const-string v4, "messageId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4136
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-eqz v4, :cond_7

    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_d

    .line 4138
    :cond_7
    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide/from16 v20, v6

    .line 4158
    :goto_4
    const-string v4, "fetch ref message"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4159
    const-string v4, "conversation"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4161
    const-string v4, "queryId"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4164
    const-string v4, "synced"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4165
    const-string v4, "dateSentMs"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4166
    const-string v4, "dateReceivedMs"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4169
    const-string v4, "spamDisplayedReasonType"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4175
    const-string v4, "body"

    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4176
    if-eqz v4, :cond_8

    .line 4177
    const-string v5, "bodyCompressed"

    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4181
    const-string v5, "snippet"

    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4182
    invoke-static {v4}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4183
    const-string v12, "snippet"

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v15, 0xc8

    if-ge v4, v15, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    :goto_5
    invoke-virtual {v5, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4190
    :cond_8
    const-string v4, "error"

    const-string v5, ""

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    const-string v4, "clientCreated"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4194
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-eqz v4, :cond_9

    .line 4195
    const-string v4, "refMessageId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4197
    :cond_9
    const-string v4, "more values"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4199
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "MailEngine.sendOrSaveMessage messageId=%d refMessageId=%d, conversationId=%d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v13

    const/4 v13, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v12, v13

    const/4 v8, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v12, v8

    invoke-static {v4, v5, v12}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "message_labels"

    const-string v8, "message_messageId = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-virtual {v4, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4208
    const-string v4, "delete old labels"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4210
    const-string v4, "joinedAttachmentInfos"

    invoke-virtual {v14, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4212
    if-eqz v10, :cond_11

    .line 4213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 4214
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_12

    .line 4215
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while inserting message with values: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4317
    :catchall_0
    move-exception v4

    move/from16 v5, v16

    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v6}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 4318
    const-string v6, "finish"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4320
    if-eqz v5, :cond_a

    .line 4321
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 4322
    const-string v5, "onConversationChanged (new)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4324
    :cond_a
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v4

    .line 4113
    :cond_b
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_2

    .line 4118
    :cond_c
    :try_start_1
    iget-wide v4, v6, Lcom/google/android/gm/provider/aQ;->bku:J

    move-wide/from16 v22, v4

    goto/16 :goto_3

    .line 4140
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->ax(J)Lcom/google/android/gm/provider/bm;

    move-result-object v4

    .line 4141
    if-nez v4, :cond_e

    .line 4145
    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide/from16 v20, v6

    goto/16 :goto_4

    .line 4147
    :cond_e
    iget-wide v8, v4, Lcom/google/android/gm/provider/bm;->bku:J

    .line 4148
    iget-wide v4, v4, Lcom/google/android/gm/provider/bm;->bkt:J

    move-wide/from16 v20, v8

    move-wide v8, v4

    goto/16 :goto_4

    .line 4152
    :cond_f
    iget-wide v8, v6, Lcom/google/android/gm/provider/aQ;->bku:J

    .line 4153
    iget-wide v6, v6, Lcom/google/android/gm/provider/aQ;->bkt:J

    .line 4156
    const-wide/16 v4, 0x0

    move-wide/from16 v20, v8

    move-wide v8, v4

    goto/16 :goto_4

    .line 4183
    :cond_10
    const/16 v4, 0xc8

    goto/16 :goto_5

    .line 4219
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages"

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v14, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4222
    :cond_12
    const-string v4, "insert or update"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4224
    if-eqz p3, :cond_16

    .line 4225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v8, "^r"

    invoke-virtual {v4, v8}, Lcom/google/android/gm/provider/ae;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v8

    const/4 v9, 0x1

    sget-object v10, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 4249
    :goto_7
    const-string v4, "set new labels"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4252
    if-eqz p3, :cond_1e

    .line 4253
    const-string v5, "messageSaved"

    .line 4267
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gm/provider/Operations;->aQ(J)V

    .line 4269
    const-string v4, "update operations"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 4272
    const-string v4, "gmail_send_immediately"

    const/4 v9, 0x1

    invoke-static {v8, v4, v9}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 4274
    :goto_9
    const-string v4, "gmail_send_without_sync"

    const/4 v9, 0x1

    invoke-static {v8, v4, v9}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 4276
    :goto_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailEngine;->FQ()Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 4278
    :goto_b
    if-nez p3, :cond_22

    if-eqz v19, :cond_22

    if-eqz v18, :cond_22

    if-nez v17, :cond_22

    const/4 v4, 0x1

    .line 4281
    :goto_c
    if-eqz v4, :cond_23

    .line 4282
    new-instance v4, Lcom/google/android/gm/provider/bt;

    move-wide/from16 v8, v20

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gm/provider/bt;-><init>(Ljava/lang/String;JJ)V

    .line 4284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v5, v4}, Lcom/google/android/gm/provider/Operations;->b(Lcom/google/android/gm/provider/bt;)J

    .line 4289
    :goto_d
    const-string v4, "update operations"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4291
    cmp-long v4, v20, v22

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_13

    .line 4292
    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 4294
    :cond_13
    const-string v4, "onConversationChanged (old)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4295
    sget-object v12, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, v20

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4298
    const/4 v5, 0x1

    .line 4300
    if-nez p3, :cond_15

    if-eqz v19, :cond_15

    .line 4301
    :try_start_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4302
    const-string v8, "expedited"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4303
    if-eqz v18, :cond_14

    if-nez v17, :cond_14

    .line 4304
    const-string v8, "force"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4305
    const-string v8, "sendwithoutsync"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4306
    const-string v8, "sendwithoutsyncMessageId"

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4307
    const-string v6, "sendwithoutsyncConversationId"

    move-wide/from16 v0, v20

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4310
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v7, "gmail-ls"

    invoke-static {v6, v7, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4313
    :cond_15
    const-string v4, "notifyDatasetChanged"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 4318
    const-string v4, "finish"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4320
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 4322
    const-string v4, "onConversationChanged (new)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4324
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    return-wide p1

    .line 4229
    :cond_16
    const/4 v4, 0x0

    .line 4230
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lcom/google/android/gm/provider/MailEngine;->c(JZ)Lcom/google/android/gm/provider/bm;

    move-result-object v5

    .line 4231
    if-eqz v5, :cond_19

    .line 4232
    iget-object v4, v5, Lcom/google/android/gm/provider/bm;->blN:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    .line 4234
    :goto_e
    if-nez v4, :cond_17

    iget-object v4, v5, Lcom/google/android/gm/provider/bm;->blO:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_17
    const/4 v4, 0x1

    .line 4236
    :goto_f
    if-nez v4, :cond_18

    iget-object v4, v5, Lcom/google/android/gm/provider/bm;->blP:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_18
    const/4 v4, 0x1

    .line 4239
    :cond_19
    :goto_10
    if-eqz v4, :cond_1a

    .line 4240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v8, "^i"

    invoke-virtual {v4, v8}, Lcom/google/android/gm/provider/ae;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v8

    const/4 v9, 0x1

    sget-object v10, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 4245
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v8, "^^out"

    invoke-virtual {v4, v8}, Lcom/google/android/gm/provider/ae;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v8

    const/4 v9, 0x1

    sget-object v10, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto/16 :goto_7

    .line 4232
    :cond_1b
    const/4 v4, 0x0

    goto :goto_e

    .line 4234
    :cond_1c
    const/4 v4, 0x0

    goto :goto_f

    .line 4236
    :cond_1d
    const/4 v4, 0x0

    goto :goto_10

    .line 4255
    :cond_1e
    const-string v5, "messageSent"

    goto/16 :goto_8

    .line 4272
    :cond_1f
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_9

    .line 4274
    :cond_20
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_a

    .line 4276
    :cond_21
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_b

    .line 4278
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 4286
    :cond_23
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    move-wide/from16 v10, v20

    move-wide v12, v6

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gm/provider/Operations;->b(JJLjava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_d

    .line 4317
    :catchall_1
    move-exception v4

    goto/16 :goto_6
.end method

.method public final a(Lcom/google/android/gm/provider/bi;JLcom/google/android/gm/provider/af;)J
    .locals 18

    .prologue
    .line 4988
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 4993
    :try_start_0
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/android/gm/provider/bi;->bku:J

    .line 4994
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 4997
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 5001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COALESCE(MAX(messageId), 0) FROM messages where conversation = ? AND queryId = 0"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v2, v3, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    move-wide v12, v2

    .line 5011
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 5012
    new-instance v2, Lcom/google/android/gm/provider/w;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-direct {v2, v3, v6}, Lcom/google/android/gm/provider/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V

    .line 5013
    move-wide/from16 v0, p2

    invoke-virtual {v2, v14, v15, v0, v1}, Lcom/google/android/gm/provider/w;->f(JJ)Ljava/util/Map;

    move-result-object v2

    move-object v9, v2

    .line 5019
    :goto_1
    const-string v2, "_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5020
    const-string v2, "queryId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5021
    const-string v2, "subject"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bi;->ayV:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5022
    const-string v2, "snippet"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bi;->abh:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5023
    const-string v2, "fromCompact"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bi;->blD:[B

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 5024
    const-string v2, "personalLevel"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bi;->blF:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->Ex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5027
    const-string v2, "forceAllUnread"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5028
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/D;->Eq()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5031
    if-eqz p4, :cond_0

    .line 5032
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5035
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->j(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 5036
    const-string v3, "labelIds"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5037
    const-string v2, "numMessages"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gm/provider/bi;->blB:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5038
    const-string v2, "maxMessageId"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5039
    const-string v2, "hasAttachments"

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/google/android/gm/provider/bi;->ayX:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversations"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 5041
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_1

    .line 5042
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/gm/provider/MailEngine;->biP:Z

    .line 5045
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 5049
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Failed to insert conversation"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5052
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_7

    .line 5056
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v16

    .line 5057
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 5058
    new-instance v3, Lcom/google/android/gm/provider/ab;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bi;->bhx:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gm/provider/bi;->blE:J

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gm/provider/ab;-><init>(JJZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 5126
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v2

    .line 5007
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gm/provider/bi;->blA:J

    move-wide v12, v2

    goto/16 :goto_0

    .line 5016
    :cond_4
    const/4 v2, 0x0

    move-object v9, v2

    goto/16 :goto_1

    .line 5063
    :cond_5
    new-instance v2, Lcom/google/android/gm/provider/bA;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gm/provider/bA;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V

    .line 5065
    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v3, v14

    move-object v6, v9

    move-object/from16 v7, v16

    move-wide v8, v12

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gm/provider/bA;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;Lcom/google/android/gm/provider/v;)V

    .line 5073
    const-wide/16 v5, 0x0

    move-wide v3, v14

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gm/provider/bA;->a(JJLjava/util/Map;)V

    .line 5122
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V

    .line 5124
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gm/provider/bi;->bhx:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    return-wide v2

    .line 5075
    :cond_7
    :try_start_2
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 5077
    if-eqz p4, :cond_9

    .line 5078
    const-string v2, "labels_id"

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5087
    :goto_3
    const-string v2, "queryId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5088
    const-string v2, "isZombie"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5101
    const-string v2, "sortMessageId"

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gm/provider/bi;->bhx:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5102
    const-string v2, "date"

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gm/provider/bi;->blE:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5103
    const-string v2, "conversation_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversation_labels"

    const-string v6, "queryId = ? AND conversation_id = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5110
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 5111
    const-string v5, "labels_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "conversation_labels"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 5113
    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_8

    .line 5117
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Failed to insert conversation label"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 5084
    :cond_9
    const-string v2, "labels_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Z)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 2848
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2860
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 2940
    :goto_0
    return-object v0

    .line 2866
    :cond_0
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 2868
    iget-object v9, p0, Lcom/google/android/gm/provider/MailEngine;->bjp:Ljava/lang/Object;

    monitor-enter v9

    .line 2871
    if-eqz p2, :cond_2

    .line 2872
    :try_start_0
    array-length v3, p2

    move v0, v2

    move v4, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p2, v0

    .line 2873
    const-string v5, "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2872
    add-int/lit8 v0, v0, 0x1

    move v4, v2

    goto :goto_1

    .line 2876
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selection Argument \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' unknown.Please see Gmail.SelectionArguments for possible values."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_2
    move v4, v1

    .line 2884
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjq:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjr:Ljava/lang/String;

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    .line 2886
    :goto_2
    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    move v8, v1

    .line 2888
    :goto_3
    if-nez v8, :cond_7

    .line 2891
    new-instance v0, Lcom/google/android/gm/provider/aG;

    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->Hh()Lcom/google/android/gm/provider/f;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/provider/aG;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lcom/google/android/gm/provider/f;Z)V

    move-object v1, v0

    .line 2901
    :goto_4
    const-string v0, "CursorLogic"

    const-string v2, "IN query: label=%s logic=%s reuse=%s becomeNetwork=%s, query=%s lastQuery=%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Lcom/google/android/gm/provider/aG;->b(Lcom/google/android/gm/provider/aG;)Lcom/google/android/gm/provider/af;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object p1, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->bjq:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2906
    new-instance v0, Lcom/google/android/gm/provider/ao;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/provider/ao;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aG;)V

    .line 2915
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/aG;->GK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gm/provider/aG;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aF;

    .line 2919
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->GT()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/aG;->aF(J)V

    .line 2920
    if-nez v8, :cond_8

    .line 2922
    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/aG;->a(Lcom/google/android/gm/provider/aR;)I

    .line 2926
    invoke-virtual {v1}, Lcom/google/android/gm/provider/aG;->GJ()V

    .line 2937
    :goto_5
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/aF;->dS(I)V

    .line 2938
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 2940
    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/aG;->o(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v9

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 2884
    goto :goto_2

    :cond_6
    move v8, v2

    .line 2886
    goto :goto_3

    .line 2895
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjs:Lcom/google/android/gm/provider/aG;

    .line 2897
    invoke-static {v0, p3}, Lcom/google/android/gm/provider/aG;->a(Lcom/google/android/gm/provider/aG;Ljava/lang/Integer;)V

    .line 2899
    invoke-static {v0}, Lcom/google/android/gm/provider/aG;->a(Lcom/google/android/gm/provider/aG;)V

    move-object v1, v0

    goto :goto_4

    .line 2929
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aF;->GG()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method public final a([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2960
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 2962
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2963
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2964
    const-string v1, "messages.conversation = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2965
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjj:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2966
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2968
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    const-string v7, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2971
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 2972
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    const-string v2, "body"

    invoke-direct {v1, v0, v2}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a([Ljava/lang/String;JZZ)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 2982
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 2984
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/provider/MailEngine;->aE(J)Lcom/google/android/gm/provider/aP;

    move-result-object v9

    .line 2985
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2986
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2989
    const-string v1, "messages.conversation = ? AND (queryId = 0 OR queryId = ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2990
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjj:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2991
    new-instance v1, Lcom/google/android/gm/provider/ap;

    invoke-direct {v1, p0, v9}, Lcom/google/android/gm/provider/ap;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aP;)V

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 2999
    const-string v1, "messageLabels"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x1

    iget-wide v6, v9, Lcom/google/android/gm/provider/aP;->bkB:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3002
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    const-string v7, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aE;

    .line 3007
    iget-boolean v1, v9, Lcom/google/android/gm/provider/aP;->bks:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 3008
    :cond_0
    invoke-virtual {v9, p2, p3, v0, p4}, Lcom/google/android/gm/provider/aP;->a(JLcom/google/android/gm/provider/aR;Z)I

    move-result v1

    move v2, v1

    .line 3014
    :goto_0
    if-eqz p5, :cond_2

    .line 3015
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aE;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/aR;

    .line 3016
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aE;->close()V

    .line 3019
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/aR;->dS(I)V

    .line 3020
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 3021
    new-instance v0, Lcom/google/android/gm/provider/CompressedMessageCursor;

    const-string v2, "body"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move v2, v8

    .line 3010
    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public final a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationInfo;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 3048
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3049
    const-string v1, "conversations"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3050
    const-string v1, "conversations._id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3052
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3053
    if-eqz v0, :cond_0

    .line 3056
    :try_start_0
    new-instance v1, Lcom/google/android/gm/provider/C;

    invoke-direct {v1, p3, v0}, Lcom/google/android/gm/provider/C;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gm/provider/C;->Ew()Z

    .line 3058
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-static {v1, v0}, Lcom/google/android/gm/ConversationInfo;->a(Lcom/google/android/gm/provider/B;Lcom/google/android/gm/provider/D;)Lcom/google/android/gm/ConversationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 3060
    invoke-virtual {v1}, Lcom/google/android/gm/provider/C;->close()V

    .line 3065
    :cond_0
    return-object v3

    .line 3060
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v3, :cond_1

    .line 3061
    invoke-virtual {v3}, Lcom/google/android/gm/provider/C;->close()V

    :cond_1
    throw v0

    .line 3060
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_0
.end method

.method public final a(JJLjava/lang/String;Z)V
    .locals 9

    .prologue
    .line 3418
    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gm/provider/MailEngine;->a(JJLjava/lang/String;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3420
    return-void
.end method

.method public final a(JJLjava/lang/String;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 13

    .prologue
    .line 3424
    const/4 v2, 0x0

    .line 3425
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 3426
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 3428
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v8

    .line 3429
    if-eqz v8, :cond_0

    .line 3430
    iget-wide v2, v8, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3431
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/ae;->a(JJLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3433
    sget-object v2, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 3434
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3435
    const/4 v2, 0x1

    .line 3438
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3439
    if-eqz v2, :cond_1

    .line 3440
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 3441
    invoke-direct {p0, v11}, Lcom/google/android/gm/provider/MailEngine;->o(Ljava/util/Set;)V

    .line 3447
    :cond_1
    if-nez p6, :cond_2

    const-string v2, "^u"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3448
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    .line 3450
    :cond_2
    return-void

    .line 3438
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3439
    throw v2
.end method

.method public final a(JLjava/lang/String;Z)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 3271
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->ay(J)Lcom/google/android/gm/provider/aQ;

    move-result-object v0

    .line 3272
    if-nez v0, :cond_0

    .line 3273
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "setLabelOnLocalMessage returning because message pair does not exist: %d"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3300
    :goto_0
    return-void

    .line 3278
    :cond_0
    iget-wide v2, v0, Lcom/google/android/gm/provider/aQ;->bkt:J

    .line 3279
    iget-wide v8, v0, Lcom/google/android/gm/provider/aQ;->bku:J

    .line 3281
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p3}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v4

    .line 3282
    if-nez v4, :cond_1

    .line 3283
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "setLabelOnLocalMessage returning because label does not exist: %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3287
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 3289
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    sget-object v6, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3291
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->az(J)Z

    move-result v5

    .line 3293
    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZZ)V

    .line 3296
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3298
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3299
    invoke-direct {p0, v10}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    goto :goto_0

    .line 3298
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3299
    invoke-direct {p0, v10}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    throw v0
.end method

.method public final a(Landroid/content/SyncResult;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 2121
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bip:Ljava/lang/Object;

    monitor-enter v1

    .line 2122
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biq:Z

    if-eqz v0, :cond_0

    .line 2123
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Sync disabled for testing, don\'t perform sync."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2124
    monitor-exit v1

    .line 2133
    :goto_0
    return-void

    .line 2126
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bir:Ljava/lang/Thread;

    .line 2127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2129
    :try_start_1
    new-instance v2, Landroid/util/TimingLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-profiling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sync"

    invoke-direct {v2, v0, v1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gm/provider/aN;

    invoke-direct {v3}, Lcom/google/android/gm/provider/aN;-><init>()V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->Hr()V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biK:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x1

    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, v0, v4}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v4, "gmail-ls"

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gm()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    invoke-static {v4, v5, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_1
    const-string v4, "initialize"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2131
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bip:Ljava/lang/Object;

    monitor-enter v1

    .line 2132
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bir:Ljava/lang/Thread;

    .line 2133
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2127
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2129
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-gtz v0, :cond_7

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 2134
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bip:Ljava/lang/Object;

    monitor-enter v1

    .line 2132
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bir:Ljava/lang/Thread;

    .line 2133
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    .line 2129
    :cond_7
    :try_start_7
    new-instance v0, Lcom/google/android/gm/provider/aX;

    invoke-direct {v0}, Lcom/google/android/gm/provider/aX;-><init>()V

    const-string v4, "sendwithoutsync"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    const-string v4, "sendwithoutsyncMessageId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    const-string v4, "sendwithoutsyncConversationId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gm/provider/aX;->bku:J

    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Reading send without sync message id, conversation id, %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/google/android/gm/provider/aX;->bku:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_8
    const-string v4, "force"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gm/provider/aX;->bkH:Z

    :cond_9
    const-string v4, "activeLabel"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "activeLabel"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v5, v4}, Lcom/google/android/gm/provider/D;->ek(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v5, v4}, Lcom/google/android/gm/provider/D;->ej(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gm/provider/aX;->bkI:Ljava/lang/Long;

    :cond_a
    const-string v4, "upload"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->biN:Ljava/lang/Object;

    monitor-enter v5
    :try_end_7
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-direct {p0, v3, v0, p1, v4}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;Landroid/content/SyncResult;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailSync;->blm:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->Hb()V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/gm/provider/MailSync;->blm:Z

    :cond_c
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->dQ(I)V
    :try_end_9
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v1, :cond_e

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v5

    throw v0
    :try_end_b
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catch_0
    move-exception v0

    :try_start_c
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Auth exception"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->dQ(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/4 v0, 0x0

    :try_start_d
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_e
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Parse exception: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->dQ(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v1, :cond_12

    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_10
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Canceled: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->dQ(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_14
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_12
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "IOException: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Detail: "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->dQ(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v1, :cond_16

    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_16
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_14
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Conscrypt error during sync"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->dQ(I)V

    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v1, :cond_18

    :cond_17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_18
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->DS()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/gm/provider/MailEngine;->biG:Z

    invoke-virtual {v3}, Lcom/google/android/gm/provider/aN;->GX()Z

    move-result v3

    if-nez v3, :cond_19

    if-eqz v1, :cond_1a

    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1a
    const-string v1, "stop"

    invoke-virtual {v2, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 2133
    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/os/Handler;Lcom/google/android/gm/provider/aL;)V
    .locals 3

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->biJ:Ljava/lang/Object;

    monitor-enter v1

    .line 1511
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biH:Z

    if-eqz v0, :cond_0

    .line 1513
    invoke-static {p1, p2}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/os/Handler;Lcom/google/android/gm/provider/aL;)V

    .line 1521
    :goto_0
    monitor-exit v1

    return-void

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biI:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biI:Ljava/util/List;

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biI:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1521
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gm/provider/Advertisement;I)V
    .locals 2

    .prologue
    .line 3762
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;ILjava/lang/String;Z)V

    .line 3763
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/Advertisement;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3744
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;ILjava/lang/String;)V

    .line 3746
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/Advertisement;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3712
    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 3716
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;ILjava/lang/String;Z)V

    .line 3719
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 3720
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3721
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->t(Landroid/os/Bundle;)V

    .line 3724
    iget-object v1, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    .line 3725
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 3726
    const-string v3, "starred"

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ads"

    const-string v4, "event_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3730
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->B(Ljava/util/Collection;)V

    .line 3731
    return-void

    .line 3712
    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    .line 3726
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x3

    const/4 v6, 0x1

    .line 5267
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5269
    :goto_0
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Configuring sectioned inbox with sections: %s and show starred: %b%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ","

    invoke-static {v5, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5273
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gm/provider/ae;->a(Ljava/util/Set;Z)V

    .line 5276
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gm/provider/Operations;->b(Ljava/util/Set;Z)J

    .line 5277
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 5280
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->ep(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 5282
    return-void

    .line 5267
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final a([Landroid/content/ContentValues;Z)V
    .locals 28

    .prologue
    .line 3306
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v22

    .line 3307
    move-object/from16 v0, p1

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v7, p1, v5

    .line 3308
    const-string v4, "conversation"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3309
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "values must have \'conversation\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3312
    :cond_0
    const-string v4, "conversation"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3314
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3315
    if-nez v4, :cond_1

    .line 3316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3317
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3319
    :cond_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3307
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 3322
    :cond_2
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 3323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 3325
    if-eqz p2, :cond_3

    .line 3326
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->HQ()V

    .line 3328
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v19, v0

    .line 3329
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3330
    const/4 v5, 0x0

    .line 3331
    const/16 v20, 0x0

    .line 3333
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 3334
    const-string v6, "canonicalName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3335
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "values must have \'canonicalName\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3408
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3411
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 3412
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->o(Ljava/util/Set;)V

    throw v4

    .line 3338
    :cond_5
    :try_start_1
    const-string v6, "canonicalName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3340
    const-string v6, "_id"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3341
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "values must have \'_id\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3344
    :cond_6
    const-string v6, "_id"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 3346
    const-string v6, "messageId"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3347
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "values must have \'messageId\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3350
    :cond_7
    const-string v6, "messageId"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3352
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->ay(J)Lcom/google/android/gm/provider/aQ;

    move-result-object v9

    .line 3353
    const/4 v8, 0x1

    .line 3354
    if-eqz v9, :cond_8

    iget-wide v12, v9, Lcom/google/android/gm/provider/aQ;->bku:J

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_8

    iget-wide v12, v9, Lcom/google/android/gm/provider/aQ;->bkt:J

    cmp-long v9, v12, v6

    if-eqz v9, :cond_10

    .line 3358
    :cond_8
    const/4 v8, 0x0

    move v11, v8

    .line 3361
    :goto_3
    const-string v8, "add_label_action"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 3362
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "values must have \'add_label_action\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3365
    :cond_9
    const-string v8, "add_label_action"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 3367
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v8, "MailProvider.insert(): adding or removing label %s to local message %d operation (is add) = %b"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v4, v8, v12}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3370
    invoke-static {v10}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3371
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "label is not user-settable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3375
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v4, v10}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v8

    .line 3376
    if-eqz v8, :cond_f

    .line 3377
    iget-wide v4, v8, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3378
    const/16 v21, 0x1

    .line 3379
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    sget-object v10, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3381
    if-nez v11, :cond_b

    .line 3386
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v18, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-wide v14, v6

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gm/provider/ae;->a(JJLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3390
    :cond_b
    if-nez v20, :cond_e

    .line 3395
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->az(J)Z

    move-result v4

    move/from16 v5, v21

    :goto_4
    move/from16 v20, v4

    .line 3398
    goto/16 :goto_2

    .line 3400
    :cond_c
    if-eqz v5, :cond_4

    .line 3401
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v9, v20

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZZ)V

    goto/16 :goto_1

    .line 3406
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3411
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 3412
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->o(Ljava/util/Set;)V

    .line 3413
    return-void

    :cond_e
    move/from16 v4, v20

    move/from16 v5, v21

    goto :goto_4

    :cond_f
    move/from16 v4, v20

    goto :goto_4

    :cond_10
    move v11, v8

    goto/16 :goto_3
.end method

.method public final aA(J)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3551
    const/4 v1, 0x0

    .line 3552
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 3554
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->aD(J)I

    move-result v0

    .line 3555
    if-lez v0, :cond_0

    move v1, v2

    .line 3558
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3559
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3562
    if-eqz v1, :cond_1

    .line 3563
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    :cond_1
    return v0

    .line 3561
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3562
    if-eqz v1, :cond_2

    .line 3563
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    :cond_2
    throw v0
.end method

.method final aB(J)I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3596
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ek()J

    move-result-wide v0

    .line 3597
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 3603
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "messageId IN (SELECT message_messageId FROM message_labels where   message_conversation = ? AND labels_id = ?)"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3612
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3613
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3617
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3620
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->H(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method final aC(J)I
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3624
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Er()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 3625
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Et()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 3626
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Eu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 3628
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3629
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "messageId IN (SELECT message_messageId FROM message_labels where   message_conversation = ? AND labels_id IN (?, ?, ?))"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    aput-object v6, v4, v12

    const/4 v6, 0x2

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v8, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3641
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3642
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3645
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3648
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3650
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3652
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "^^out"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Z)V

    .line 3653
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "^^retry"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Z)V

    .line 3654
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "^^failed"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Z)V

    .line 3656
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "^r"

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Z)V

    .line 3658
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/android/gm/provider/ba;->aJ(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 3662
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 3660
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3662
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3665
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3667
    invoke-direct {p0, v11}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 3669
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final aw(J)Lcom/google/android/gm/provider/af;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/ae;->as(J)Lcom/google/android/gm/provider/af;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->d(Lcom/google/android/gm/provider/af;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    return-object v0
.end method

.method public final ax(J)Lcom/google/android/gm/provider/bm;
    .locals 3

    .prologue
    .line 3109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->b([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 3111
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3112
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/bm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final b([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 3070
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 3072
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3073
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3074
    const-string v1, "messages._id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3075
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjj:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3076
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3078
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3080
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 3081
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    const-string v2, "body"

    invoke-direct {v1, v0, v2}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Lcom/google/android/gm/provider/Advertisement;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3752
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;ILjava/lang/String;)V

    .line 3754
    return-void
.end method

.method public final b(Lcom/google/android/gm/provider/Advertisement;Z)V
    .locals 6

    .prologue
    .line 3916
    if-eqz p2, :cond_0

    const/16 v0, 0x8

    .line 3918
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;I)V

    .line 3921
    iget-object v0, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    .line 3922
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ads"

    const-string v3, "event_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3925
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->B(Ljava/util/Collection;)V

    .line 3926
    return-void

    .line 3916
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final b([Landroid/content/ContentValues;Z)V
    .locals 18

    .prologue
    .line 3455
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v13

    .line 3456
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, p1, v3

    .line 3457
    const-string v2, "_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3458
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'_id\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3461
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3463
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3464
    if-nez v2, :cond_1

    .line 3465
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3466
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v13, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3456
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 3471
    :cond_2
    const/4 v5, 0x0

    .line 3472
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 3473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 3475
    if-eqz p2, :cond_3

    .line 3476
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->HQ()V

    .line 3478
    :cond_3
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 3479
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 3480
    const/4 v4, 0x0

    .line 3482
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v12, v5

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 3483
    const-string v5, "canonicalName"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'canonicalName\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3531
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3534
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 3535
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gm/provider/MailEngine;->o(Ljava/util/Set;)V

    throw v2

    .line 3487
    :cond_4
    :try_start_1
    const-string v5, "canonicalName"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3489
    const-string v5, "maxMessageId"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3490
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'maxMessageId\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3493
    :cond_5
    const-string v5, "maxMessageId"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3496
    const-string v5, "add_label_action"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3497
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'add_label_action\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3500
    :cond_6
    const-string v5, "add_label_action"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 3502
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "MailProvider.insert(): adding or removing label %s to conversation %d, maxMessageId %d operation (is add) = %b"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v8, v10

    const/4 v10, 0x1

    aput-object v2, v8, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v3, v5, v8}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3505
    invoke-static/range {v17 .. v17}, Lcom/google/android/gm/provider/Gmail;->eh(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3506
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "label is not provider-settable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3510
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v8

    .line 3511
    if-eqz v8, :cond_8

    .line 3512
    iget-wide v4, v8, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3513
    const/4 v11, 0x1

    .line 3515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v10, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/ae;->a(JJLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3517
    if-nez v9, :cond_d

    const-string v3, "^u"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3518
    const/4 v3, 0x1

    move v4, v11

    move v12, v3

    goto/16 :goto_2

    .line 3521
    :cond_8
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "Missing label in setLabelOnConversationsBulk: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    invoke-static {v3, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v4

    :goto_3
    move v4, v3

    .line 3524
    goto/16 :goto_2

    .line 3525
    :cond_9
    if-eqz v4, :cond_a

    .line 3526
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    :cond_a
    move v5, v12

    .line 3528
    goto/16 :goto_1

    .line 3529
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 3534
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->bX(Z)V

    .line 3535
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gm/provider/MailEngine;->o(Ljava/util/Set;)V

    .line 3540
    if-eqz v5, :cond_c

    .line 3541
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    .line 3543
    :cond_c
    return-void

    :cond_d
    move v3, v11

    goto :goto_3
.end method

.method public final bW(Z)V
    .locals 23

    .prologue
    .line 4706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biF:Lcom/google/android/gm/provider/P;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/gm/provider/P;->bS(Z)V

    .line 4713
    :cond_0
    return-void

    .line 4711
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->beginTransactionNonExclusive()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/D;->requery()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biC:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/gm/provider/MailEngine;->aw(J)Lcom/google/android/gm/provider/af;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notificationLabelCount-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notificationLabelMaxMessageId-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/google/android/gm/provider/MailEngine;->b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    iget-wide v6, v11, Lcom/google/android/gm/provider/af;->id:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gm/provider/D;->ae(J)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v4, v12, v13}, Lcom/google/android/gm/provider/D;->ae(J)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biC:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v6, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v7, "considering sending notification. label=%d, oldUnreadCount=%d, newUnreadCount=%d, unseenCount=%d, getAttention=%b"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v8, v9

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v8, v9

    const/4 v9, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v17, :cond_3

    if-nez v5, :cond_e

    :cond_3
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v8, v4

    move v9, v5

    :goto_1
    const-wide/16 v6, 0x0

    if-lez v9, :cond_5

    const/4 v5, 0x0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v20, "label:"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v20, Lcom/google/android/gm/provider/MailEngine;->bih:[Ljava/lang/String;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "maxMessageId"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_c

    cmp-long v4, v6, v18

    if-lez v4, :cond_c

    const/4 v4, 0x1

    :goto_2
    move/from16 v0, v16

    if-ne v0, v9, :cond_6

    if-nez v4, :cond_6

    if-nez v8, :cond_6

    if-eqz p1, :cond_9

    :cond_6
    if-nez p1, :cond_7

    if-lez v9, :cond_d

    if-eqz v4, :cond_d

    :cond_7
    const/4 v4, 0x1

    :goto_3
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v8, "sending notification. Adjusted values are label=%d, oldCount=%d, newCount=%d, unseenCount=%d, getAttention=%b"

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v5, v8, v0}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v5, v12, v13}, Lcom/google/android/gm/provider/ae;->as(J)Lcom/google/android/gm/provider/af;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-static {v5}, Lcom/google/android/gm/provider/ae;->a(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-static {v11}, Lcom/google/android/gm/provider/ae;->a(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Landroid/content/Intent;

    const-string v20, "com.android.mail.action.update_notification"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "application/gmail-ls"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "notification_extra_folder"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/google/android/gm/provider/GmailProvider;->O(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v20, "notification_extra_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v20, "notification_updated_unread_count"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v20, "account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "count"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v20, "unseenCount"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "getAttention"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "tagLabel"

    invoke-virtual {v11, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notificationLabel"

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v8, "Sending notification intent: %s / %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aput-object v11, v17, v20

    const/16 v20, 0x1

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    aput-object v21, v17, v20

    move-object/from16 v0, v17

    invoke-static {v4, v8, v0}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bjf:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->bjf:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v20, 0x7d0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v4, v11, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.PROVIDER_CHANGED"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v17, "content://gmail-ls/unread/"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gm/provider/ad;->eD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "count"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v8, "Sending provider changed intent: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v11, v17

    invoke-static {v5, v8, v11}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->biC:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, v16

    if-eq v0, v9, :cond_a

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/google/android/gm/provider/MailEngine;->X(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_2

    cmp-long v4, v6, v18

    if-lez v4, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/google/android/gm/provider/MailEngine;->X(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v4

    :catchall_1
    move-exception v4

    if-eqz v5, :cond_b

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_e
    move v8, v4

    move v9, v5

    goto/16 :goto_1
.end method

.method final bY(Z)V
    .locals 3

    .prologue
    .line 8095
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 8097
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biU:Lcom/google/android/gm/provider/aI;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/aI;->AP()V

    .line 8098
    return-void
.end method

.method public final be(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1081
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "setAccount to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1082
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    .line 1083
    return-void
.end method

.method public final c([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 3086
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 3088
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3089
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3090
    const-string v1, "messages.messageId = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3091
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjj:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3092
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3094
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3096
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 3097
    if-nez v0, :cond_0

    .line 3098
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "null message cursor returned"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3101
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/google/android/gm/provider/CompressedMessageCursor;

    const-string v1, "body"

    invoke-direct {v3, v0, v1}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)Lcom/android/mail/providers/Conversation;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8542
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gmail_permalink_pattern"

    const-string v6, "%%plid=%s%%"

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p3, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8549
    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {p1, v4}, Lcom/google/android/gm/provider/bw;->a(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8558
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT conversation_labels.*, conversations.*, conversations.queryId = 0 AS synced, (SELECT group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || \n(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    WHEN \'^sq_ig_i_personal\' THEN ?    WHEN \'^sq_ig_i_social\' THEN ?    WHEN \'^sq_ig_i_promo\' THEN ?    WHEN \'^sq_ig_i_notification\' THEN ?    WHEN \'^sq_ig_i_group\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden),    \'^**^\') FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id AND conversation_labels.isZombie = 0) AS conversationLabels   FROM conversation_labels\n  LEFT OUTER JOIN conversations\n  ON conversation_labels.conversation_id = conversations._id\n  AND conversation_labels.queryId = conversations.queryId\nWHERE\n  ( conversations.permalink LIKE ? )\n  AND isZombie = 0 AND conversations.queryId = 0\nGROUP BY conversations._id"

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 8560
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8571
    :cond_0
    :goto_0
    return-object v0

    .line 8566
    :cond_1
    :try_start_0
    new-instance v3, Lcom/google/android/gm/provider/uiprovider/g;

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gm/provider/uiprovider/g;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8568
    :try_start_1
    new-instance v0, Lcom/android/mail/providers/Conversation;

    invoke-direct {v0, v3}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8570
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8571
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 8570
    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_4

    move v0, v1

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :goto_4
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 8571
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    :cond_4
    move v0, v2

    .line 8570
    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    goto :goto_2
.end method

.method public final c(JZ)Lcom/google/android/gm/provider/bm;
    .locals 3

    .prologue
    .line 3122
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->c([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 3124
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3125
    invoke-direct {p0, v1, p3}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/bm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3127
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final c(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 1

    .prologue
    .line 3737
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;I)V

    .line 3738
    return-void
.end method

.method public final d([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 8506
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->b(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 8513
    if-nez p2, :cond_0

    .line 8514
    const-string v3, "expiration > ?"

    .line 8515
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 8516
    const-string v7, "_id DESC"

    .line 8523
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ads"

    move-object v2, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 8518
    :cond_0
    const-string v3, "event_id = ?"

    .line 8519
    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v2

    move-object v7, v5

    .line 8520
    goto :goto_0
.end method

.method public final e(Landroid/content/ContentValues;)I
    .locals 1

    .prologue
    .line 5131
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->e(Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2801
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Go()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2825
    :goto_0
    return-object v0

    .line 2805
    :cond_0
    new-instance v1, Lcom/google/android/gm/provider/SearchQuery;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gm/provider/SearchQuery;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2806
    invoke-virtual {v1}, Lcom/google/android/gm/provider/SearchQuery;->HK()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2809
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->aBL:Ljava/lang/Object;

    monitor-enter v4

    .line 2810
    const-wide/16 v2, 0x0

    .line 2811
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT min(_id) FROM search_sequence"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 2813
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2814
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 2817
    :cond_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2819
    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 2820
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Backfilling search sequence table"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2821
    new-instance v2, Lcom/google/android/gm/provider/bf;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gm/provider/bf;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bf;->Hk()V

    .line 2823
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2825
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/SearchQuery;->HL()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gm/provider/SearchQuery;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gm/provider/SearchQuery;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 2817
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2823
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final e(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 3884
    iget v0, p1, Lcom/google/android/gm/provider/Advertisement;->bco:I

    packed-switch v0, :pswitch_data_0

    .line 3892
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Should not be updating viewStatus to NEW"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3906
    :goto_0
    return-void

    :pswitch_0
    move v0, v1

    .line 3896
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;I)V

    .line 3899
    iget-object v0, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    .line 3900
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3901
    const-string v3, "view_status"

    iget v4, p1, Lcom/google/android/gm/provider/Advertisement;->bco:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3902
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ads"

    const-string v5, "event_id = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v6

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3905
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->B(Ljava/util/Collection;)V

    goto :goto_0

    .line 3889
    :pswitch_1
    const/4 v0, 0x2

    .line 3890
    goto :goto_1

    .line 3884
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final el(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 8488
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v0, v0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/D;->el(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final endTransaction()V
    .locals 1

    .prologue
    .line 8385
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 8386
    return-void
.end method

.method public final f(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3938
    if-nez p1, :cond_1

    .line 3940
    const-string v1, "expiration < ? OR _id <> (SELECT MAX(_id) FROM ads)"

    .line 3942
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 3953
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ads"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3955
    if-lez v0, :cond_0

    .line 3957
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->Gp()V

    .line 3959
    :cond_0
    return-void

    .line 3946
    :cond_1
    const-string v1, "(expiration < ? OR _id <> (SELECT MAX(_id) FROM ads)) AND event_id <> ?"

    .line 3949
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    aput-object v2, v0, v5

    goto :goto_0
.end method

.method final f(Lcom/google/android/gm/provider/af;)V
    .locals 7

    .prologue
    .line 4899
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->d(Lcom/google/android/gm/provider/af;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 4900
    if-nez v0, :cond_1

    .line 4909
    :cond_0
    :goto_0
    return-void

    .line 4903
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    iget-wide v2, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/D;->ae(J)I

    move-result v1

    .line 4904
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "MailEngine.clearNewUnreadMailForNotificationLabelIfNeeded() Count: %d, label: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4906
    if-lez v1, :cond_0

    .line 4907
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/af;Lcom/google/android/gm/provider/af;)I

    goto :goto_0
.end method

.method public final f(Landroid/content/ContentValues;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4500
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    .line 4502
    const-string v0, "labelsIncluded"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "labelsIncluded"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4505
    :goto_0
    const-string v2, "labelsPartial"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "labelsPartial"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4508
    :goto_1
    const-string v3, "conversationAgeDays"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "conversationAgeDays"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 4511
    :goto_2
    const-string v5, "maxAttachmentSize"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "maxAttachmentSize"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 4514
    :cond_0
    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    return v0

    :cond_1
    move-object v0, v1

    .line 4502
    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 4505
    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 4508
    goto :goto_2
.end method

.method public final g(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 3963
    iget-object v0, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    .line 3964
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 3965
    const-string v2, "delete_status"

    iget v3, p1, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3966
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ads"

    const-string v4, "event_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3969
    if-lez v1, :cond_0

    .line 3971
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->B(Ljava/util/Collection;)V

    .line 3973
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 8107
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjc:Z

    if-nez v0, :cond_0

    .line 8108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bjl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8110
    :cond_0
    return-void
.end method

.method final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final onSyncCanceled()V
    .locals 1

    .prologue
    .line 2628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->biK:Z

    .line 2629
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->onSyncCanceled()V

    .line 2630
    return-void
.end method

.method public final p(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 8585
    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gm/provider/aa;->am(J)Lcom/google/android/gm/provider/aa;

    move-result-object v1

    .line 8589
    invoke-virtual {v1}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v1

    .line 8590
    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    invoke-static {p0, p1, v2, v1, v0}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 8593
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8627
    :cond_0
    :goto_0
    return-object v0

    .line 8597
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v1

    .line 8598
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v3

    .line 8599
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v4

    move-object v1, v0

    .line 8605
    :goto_1
    :try_start_0
    new-instance v5, Lcom/android/mail/providers/Folder;

    invoke-direct {v5, v2}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V

    .line 8606
    invoke-static {v5}, Lcom/google/android/gm/provider/GmailProvider;->u(Lcom/android/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v6

    .line 8609
    invoke-virtual {v5}, Lcom/android/mail/providers/Folder;->uX()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8610
    iget-object v0, v5, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 8620
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_8

    .line 8624
    if-eqz v0, :cond_5

    .line 8626
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8627
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8613
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/android/mail/providers/Folder;->uV()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 8614
    iget-object v1, v5, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 8615
    goto :goto_2

    .line 8617
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 8618
    :cond_4
    iget-object v0, v5, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8626
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8627
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 8624
    goto :goto_3

    .line 8626
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 8627
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :cond_8
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1
.end method

.method final p(Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8240
    .line 8241
    const/4 v0, 0x0

    .line 8244
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/provider/MailEngine;->p(IZ)V

    iput v1, p0, Lcom/google/android/gm/provider/MailEngine;->aAC:I

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bjl:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->biW:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine;->bjx:Z

    iput v1, p0, Lcom/google/android/gm/provider/MailEngine;->biV:I

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->bjl:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->biW:Ljava/lang/Runnable;

    iget v5, p0, Lcom/google/android/gm/provider/MailEngine;->biX:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8246
    if-eqz p1, :cond_1

    .line 8247
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 8249
    const-string v0, "label_canonical_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8253
    const-string v4, "active_network_query"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 8259
    if-eqz v4, :cond_1

    .line 8260
    const-string v4, "status"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8261
    sget-object v4, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beC:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 8264
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->eU(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_1

    .line 8265
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8266
    const-string v3, "command"

    const-string v4, "retry"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8267
    const-string v3, "force_refresh"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8268
    invoke-interface {p1, v1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move v1, v2

    .line 8275
    :cond_1
    if-nez v1, :cond_3

    .line 8276
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8277
    const-string v3, "force"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8281
    const-string v3, "do_not_retry"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8282
    const-string v3, "expedited"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8283
    if-eqz v0, :cond_2

    .line 8284
    const-string v2, "activeLabel"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8287
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v2, "gmail-ls"

    invoke-static {v0, v2, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8289
    :cond_3
    return-void
.end method

.method final p(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1793
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Broadcasting notifications for labels: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1795
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1801
    if-eqz v0, :cond_2

    .line 1802
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/gm/provider/T;->a(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_1

    .line 1807
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gm/provider/PublicContentProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 1810
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->bdw:Lcom/google/android/gm/provider/D;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Lcom/google/android/gm/provider/D;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0
.end method

.method final setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 8381
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V

    .line 8382
    return-void
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->Tw:Landroid/accounts/Account;

    const-string v1, "gmail-ls"

    invoke-static {v0, v1, p1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1153
    return-void
.end method
