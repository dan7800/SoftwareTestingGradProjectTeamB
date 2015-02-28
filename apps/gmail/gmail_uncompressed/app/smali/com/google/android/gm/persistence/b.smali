.class public final Lcom/google/android/gm/persistence/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static baR:I

.field public static baS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static baT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static baU:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static baV:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final baW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static baX:Lcom/google/android/gm/persistence/b;

.field private static baY:Ljava/lang/Boolean;

.field private static baZ:Ljava/lang/String;

.field private static bba:Ljava/util/Map;
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

.field private static bbb:Ljava/lang/String;

.field static bbc:I

.field static bbd:I

.field static bbe:I

.field static bbf:I

.field private static final bbg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static bbh:I


# instance fields
.field final bbi:Lcom/google/android/gm/persistence/e;

.field final bbj:Lcom/google/android/gm/persistence/d;

.field final bbk:Lcom/google/android/gm/persistence/f;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v8, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 65
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    .line 71
    sput v9, Lcom/google/android/gm/persistence/b;->baR:I

    .line 73
    sput v10, Lcom/google/android/gm/persistence/b;->baS:I

    .line 75
    sput v11, Lcom/google/android/gm/persistence/b;->baT:I

    .line 77
    sput v12, Lcom/google/android/gm/persistence/b;->baU:I

    .line 79
    sput v8, Lcom/google/android/gm/persistence/b;->baV:I

    .line 241
    const-string v0, "enable-notifications"

    const-string v1, "signature"

    const-string v2, "ringtone"

    const-string v3, "vibrateWhen"

    const-string v4, "unobtrusive"

    const-string v5, "auto-advance-key"

    const/16 v6, 0x13

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "swipe-key"

    aput-object v7, v6, v9

    const-string v7, "prefetch-attachments"

    aput-object v7, v6, v10

    const-string v7, "conversation-mode2"

    aput-object v7, v6, v11

    const-string v7, "action-strip-action-reply-all"

    aput-object v7, v6, v12

    const-string v7, "snap-headers"

    aput-object v7, v6, v8

    const/4 v7, 0x5

    const-string v8, "inbox-type"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "show-new-inbox-onboarding"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "display_images"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "notification_labels"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "conversation-list-sender-image"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "confirm-delete"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "archive"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "delete"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "send"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "confirm-actions-key"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "signature-key"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "vibrate"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "show-save-to-drive-promo"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "save-to-drive-promo-timestamp"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/persistence/b;->baW:Ljava/util/Set;

    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/persistence/b;->baX:Lcom/google/android/gm/persistence/b;

    .line 274
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/persistence/b;->baY:Ljava/lang/Boolean;

    .line 292
    const-string v0, " "

    sput-object v0, Lcom/google/android/gm/persistence/b;->bbb:Ljava/lang/String;

    .line 297
    sput v9, Lcom/google/android/gm/persistence/b;->bbc:I

    .line 299
    sput v10, Lcom/google/android/gm/persistence/b;->bbd:I

    .line 301
    sput v11, Lcom/google/android/gm/persistence/b;->bbe:I

    .line 303
    sput v12, Lcom/google/android/gm/persistence/b;->bbf:I

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    sput-object v0, Lcom/google/android/gm/persistence/b;->bbg:Ljava/util/List;

    const-string v1, "noreply\\-\\w+@plus\\.google\\.com"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/google/android/gm/persistence/b;->bbg:Ljava/util/List;

    const-string v1, "[0-9a-fA-F]+@plus\\.google\\.com"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/persistence/b;->bbh:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Lcom/google/android/gm/persistence/e;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/e;-><init>(Lcom/google/android/gm/persistence/b;)V

    iput-object v0, p0, Lcom/google/android/gm/persistence/b;->bbi:Lcom/google/android/gm/persistence/e;

    .line 333
    new-instance v0, Lcom/google/android/gm/persistence/d;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/d;-><init>(Lcom/google/android/gm/persistence/b;)V

    iput-object v0, p0, Lcom/google/android/gm/persistence/b;->bbj:Lcom/google/android/gm/persistence/d;

    .line 334
    new-instance v0, Lcom/google/android/gm/persistence/f;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/f;-><init>(Lcom/google/android/gm/persistence/b;)V

    iput-object v0, p0, Lcom/google/android/gm/persistence/b;->bbk:Lcom/google/android/gm/persistence/f;

    .line 335
    return-void
.end method

.method public static DD()Lcom/google/android/gm/persistence/b;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/google/android/gm/persistence/b;->baX:Lcom/google/android/gm/persistence/b;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/google/android/gm/persistence/b;

    invoke-direct {v0}, Lcom/google/android/gm/persistence/b;-><init>()V

    sput-object v0, Lcom/google/android/gm/persistence/b;->baX:Lcom/google/android/gm/persistence/b;

    .line 342
    :cond_0
    sget-object v0, Lcom/google/android/gm/persistence/b;->baX:Lcom/google/android/gm/persistence/b;

    return-object v0
.end method

.method private static H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    const-string v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1574
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v1

    .line 1575
    invoke-virtual {v1, p0, p1, v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1578
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gm/persistence/b;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1580
    invoke-static {p0, v2, p1}, Lcom/google/android/gm/persistence/b;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_0

    .line 1591
    :goto_0
    return-object v0

    .line 1585
    :cond_0
    sget-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v4, "We had an invalid inbox type set (%1$s), reverting to default"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1587
    const-string v0, "default"

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gm/persistence/b;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    if-eqz v3, :cond_1

    .line 1589
    const-string v0, "^sq_ig_i_personal"

    goto :goto_0

    .line 1591
    :cond_1
    const-string v0, "^i"

    goto :goto_0
.end method

.method private static I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1211
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1212
    :cond_0
    const/4 v0, 0x0

    .line 1220
    :cond_1
    return-object v0

    .line 1214
    :cond_2
    invoke-static {p0, p1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1216
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1218
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1731
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return-object p1

    .line 1734
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1735
    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1739
    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1740
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1742
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1743
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

    .line 1746
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1747
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1748
    invoke-static {v0}, Lcom/google/android/mail/common/base/K;->gK(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1754
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1756
    const/4 p1, 0x0

    goto :goto_0

    .line 1754
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1760
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1780
    :cond_0
    :goto_0
    return-object p1

    .line 1764
    :cond_1
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1765
    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1766
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1768
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1769
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1770
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1771
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

    .line 1774
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 1778
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1780
    const/4 p1, 0x0

    goto :goto_0

    .line 1778
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    if-eqz p2, :cond_0

    .line 453
    const-string v0, "Gmail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4, p5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 455
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "Gmail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gm/persistence/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Set;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1281
    if-nez p0, :cond_0

    .line 1282
    sget-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v2, "attributes was null when trying to find key: %1$d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 1295
    :goto_0
    return-object v0

    .line 1285
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1286
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1287
    if-nez v0, :cond_2

    .line 1288
    sget-object v4, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v5, "attributes contained a null value when trying to find key: %1$d. attributes was: $2$s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1291
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1292
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1295
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 854
    :cond_0
    sget-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v1, "Migrating sync settings from %s to %s /// %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 858
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v0

    .line 859
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 860
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 861
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 862
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 864
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 865
    invoke-interface {v2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 871
    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/Gmail$Settings;->y(Ljava/util/Collection;)V

    .line 872
    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->z(Ljava/util/Collection;)V

    .line 874
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 868
    :cond_1
    invoke-interface {v1, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 831
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 832
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v1, "Migrating notification settings from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gm/preference/j;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/google/android/gm/preference/j;

    invoke-direct {v1, p0, p1, p3, v3}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/mail/i/e;->to()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/e;->aW(Z)V

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/e;->bE(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mail/i/e;->tv()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/e;->aX(Z)V

    invoke-virtual {v0}, Lcom/android/mail/i/e;->tw()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/e;->aY(Z)V

    :cond_0
    const-string v1, "^sq_ig_i_personal"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fn()Lcom/google/android/gm/provider/D;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->GA()V

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gm/provider/MailEngine;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, p1}, Lcom/google/android/gm/ay;->x(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v3

    invoke-static {p0, p1, p3}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v1, "Folder was null in migrateNotificationSettings."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 833
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 835
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/GmailProvider;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 836
    return-void

    .line 832
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mail/i/e;->aW(Z)V

    goto :goto_0

    :cond_3
    iget v1, v4, Lcom/android/mail/providers/Folder;->aAf:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;IILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 896
    :cond_0
    if-nez p5, :cond_1

    .line 897
    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 898
    invoke-virtual {v0, p2}, Lcom/google/android/gm/provider/MailEngine;->el(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    sget-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v1, "Not disabling sync because %s is still visible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 905
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v0

    .line 906
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 907
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 908
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 909
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 911
    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 912
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 914
    if-eqz p4, :cond_2

    .line 915
    invoke-interface {v2, p4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 916
    invoke-interface {v1, p4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 919
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/Gmail$Settings;->y(Ljava/util/Collection;)V

    .line 920
    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->z(Ljava/util/Collection;)V

    .line 922
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1870
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1871
    invoke-static {p0, p1, v0}, Lcom/google/android/gm/persistence/b;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2035
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2036
    if-eqz v0, :cond_0

    .line 2037
    sget-object v1, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v2, "Saving %s-%s timestamp: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2038
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2040
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1133
    invoke-static {p0}, Lcom/google/android/gm/persistence/b;->bB(Landroid/content/Context;)V

    .line 1136
    if-eqz p1, :cond_0

    .line 1137
    sget v0, Lcom/google/android/gm/persistence/b;->baU:I

    invoke-static {p1, v0}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1142
    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/gm/persistence/b;->bba:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1145
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/android/gm/persistence/b;->dJ(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    return v0

    .line 1139
    :cond_0
    sget-object v0, Lcom/google/android/gm/persistence/b;->baZ:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 1142
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1145
    :cond_2
    invoke-static {v1}, Lcom/google/android/gm/persistence/b;->dJ(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notification_labels"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 1264
    :cond_0
    :goto_0
    return-object p4

    .line 1258
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/persistence/b;->bbb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/b;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1260
    if-eqz v0, :cond_0

    .line 1264
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/b;->baS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/b;->bbc:I

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/b;->bbd:I

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/b;->baU:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/b;->bbe:I

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/b;->baV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/b;->bbf:I

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 461
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 462
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 465
    invoke-static {p3}, Lcom/google/android/gm/persistence/b;->dH(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public static bA(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1086
    const-string v1, "gmail_profile_address_patterns"

    invoke-static {v0, v1}, Lcom/google/android/gsf/c;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized bB(Landroid/content/Context;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1168
    const-class v1, Lcom/google/android/gm/persistence/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/persistence/b;->baY:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gm/persistence/b;->bba:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1170
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1171
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/persistence/b;->baY:Ljava/lang/Boolean;

    .line 1173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1174
    const v2, 0x7f09035d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/persistence/b;->baZ:Ljava/lang/String;

    .line 1176
    const v2, 0x7f09035c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1177
    const v3, 0x7f09035d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1178
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v4

    .line 1181
    invoke-virtual {v4, v2, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 1182
    invoke-virtual {v4, v3, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 1186
    const v5, 0x7f09036a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 1188
    const v2, 0x7f09036b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 1191
    invoke-virtual {v4}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/persistence/b;->bba:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    :cond_1
    monitor-exit v1

    return-void

    .line 1170
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bE(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1379
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/b;->bF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    if-nez v0, :cond_0

    .line 1382
    const v0, 0x7f090168

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1384
    :cond_0
    return-object v0
.end method

.method private bF(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1398
    const-string v0, "auto-advance-key"

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    if-nez v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/google/android/gm/persistence/b;->bbj:Lcom/google/android/gm/persistence/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/persistence/d;->bU(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1408
    :cond_0
    if-nez v0, :cond_1

    .line 1409
    const-string v0, "auto-advance"

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1412
    :cond_1
    return-object v0
.end method

.method private bJ(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1479
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1485
    const-string v0, "confirm-actions-key"

    invoke-direct {p0, p1, v2, v0, v2}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    if-nez v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/google/android/gm/persistence/b;->bbi:Lcom/google/android/gm/persistence/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/persistence/e;->bU(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1494
    :cond_0
    if-nez v0, :cond_1

    .line 1495
    const-string v0, "confirm-actions"

    invoke-direct {p0, p1, v2, v0, v2}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    :cond_1
    if-nez v0, :cond_2

    .line 1500
    const v0, 0x7f090359

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1503
    :cond_2
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public static bP(Landroid/content/Context;)Lcom/google/android/gm/provider/aU;
    .locals 1

    .prologue
    .line 1956
    new-instance v0, Lcom/google/android/gm/persistence/g;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static br(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 350
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static bz(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1054
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_social_network_sender_patterns"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sget v2, Lcom/google/android/gm/persistence/b;->bbh:I

    if-eq v1, v2, :cond_0

    sput v1, Lcom/google/android/gm/persistence/b;->bbh:I

    const-string v1, ";"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/android/gm/persistence/b;->bbg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/google/android/gm/persistence/b;->bbg:Ljava/util/List;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    :cond_0
    sget-object v0, Lcom/google/android/gm/persistence/b;->bbg:Ljava/util/List;

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 435
    if-eqz p2, :cond_0

    .line 436
    const-string v0, "Gmail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Gmail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 978
    const-string v0, "inbox-type"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gm/persistence/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    if-eqz p4, :cond_0

    .line 981
    invoke-static {p2}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fs()V

    .line 983
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 443
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 444
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    invoke-static {p3}, Lcom/google/android/gm/persistence/b;->dH(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private static dH(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 487
    invoke-static {p0}, Lcom/google/android/gm/persistence/b;->dI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "Shared preferences"

    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->dataChanged(Ljava/lang/String;)V

    .line 490
    :cond_0
    return-void
.end method

.method private static dI(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 493
    if-nez p0, :cond_0

    .line 500
    :goto_0
    return v0

    .line 496
    :cond_0
    const/16 v1, 0x5e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 497
    if-ltz v1, :cond_1

    .line 498
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 500
    :cond_1
    sget-object v0, Lcom/google/android/gm/persistence/b;->baW:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static dJ(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1155
    if-nez p0, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/android/gm/persistence/b;->baZ:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "Gmail"

    return-object v0
.end method

.method private static j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    if-eqz p1, :cond_1

    .line 356
    invoke-static {p0}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gm/persistence/b;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 364
    :cond_1
    return-object p2
.end method

.method private l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 419
    if-eqz p2, :cond_0

    .line 420
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 422
    :cond_0
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 931
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 932
    new-instance v0, Lcom/google/android/gm/preference/j;

    invoke-direct {v0, p0, p1, p2, v6}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v6}, Lcom/google/android/gm/preference/j;->aW(Z)V

    .line 933
    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1600
    const-string v0, "priority"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    const-string v0, "^iim"

    .line 1611
    :goto_0
    return-object v0

    .line 1602
    :cond_0
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1603
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/gm/persistence/b;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1604
    if-eqz v0, :cond_1

    .line 1605
    const-string v0, "^sq_ig_i_personal"

    goto :goto_0

    .line 1608
    :cond_1
    const-string v0, "^i"

    goto :goto_0

    .line 1611
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1880
    new-instance v0, Lcom/google/android/gm/preference/j;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1883
    invoke-virtual {v0}, Lcom/android/mail/i/e;->to()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1884
    invoke-virtual {v0, v2}, Lcom/android/mail/i/e;->aW(Z)V

    .line 1887
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gm/ay;->x(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 1888
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gm/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 1894
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1895
    invoke-static {p0, v0, v1, v2}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V

    .line 1897
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    const-string v0, "account-alias"

    invoke-static {p2, v0}, Lcom/google/android/gm/persistence/b;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    const-string v0, "signature"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    if-nez v0, :cond_0

    .line 562
    const-string v0, "signature-key"

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_0
    if-nez v0, :cond_1

    .line 567
    const-string v0, ""

    .line 570
    :cond_1
    return-object v0
.end method

.method public final C(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 609
    const-string v0, "enable-notifications"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final D(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 617
    const-string v0, "enable-notifications"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final E(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 798
    const-string v0, "server-sectioned-inbox"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final F(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 806
    const-string v0, "show-new-inbox-onboarding"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    const-string v0, "show-new-inbox-onboarding"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 809
    :cond_0
    return-void
.end method

.method public final G(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 812
    const-string v0, "show-new-inbox-onboarding"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "show-new-inbox-onboarding"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    const-string v0, "show-new-inbox-onboarding"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 816
    :cond_0
    return-void
.end method

.method public final H(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1299
    invoke-static {p1}, Lcom/android/mail/utils/ag;->aF(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1300
    :goto_0
    const-string v1, "prefetch-attachments"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final L(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2088
    const-string v0, "no_longer_rename_eligible"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final M(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2092
    const-string v0, "no_longer_rename_eligible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2093
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 944
    const-string v0, "inbox-type"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    const-string v0, "inbox-type"

    const-string v1, "default"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 959
    :cond_0
    :goto_0
    return-object v1

    .line 949
    :cond_1
    const-string v0, "priority-inbox-key"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "priority-inbox-key"

    .line 951
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 952
    if-eqz v1, :cond_3

    const-string v1, "priority"

    .line 955
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 949
    :cond_2
    const-string v0, "priority-inbox"

    goto :goto_1

    .line 952
    :cond_3
    const-string v1, "default"

    goto :goto_2
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 524
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 525
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 526
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 527
    invoke-static {p3}, Lcom/google/android/gm/persistence/b;->dH(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1986
    const-string v3, "^sq_ig_i_social"

    const-string v5, "teaser-timestamp-dismissed-social"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v3, "^sq_ig_i_promo"

    const-string v5, "teaser-timestamp-dismissed-promo"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v3, "^sq_ig_i_notification"

    const-string v5, "teaser-timestamp-dismissed-notification"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v3, "^sq_ig_i_group"

    const-string v5, "teaser-timestamp-dismissed-group"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Set;Lcom/google/android/gm/provider/ag;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gm/provider/ag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 718
    invoke-static {p1, p2}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    const-string v0, "server-sectioned-inbox"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 721
    const-string v1, "server-sectioned-inbox"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 723
    if-ne p3, v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-static {p2}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fs()V

    .line 737
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "^sq_ig_i_personal"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    .line 740
    :goto_1
    const-string v0, "default"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    if-eqz p3, :cond_2

    .line 747
    const-string v0, "^i"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 751
    invoke-interface/range {p5 .. p5}, Lcom/google/android/gm/provider/ag;->FK()V

    .line 790
    :goto_2
    if-eqz p3, :cond_5

    .line 791
    const-string v0, "^i"

    invoke-static {p1, p2, v0}, Lcom/google/android/gm/persistence/b;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v4, p4

    .line 737
    goto :goto_1

    .line 753
    :cond_2
    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    move-object v8, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 757
    invoke-interface/range {p5 .. p5}, Lcom/google/android/gm/provider/ag;->FK()V

    goto :goto_2

    .line 770
    :cond_3
    if-eqz p3, :cond_4

    .line 772
    const-string v2, "^i"

    .line 773
    const-string v3, "^sq_ig_i_personal"

    .line 775
    const-string v0, "^i"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    move-object v11, v0

    move-object v0, v4

    move-object v4, v11

    .line 784
    :goto_3
    invoke-static {p1, p2, v2, v3, v0}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 785
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    goto :goto_2

    .line 778
    :cond_4
    const-string v2, "^sq_ig_i_personal"

    .line 779
    const-string v3, "^i"

    .line 780
    const-string v0, "^i"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_3

    .line 793
    :cond_5
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-static {p1, p2, v0}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1681
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/SharedPreference;

    .line 1682
    invoke-virtual {v0}, Lcom/google/android/gm/SharedPreference;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1683
    invoke-virtual {v0}, Lcom/google/android/gm/SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1686
    invoke-static {v3}, Lcom/google/android/gm/persistence/b;->dI(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1687
    invoke-virtual {v0}, Lcom/google/android/gm/SharedPreference;->Dc()Ljava/lang/String;

    move-result-object v4

    .line 1691
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 1692
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v4, v3, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1693
    sget-object v1, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v3, "Restore: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1694
    :cond_1
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1695
    check-cast v1, Ljava/lang/String;

    .line 1700
    const-string v5, "ringtone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1701
    invoke-static {p1, v1}, Lcom/google/android/gm/persistence/b;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    if-nez v1, :cond_2

    .line 1703
    sget-object v0, Lcom/google/android/gm/persistence/b;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t restore ringtone (not found)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1707
    :cond_2
    invoke-direct {p0, p1, v4, v3, v1}, Lcom/google/android/gm/persistence/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const-string v1, "Restore: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {p3, v1, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1709
    :cond_3
    instance-of v0, v1, Ljava/util/Set;

    if-eqz v0, :cond_6

    .line 1711
    check-cast v1, Ljava/util/Set;

    .line 1712
    const-string v0, "notification_labels"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1713
    sget v0, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-static {v1, v0}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v5

    .line 1714
    invoke-static {p1, v5}, Lcom/google/android/gm/persistence/b;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1715
    if-nez v0, :cond_4

    .line 1716
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1719
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1722
    :cond_5
    const-string v0, "Gmail"

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, v4, v3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v3}, Lcom/google/android/gm/persistence/b;->dH(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1724
    :cond_6
    const-string v0, "Unknown preference data type: %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {p3, v0, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1727
    :cond_7
    const-string v0, "Gmail"

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1728
    return-void
.end method

.method public final a(Landroid/content/Context;ZLjava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1564
    const-string v0, "cache-google-accounts-synced"

    .line 1566
    const-string v1, " "

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1567
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/gm/persistence/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    return-void
.end method

.method public final b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1548
    if-eqz p2, :cond_0

    const-string v0, "cache-google-accounts"

    .line 1550
    :goto_0
    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    const-string v1, " "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1552
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 1548
    :cond_0
    const-string v0, "cache-google-accounts-synced"

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2023
    const-string v3, "^sq_ig_i_social"

    const-string v5, "teaser-timestamp-displayed-social"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    const-string v3, "^sq_ig_i_promo"

    const-string v5, "teaser-timestamp-displayed-promo"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string v3, "^sq_ig_i_notification"

    const-string v5, "teaser-timestamp-displayed-notification"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const-string v3, "^sq_ig_i_group"

    const-string v5, "teaser-timestamp-displayed-group"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1304
    const-string v0, "prefetch-attachments"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1305
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 531
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bC(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1309
    const/4 v0, 0x0

    const-string v1, "snap-headers"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bD(Landroid/content/Context;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1315
    const/4 v0, 0x0

    const-string v1, "conversation-mode2"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bG(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1421
    const-string v0, "swipe-key"

    const-string v1, "archive"

    const-string v2, "Gmail"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bH(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1427
    const-string v0, "older"

    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/b;->bE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bI(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1433
    const-string v0, "newer"

    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/b;->bE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bK(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/b;->bJ(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "archive"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bL(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/b;->bJ(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "delete"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bM(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1518
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/b;->bJ(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "send"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bN(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1531
    const-string v0, "show-sync-window-upgrade"

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    :goto_0
    return-void

    .line 1534
    :cond_0
    const-string v0, "show-sync-window-upgrade"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final bO(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 1618
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    const-string v0, "Gmail"

    invoke-virtual {p1, v0, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1620
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 1622
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1623
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1627
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1628
    const/16 v2, 0x2d

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1629
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1630
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1636
    :goto_1
    invoke-static {v2}, Lcom/google/android/gm/persistence/b;->dI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1642
    const-string v9, "ringtone"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1643
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gm/persistence/b;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    if-eqz v0, :cond_0

    .line 1672
    :goto_2
    new-instance v1, Lcom/google/android/gm/SharedPreference;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gm/SharedPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-object v3, v4

    .line 1633
    goto :goto_1

    .line 1648
    :cond_2
    const-string v0, "notification_labels"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1650
    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1651
    if-eqz v0, :cond_0

    .line 1652
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1657
    sget v5, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1658
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1659
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1660
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gm/persistence/b;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    if-nez v0, :cond_3

    .line 1662
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1665
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1667
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 1670
    goto :goto_2

    .line 1675
    :cond_6
    return-object v6

    :cond_7
    move-object v0, v5

    goto :goto_2
.end method

.method public final bQ(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 2043
    const/4 v2, 0x0

    const-string v3, "last_sync_time"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2044
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    :cond_0
    return-wide v4
.end method

.method public final bR(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 2048
    const/4 v2, 0x0

    const-string v3, "last_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2049
    return-void
.end method

.method public final bS(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 2052
    const-string v0, "welcome_tour_version"

    const-string v1, "Gmail"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bT(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 2083
    const/4 v0, 0x0

    const-string v1, "force_show_welcome_tour"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bs(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    const-string v0, "active-account"

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bt(Landroid/content/Context;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 582
    const-string v2, "Gmail"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 583
    const-string v3, "conversation-list-sender-image"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 588
    const-string v3, "hide-checkboxes"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 591
    const-string v1, "allow-batch"

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    const-string v1, "allow-batch"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 597
    :cond_1
    const-string v3, "hide-checkboxes"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 598
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 601
    :cond_2
    const-string v1, "conversation-list-sender-image"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final bu(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    const/4 v0, 0x0

    const-string v1, "action-strip-action-reply-all"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final bv(Landroid/content/Context;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 680
    const-string v0, "action-strip-action-reply-all"

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gm/persistence/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "action-strip-action-reply-all"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 691
    :goto_0
    return v0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/persistence/b;->bbk:Lcom/google/android/gm/persistence/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/persistence/f;->bU(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 686
    if-nez v0, :cond_1

    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 691
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final bw(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/b;->bF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bx(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1027
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1028
    const-string v0, "display_images"

    const-string v1, ""

    invoke-direct {p0, p1, v5, v0, v1}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1031
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1032
    const/4 v0, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 1033
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v0

    const-string v0, "display_images"

    const-string v1, ""

    invoke-direct {p0, p1, v5, v0, v1}, Lcom/google/android/gm/persistence/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    return-object v2
.end method

.method public final by(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1048
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1049
    const/4 v1, 0x0

    const-string v2, "display_sender_images_patterns_set"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 2079
    const/4 v0, 0x0

    const-string v1, "force_show_welcome_tour"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2080
    return-void
.end method

.method public final k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 400
    const/4 v0, 0x0

    const-string v1, "account-alias"

    invoke-static {p2, v1}, Lcom/google/android/gm/persistence/b;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gm/persistence/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public final m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 574
    const-string v0, "signature"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gm/persistence/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public final o(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2063
    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/b;->bS(Landroid/content/Context;)I

    move-result v0

    .line 2064
    if-le p2, v0, :cond_0

    .line 2065
    const-string v1, "WelcomeTour"

    const-string v2, "Updated shared pref for welcome_tour_version_shown: %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2068
    const-string v0, "welcome_tour_version"

    const-string v1, "Gmail"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/google/android/gm/persistence/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0}, Lcom/google/android/gm/persistence/b;->dH(Ljava/lang/String;)V

    .line 2070
    :cond_0
    return-void
.end method

.method public final o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 967
    return-void
.end method

.method public final p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1229
    .line 1230
    invoke-static {p1, p2}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1233
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/google/android/gm/persistence/b;->baS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "ringtone"

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "ringtone"

    invoke-direct {p0, p1, v0, v2, v0}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/b;->baU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "vibrate"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09035c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "vibrateWhen"

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/b;->baV:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unobtrusive"

    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1241
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1237
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09035d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public final s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1965
    const-string v0, "^sq_ig_i_social"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1966
    const-string v3, "teaser-timestamp-dismissed-social"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1975
    :cond_0
    :goto_0
    return-wide v4

    .line 1967
    :cond_1
    const-string v0, "^sq_ig_i_promo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1968
    const-string v3, "teaser-timestamp-dismissed-promo"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 1969
    :cond_2
    const-string v0, "^sq_ig_i_notification"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1970
    const-string v3, "teaser-timestamp-dismissed-notification"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 1971
    :cond_3
    const-string v0, "^sq_ig_i_group"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    const-string v3, "teaser-timestamp-dismissed-group"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2002
    const-string v0, "^sq_ig_i_social"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2003
    const-string v3, "teaser-timestamp-displayed-social"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 2012
    :cond_0
    :goto_0
    return-wide v4

    .line 2004
    :cond_1
    const-string v0, "^sq_ig_i_promo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2005
    const-string v3, "teaser-timestamp-displayed-promo"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 2006
    :cond_2
    const-string v0, "^sq_ig_i_notification"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2007
    const-string v3, "teaser-timestamp-displayed-notification"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 2008
    :cond_3
    const-string v0, "^sq_ig_i_group"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    const-string v3, "teaser-timestamp-displayed-group"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public final z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    const-string v1, "active-account"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gm/persistence/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method
