.class public final Lcom/google/android/gm/provider/MailSync;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NAMESPACE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final bhh:Ljava/util/regex/Pattern;

.field public static final blj:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field static final blk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final bll:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blq:Ljava/lang/Object;

.field private static final blu:[Ljava/lang/String;

.field static final synthetic vb:Z


# instance fields
.field private final Hb:Landroid/content/ContentResolver;

.field bcK:Lcom/google/android/gm/provider/bG;

.field public blm:Z

.field private volatile bln:Z

.field private blo:J

.field private final blp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blr:Lcom/google/android/gm/provider/ba;

.field private final bls:Ljava/util/Map;
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

.field private blt:Ljava/util/Map;
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

.field private blv:[J

.field private blw:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    const-class v0, Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/MailSync;->vb:Z

    .line 128
    sput-object v6, Lcom/google/android/gm/provider/MailSync;->blj:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 327
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "^r"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->blk:Ljava/util/Set;

    .line 328
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "^i"

    aput-object v3, v0, v2

    const-string v3, "^f"

    aput-object v3, v0, v1

    const-string v3, "^iim"

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->bll:Ljava/util/Set;

    .line 340
    sput-object v6, Lcom/google/android/gm/provider/MailSync;->NAMESPACE:Ljava/lang/String;

    .line 343
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->bhh:Ljava/util/regex/Pattern;

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->blq:Ljava/lang/Object;

    .line 589
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    .line 746
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "M"

    aput-object v3, v0, v2

    const-string v2, "L"

    aput-object v2, v0, v1

    const-string v1, "C"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "U"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "u"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->blu:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gm/provider/ba;Lcom/google/android/gm/provider/bG;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/ba;",
            "Lcom/google/android/gm/provider/bG;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-boolean v6, p0, Lcom/google/android/gm/provider/MailSync;->blm:Z

    .line 354
    iput-wide v4, p0, Lcom/google/android/gm/provider/MailSync;->blo:J

    .line 356
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    .line 2627
    iput-boolean v6, p0, Lcom/google/android/gm/provider/MailSync;->blw:Z

    .line 601
    iput-object p1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    .line 602
    iput-object p2, p0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    .line 603
    iput-object p4, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    .line 604
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    .line 606
    iput-object p3, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    .line 607
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    .line 612
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->Hr()V

    .line 614
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "startSyncNeeded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "needConfigSuggestion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    const-string v0, "needConfigSuggestion"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "unackedSentOperations"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 625
    const-string v0, "unackedSentOperations"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "nextUnackedSentOp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 629
    const-string v0, "nextUnackedSentOp"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "errorCountNextUnackedSentOp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 633
    const-string v0, "errorCountNextUnackedSentOp"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 636
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "nextUnackedOpWriteTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 637
    const-string v0, "nextUnackedOpWriteTime"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 640
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "serverVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 641
    const-string v0, "serverVersion"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "clientOpToAck"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 645
    const-string v0, "clientOpToAck"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 648
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "clientId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 649
    const-string v0, "clientId"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 652
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "configDirty"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 653
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v8}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 656
    :cond_9
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "conversationAgeDays"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 657
    const-string v0, "conversationAgeDays"

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->bY(Landroid/content/Context;)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 661
    :cond_a
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "maxAttachmentSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 662
    const-string v0, "maxAttachmentSize"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 666
    :cond_b
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "highestProcessedServerOperationId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 667
    const-string v0, "highestProcessedServerOperationId"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 670
    :cond_c
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "lowestBackwardConversationId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 671
    const-string v0, "lowestBackwardConversationId"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 674
    :cond_d
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "highestBackwardConversationId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 675
    const-string v0, "highestBackwardConversationId"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 678
    :cond_e
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "moreForwardSyncNeeded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 679
    const-string v0, "moreForwardSyncNeeded"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 682
    :cond_f
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "labelsIncluded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 683
    const-string v0, "labelsIncluded"

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->blk:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    .line 686
    :cond_10
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "labelsPartial"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 687
    const-string v0, "labelsPartial"

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->bll:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    .line 690
    :cond_11
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "labelsAll"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 691
    const-string v0, "labelsAll"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->aa(Ljava/lang/String;Ljava/lang/String;)Z

    .line 694
    :cond_12
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "messageSequenceNumber"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 695
    const-string v0, "messageSequenceNumber"

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 700
    :cond_13
    if-eqz p5, :cond_14

    .line 701
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v8}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 704
    invoke-direct {p0, v7, v7, v7}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 705
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 707
    :cond_14
    return-void
.end method

.method private He()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->He()Ljava/util/ArrayList;

    move-result-object v0

    .line 1520
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1521
    return-object v0
.end method

.method private Hs()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1212
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v1, "ix_awtsv"

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/ba;->eW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1214
    if-nez v4, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1217
    const-string v5, "WelcomeTour"

    const-string v6, "Checking welcome tour status after sync for %s - account pref was %s "

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->Dc()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    if-nez v4, :cond_3

    const-string v0, "not set"

    :goto_1
    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1222
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v4

    .line 1224
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->blq:Ljava/lang/Object;

    monitor-enter v5

    .line 1225
    :try_start_0
    new-instance v0, Lcom/google/android/gm/a;

    iget-object v6, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/google/android/gm/a;-><init>(Landroid/content/Context;)V

    .line 1226
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "mail"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "gmailrenameeligible"

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/gm/a;->w([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1231
    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v7}, Lcom/google/android/gm/provider/ba;->Dc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1240
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Z)V

    .line 1242
    const-string v0, "WelcomeTour"

    const-string v2, "Forcing display of welcome tour for rename eligible account %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v7}, Lcom/google/android/gm/provider/ba;->Dc()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gm/persistence/b;->o(Landroid/content/Context;I)V

    .line 1248
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1214
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 1217
    goto :goto_1

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private Hz()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1539
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    const-string v2, "gmail_config_info_min_server_version"

    invoke-static {v1, v2}, Lcom/google/android/gsf/c;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1541
    if-nez v1, :cond_0

    .line 1545
    :goto_0
    return v0

    .line 1543
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1545
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)I
    .locals 7

    .prologue
    .line 1048
    if-nez p1, :cond_0

    .line 1049
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null HttpResponse in MailSync.handleResponse"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_0
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1053
    if-nez v0, :cond_1

    .line 1054
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Content-Type header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1058
    const-string v1, "application/vnd.google-x-gms-proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gm/provider/MailSync;->b(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)I

    move-result v0

    return v0

    .line 1060
    :cond_2
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1061
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 1062
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "errors"

    const-string v2, "sync_http_response_code"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1064
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    invoke-static {p1}, Lcom/google/android/gm/provider/MailSync;->d(Lorg/apache/http/HttpResponse;)V

    .line 1067
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server returned unhandled response content type (text/html status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown response content type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bk;)J
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 3371
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 3372
    invoke-interface {p1}, Lcom/google/android/gm/provider/bk;->GO()V

    .line 3375
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3376
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gm/provider/bk;->aF(J)V

    .line 3379
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3380
    const/4 v1, 0x3

    invoke-static {p0, v1, v0}, Lcom/google/android/gm/provider/bv;->b(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 3381
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/a/a;

    .line 3382
    new-instance v2, Lcom/google/android/gm/provider/bi;

    invoke-direct {v2}, Lcom/google/android/gm/provider/bi;-><init>()V

    .line 3383
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/bi;->bku:J

    .line 3385
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/bi;->bhx:J

    .line 3387
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->dN(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/bi;->blF:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 3389
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/bi;->blA:J

    .line 3391
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/google/android/gm/provider/bi;->blB:I

    .line 3393
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/android/gm/provider/bi;->ayX:Z

    .line 3395
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/bi;->blE:J

    .line 3396
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/bi;->ayV:Ljava/lang/String;

    .line 3398
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/bi;->abh:Ljava/lang/String;

    .line 3401
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    .line 3402
    const/16 v3, 0xb

    iget-object v4, v2, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/bv;->a(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 3406
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/s;->b(Lcom/google/common/a/a/a;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gm/provider/bi;->blD:[B

    .line 3410
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3411
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bi;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3413
    :cond_1
    invoke-interface {p1, v2}, Lcom/google/android/gm/provider/bk;->a(Lcom/google/android/gm/provider/bi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 3417
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/gm/provider/bk;->GP()V

    throw v0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gm/provider/bk;->GP()V

    .line 3419
    invoke-static {}, Lcom/google/android/gm/b/a;->Dx()V

    .line 3421
    invoke-virtual {p0, v7}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/ba;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    return-object v0
.end method

.method private a(Lcom/google/common/a/a/a;J)Lcom/google/android/gm/provider/bl;
    .locals 10

    .prologue
    .line 2425
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 2426
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getBytes(I)[B

    move-result-object v7

    .line 2427
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    .line 2429
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v8

    .line 2430
    new-instance v1, Lcom/google/android/gm/provider/y;

    invoke-direct {v1}, Lcom/google/android/gm/provider/y;-><init>()V

    .line 2432
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v4, p2

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/android/gm/provider/y;JJZ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2439
    invoke-virtual {v1}, Lcom/google/android/gm/provider/y;->DV()J

    move-result-wide v2

    .line 2440
    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    .line 2441
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v1, "Dictionary checksum mismatch for conversation %d. Expected %x but was %x"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2443
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 2444
    const/4 v0, 0x0

    .line 2447
    :goto_0
    return-object v0

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    sget-object v1, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v2, "Out of memory while creating dictionary for conversation %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2436
    const/4 v0, 0x0

    goto :goto_0

    .line 2447
    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/bl;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/y;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/provider/bK;

    invoke-direct {v2, v1}, Lcom/google/android/gm/provider/bK;-><init>([B)V

    new-instance v1, Lcom/google/android/gm/provider/bL;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3, v2}, Lcom/google/android/gm/provider/bL;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/bl;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private a(Lcom/google/common/a/a/a;JLcom/google/android/gm/provider/y;)Lcom/google/android/gm/provider/bm;
    .locals 10

    .prologue
    .line 3125
    new-instance v9, Lcom/google/android/gm/provider/bm;

    invoke-direct {v9}, Lcom/google/android/gm/provider/bm;-><init>()V

    .line 3126
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->Dc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blK:Ljava/lang/String;

    .line 3127
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/bm;->bkt:J

    .line 3128
    iput-wide p2, v9, Lcom/google/android/gm/provider/bm;->bku:J

    .line 3129
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->f(Lcom/google/common/a/a/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blC:Ljava/lang/String;

    .line 3131
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/bm;->blR:J

    .line 3132
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/bm;->aBf:J

    .line 3133
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->ayV:Ljava/lang/String;

    .line 3134
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->abh:Ljava/lang/String;

    .line 3135
    const-string v0, ""

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blS:Ljava/lang/String;

    .line 3136
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->dN(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blF:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 3138
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    iput-boolean v0, v9, Lcom/google/android/gm/provider/bm;->blU:Z

    .line 3141
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    :goto_0
    iput-wide v0, v9, Lcom/google/android/gm/provider/bm;->blZ:J

    .line 3144
    const/16 v0, 0xe

    iget-object v1, v9, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/bv;->a(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 3145
    iget-object v0, v9, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3149
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gm/provider/ba;->ar(J)Lcom/google/android/gm/provider/af;

    goto :goto_1

    .line 3141
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3152
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blN:Ljava/util/List;

    .line 3153
    const/16 v0, 0x9

    iget-object v1, v9, Lcom/google/android/gm/provider/bm;->blN:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;ILjava/util/List;)V

    .line 3154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blO:Ljava/util/List;

    .line 3155
    const/16 v0, 0xa

    iget-object v1, v9, Lcom/google/android/gm/provider/bm;->blO:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;ILjava/util/List;)V

    .line 3156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blP:Ljava/util/List;

    .line 3157
    const/16 v0, 0xb

    iget-object v1, v9, Lcom/google/android/gm/provider/bm;->blP:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;ILjava/util/List;)V

    .line 3158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->blQ:Ljava/util/List;

    .line 3159
    const/16 v0, 0xc

    iget-object v1, v9, Lcom/google/android/gm/provider/bm;->blQ:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;ILjava/util/List;)V

    .line 3162
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3163
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getBytes(I)[B

    move-result-object v1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    iget-wide v4, v9, Lcom/google/android/gm/provider/bm;->bkt:J

    iget-wide v6, v9, Lcom/google/android/gm/provider/bm;->bku:J

    move-object v0, p0

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/MailSync;->a([BJJJLcom/google/android/gm/provider/y;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    .line 3174
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 3176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3177
    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/provider/bv;->b(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 3178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/a/a;

    .line 3179
    new-instance v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-direct {v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;-><init>()V

    .line 3180
    const/4 v1, 0x0

    iput v1, v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    .line 3181
    iget-wide v4, v9, Lcom/google/android/gm/provider/bm;->bku:J

    iput-wide v4, v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    .line 3182
    iget-wide v4, v9, Lcom/google/android/gm/provider/bm;->bkt:J

    iput-wide v4, v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    .line 3183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    .line 3184
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setName(Ljava/lang/String;)Z

    .line 3185
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setContentType(Ljava/lang/String;)V

    .line 3187
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    .line 3188
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fn(Ljava/lang/String;)V

    .line 3190
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    const-string v4, "gmail-attachment-respect-visibility-type"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 3193
    :goto_4
    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3194
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->dZ(I)V

    .line 3199
    :goto_5
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3200
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v1, "readMessageFromProto: attachment = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->uC()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3203
    :cond_2
    iget-object v0, v9, Lcom/google/android/gm/provider/bm;->blT:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3204
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    goto/16 :goto_3

    .line 3171
    :cond_3
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    goto/16 :goto_2

    .line 3190
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 3197
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->dZ(I)V

    goto :goto_5

    .line 3207
    :cond_6
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3208
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/google/android/gm/provider/bm;->bmb:I

    .line 3213
    :goto_6
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3214
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput v0, v9, Lcom/google/android/gm/provider/bm;->bmd:I

    .line 3219
    :goto_8
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3220
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->aBw:Ljava/lang/String;

    .line 3223
    :cond_7
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3224
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    iput v0, v9, Lcom/google/android/gm/provider/bm;->bmc:I

    .line 3229
    :goto_a
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3230
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/google/android/gm/provider/bm;->bme:I

    .line 3232
    :cond_8
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3233
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->bmf:Ljava/lang/String;

    .line 3236
    :cond_9
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3237
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/bm;->aBy:Ljava/lang/String;

    .line 3239
    :cond_a
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3240
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_b
    iput v0, v9, Lcom/google/android/gm/provider/bm;->bmh:I

    .line 3242
    :cond_b
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v1, "readMessageFromProto: message = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3243
    return-object v9

    .line 3211
    :cond_c
    const/4 v0, -0x1

    iput v0, v9, Lcom/google/android/gm/provider/bm;->bmb:I

    goto/16 :goto_6

    .line 3214
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 3217
    :cond_e
    const/4 v0, -0x1

    iput v0, v9, Lcom/google/android/gm/provider/bm;->bmd:I

    goto :goto_8

    .line 3224
    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    .line 3227
    :cond_10
    const/4 v0, -0x1

    iput v0, v9, Lcom/google/android/gm/provider/bm;->bmc:I

    goto :goto_a

    .line 3240
    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static a(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/4 v1, 0x0

    .line 1994
    if-nez p0, :cond_0

    .line 1995
    const/4 v0, 0x0

    .line 2012
    :goto_0
    return-object v0

    .line 1997
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 1999
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2000
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2001
    if-eqz v2, :cond_1

    if-eq v4, v6, :cond_1

    .line 2002
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 1999
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2005
    :cond_1
    if-ne v4, v6, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_2

    .line 2006
    const/4 v2, 0x1

    goto :goto_2

    .line 2008
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2012
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([BJJJLcom/google/android/gm/provider/y;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 3262
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 3264
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 3269
    new-instance v9, Ljava/util/zip/Inflater;

    invoke-direct {v9}, Ljava/util/zip/Inflater;-><init>()V

    .line 3270
    invoke-virtual {v9, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 3274
    :try_start_0
    invoke-static {v9}, Lcom/google/android/gm/provider/bJ;->b(Ljava/util/zip/Inflater;)[B

    move-result-object v2

    .line 3275
    array-length v3, v2

    if-nez v3, :cond_2

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3276
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/y;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 3279
    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v3, p8

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/android/gm/provider/y;JJZ)V

    .line 3281
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/y;->DV()J

    move-result-wide v2

    .line 3282
    cmp-long v4, p2, v2

    if-eqz v4, :cond_1

    .line 3283
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "Dictionary checksum mismatch for message %d/%d. Expected %x but was %x"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3286
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 3287
    const/4 v2, 0x0

    .line 3314
    :goto_0
    return-object v2

    .line 3289
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/y;->getBytes()[B

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/zip/Inflater;->setDictionary([B)V

    .line 3290
    invoke-static {v9}, Lcom/google/android/gm/provider/bJ;->b(Ljava/util/zip/Inflater;)[B

    move-result-object v2

    .line 3291
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/y;->h([B)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3307
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v4, "Compressed message: %d/%d (%.1fx)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v7, v7

    array-length v8, p1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3312
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    move-object v2, v3

    .line 3314
    goto :goto_0

    .line 3293
    :catch_0
    move-exception v2

    .line 3294
    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v4, "Error inflating message %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3295
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 3296
    const/4 v2, 0x0

    goto :goto_0

    .line 3304
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UTF-8 not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2971
    if-eqz p1, :cond_1

    .line 2973
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 2974
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v1, "SHOW"

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "labelsIncluded"

    aput-object v2, v0, v1

    const-string v1, "labelsPartial"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "labelsAll"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2978
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1, p1}, Lcom/google/android/gm/provider/ba;->b(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v1

    .line 2979
    if-eqz v1, :cond_1

    .line 2980
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2981
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 2982
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2983
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2984
    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2985
    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    goto :goto_0

    .line 2990
    :cond_1
    invoke-direct {p0, v5}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 2991
    return-void
.end method

.method private a(Lcom/google/android/gm/provider/y;JJZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3322
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "messageId"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "body"

    aput-object v3, v1, v2

    invoke-interface {v0, v1, p4, p5}, Lcom/google/android/gm/provider/ba;->a([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 3326
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3327
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-nez v0, :cond_1

    .line 3328
    if-eqz p6, :cond_0

    .line 3329
    invoke-static {v1}, Lcom/google/android/gm/provider/MailSync;->q(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/y;->h([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3336
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3337
    :goto_1
    return-void

    .line 3333
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gm/provider/MailSync;->q(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/y;->h([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3336
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static a(Lcom/google/common/a/a/a;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/a/a/a;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3354
    invoke-static {p0, p1, v0}, Lcom/google/android/gm/provider/bv;->b(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 3355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/a/a;

    .line 3356
    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->f(Lcom/google/common/a/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3358
    :cond_0
    return-void
.end method

.method private a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/aX;)V
    .locals 16

    .prologue
    .line 2053
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2054
    :try_start_0
    const-string v2, "Gmail"

    const-string v3, "UphillSyncProto: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v3

    const-string v2, "Gmail"

    const-string v4, "UphillSyncProto: numNothandled: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Gmail"

    const-string v8, "UphillSyncProto: Nothandled: messageId: %d, error: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v4, v9, v6

    invoke-static {v5, v8, v9}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Gmail"

    const-string v4, "Error reading proto"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v3

    const-string v2, "Gmail"

    const-string v4, "UphillSyncProto: numSavedOrSent: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v8

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    const-string v10, "Gmail"

    const-string v11, "UphillSyncProto: SavedOrSent: messageIDOnClient: %d messageId: %d conversationId: %d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v13

    const/4 v6, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v6

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    const-string v4, "Gmail"

    const-string v5, "UphillSyncProto: handledOperationId: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2055
    :cond_2
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/aX;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2057
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v3

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->prepare()V

    .line 2060
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_4

    .line 2061
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v4

    .line 2063
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    .line 2065
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2067
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v8, "Message %d not handled because: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v5, v8, v9}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v6, v7, v4}, Lcom/google/android/gm/provider/ba;->a(JLjava/lang/String;)V

    .line 2060
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2070
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v11

    .line 2072
    const/4 v3, 0x0

    .line 2074
    const/4 v2, 0x0

    move v10, v2

    move v2, v3

    :goto_4
    if-ge v10, v11, :cond_9

    .line 2075
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v3

    .line 2077
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    .line 2079
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-nez v6, :cond_5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    .line 2080
    const/4 v2, 0x1

    .line 2082
    :cond_5
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    .line 2084
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v8

    .line 2086
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gm/provider/MailSync;->blw:Z

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gm/provider/MailSync;->blw:Z

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Faked by mFakeIoExceptionWhenHandlingMessageSavedOrSent"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2107
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v2

    .line 2086
    :cond_6
    :try_start_2
    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v12, "message id changed from %d to %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v3, v12, v13}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gm/provider/ba;->c(JJJ)V

    .line 2087
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/gm/provider/aX;->bku:J

    cmp-long v3, v12, v8

    if-eqz v3, :cond_7

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/gm/provider/aX;->bku:J

    cmp-long v3, v12, v4

    if-nez v3, :cond_8

    :cond_7
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    cmp-long v3, v12, v4

    if-nez v3, :cond_8

    .line 2091
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3, v8, v9, v6, v7}, Lcom/google/android/gm/provider/ba;->h(JJ)V

    .line 2074
    :cond_8
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto/16 :goto_4

    .line 2095
    :cond_9
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-eqz v3, :cond_b

    .line 2097
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    .line 2099
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->aM(J)V

    .line 2100
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkJ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2107
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 2108
    return-void

    .line 2101
    :cond_b
    :try_start_3
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    .line 2103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    invoke-interface {v2, v4, v5}, Lcom/google/android/gm/provider/ba;->aJ(J)V

    .line 2104
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkJ:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method

.method private a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bl;Lcom/google/android/gm/provider/br;J)V
    .locals 10

    .prologue
    .line 2454
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    .line 2457
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->prepare()V

    .line 2460
    const/4 v0, 0x0

    .line 2462
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gm/provider/MailSync;->bln:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2519
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 2520
    :goto_1
    return-void

    .line 2465
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gm/provider/bl;->HE()Lcom/google/common/a/a/a;

    move-result-object v1

    .line 2466
    if-nez v1, :cond_2

    .line 2467
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v1, "handleMessageProto: End of stream while reading next chunk part. conversationId: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2519
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->commit()V

    goto :goto_1

    .line 2472
    :cond_2
    const/16 v4, 0xb

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2473
    if-nez v0, :cond_0

    .line 2474
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v1

    new-instance v4, Lcom/google/android/gm/provider/y;

    invoke-direct {v4}, Lcom/google/android/gm/provider/y;-><init>()V

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;JLcom/google/android/gm/provider/y;)Lcom/google/android/gm/provider/bm;

    move-result-object v1

    .line 2479
    iget-object v4, v1, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 2480
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2483
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v4, "handleMessageProto: Could not deflate message %d. marking conversation %d  as dirty"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v1, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2486
    const/4 v0, 0x1

    .line 2487
    goto :goto_0

    .line 2489
    :cond_3
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "handleMessageProto: message: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2490
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v1, p4, p5}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/bm;J)V

    .line 2491
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    iget-wide v6, v1, Lcom/google/android/gm/provider/bm;->bku:J

    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v4, v6, v7, v5}, Lcom/google/android/gm/provider/ba;->b(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2493
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/google/android/gm/provider/br;->GV()V

    .line 2495
    :cond_4
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2498
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "handleMessageProto: Message %d synced successfully. Marking conversation %d as dirty in DB"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v1, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2501
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gm/provider/ba;->aK(J)V

    .line 2502
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2516
    :cond_5
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->Hc()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2519
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v0

    .line 2505
    :cond_6
    const/16 v0, 0xd

    :try_start_3
    invoke-virtual {v1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected chunk in conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2519
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->commit()V

    goto/16 :goto_1
.end method

.method private a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bl;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)V
    .locals 16

    .prologue
    .line 2186
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 2187
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v8

    .line 2188
    const-wide/16 v2, 0x0

    .line 2189
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2190
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    .line 2194
    :cond_0
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gm/provider/MailSync;->dU(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-result-object v4

    .line 2196
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "handleConversationProto: conversationId: %d, SyncRationale: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    aput-object v4, v7, v10

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2198
    const/4 v4, 0x1

    .line 2199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5}, Lcom/google/android/gm/provider/ba;->prepare()V

    .line 2203
    const/4 v6, 0x0

    .line 2210
    :try_start_0
    new-instance v7, Lcom/google/android/gm/provider/y;

    invoke-direct {v7}, Lcom/google/android/gm/provider/y;-><init>()V

    .line 2212
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gm/provider/MailSync;->bln:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 2393
    :goto_1
    return-void

    .line 2215
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/bl;->HE()Lcom/google/common/a/a/a;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 2238
    if-nez v10, :cond_6

    .line 2239
    :try_start_2
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "handleConversationProto: End of stream while reading next chunk part. conversationId: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2366
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v5, v8, v9, v6}, Lcom/google/android/gm/provider/ba;->b(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2367
    if-eqz v4, :cond_4

    .line 2375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    move-object/from16 v0, p6

    invoke-interface {v4, v8, v9, v0}, Lcom/google/android/gm/provider/ba;->a(JLcom/google/android/gm/provider/aX;)V

    .line 2376
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    cmp-long v4, v2, v8

    if-eqz v4, :cond_3

    .line 2378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    move-object/from16 v0, p6

    invoke-interface {v4, v2, v3, v0}, Lcom/google/android/gm/provider/ba;->a(JLcom/google/android/gm/provider/aX;)V

    .line 2381
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2383
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "handleConversationProto: Dirty conversation %d synced successfully. Marking as dirty in DB"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2, v8, v9}, Lcom/google/android/gm/provider/ba;->aK(J)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2390
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 2392
    invoke-static {}, Lcom/google/android/gm/b/a;->Dx()V

    goto :goto_1

    .line 2218
    :catch_0
    move-exception v4

    .line 2226
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->He()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2227
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2390
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v2

    .line 2229
    :cond_5
    const/4 v6, 0x1

    .line 2230
    const/4 v4, 0x0

    .line 2233
    :try_start_4
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v10, "handleConversationProto: Chunk to big to fit in memory. marking conversation %d as dirty"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v10, v11}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2243
    :cond_6
    const/16 v5, 0xb

    invoke-virtual {v10, v5}, Lcom/google/common/a/a/a;->bJ(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_a

    .line 2244
    if-nez v6, :cond_1

    .line 2245
    const/16 v5, 0xb

    :try_start_5
    invoke-virtual {v10, v5}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9, v7}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;JLcom/google/android/gm/provider/y;)Lcom/google/android/gm/provider/bm;
    :try_end_5
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 2261
    :try_start_6
    iget-object v10, v5, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 2262
    const/4 v6, 0x1

    .line 2263
    const/4 v4, 0x0

    .line 2266
    sget-object v10, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v11, "handleConversationProto: Could not deflate message %d. marking conversation %d as dirty"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-wide v14, v5, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v13

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2253
    :catch_1
    move-exception v4

    .line 2254
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v10, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5, v4, v10, v11}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->sM()J

    move-result-wide v10

    invoke-interface {v5, v8, v9, v10, v11}, Lcom/google/android/gm/provider/ba;->j(JJ)V

    .line 2257
    const/4 v4, 0x0

    .line 2258
    goto/16 :goto_0

    .line 2279
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v11, "^sq_ig_i_promo"

    invoke-interface {v10, v11}, Lcom/google/android/gm/provider/ba;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v10

    .line 2281
    if-eqz v10, :cond_8

    iget-object v11, v5, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    iget-wide v12, v10, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2282
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/gm/provider/MailSync;->blm:Z

    .line 2285
    :cond_8
    sget-object v10, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v11, "handleConversationProto: message: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2286
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    move-wide/from16 v0, p4

    invoke-interface {v10, v5, v0, v1}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/bm;J)V

    .line 2287
    if-eqz p3, :cond_9

    .line 2288
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gm/provider/br;->GV()V

    .line 2364
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5}, Lcom/google/android/gm/provider/ba;->Hc()Z

    goto/16 :goto_0

    .line 2290
    :cond_a
    const/16 v5, 0x12

    invoke-virtual {v10, v5}, Lcom/google/common/a/a/a;->bJ(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-eqz v5, :cond_f

    .line 2292
    const/4 v5, 0x0

    .line 2294
    const/16 v11, 0x12

    :try_start_7
    invoke-virtual {v10, v11}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v9}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;J)Lcom/google/android/gm/provider/bl;

    move-result-object v5

    .line 2298
    if-nez v5, :cond_c

    .line 2299
    const/4 v6, 0x1

    .line 2300
    const/4 v4, 0x0

    .line 2303
    sget-object v10, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v11, "handleConversationProto: Could not deflate conversation %d. marking conversation as dirty"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2306
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2350
    if-eqz v5, :cond_1

    .line 2351
    :try_start_8
    invoke-virtual {v5}, Lcom/google/android/gm/provider/bl;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2334
    :cond_b
    const/16 v11, 0xb

    :try_start_9
    invoke-virtual {v10, v11}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v9, v11}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;JLcom/google/android/gm/provider/y;)Lcom/google/android/gm/provider/bm;

    move-result-object v10

    .line 2337
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    move-wide/from16 v0, p4

    invoke-interface {v11, v10, v0, v1}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/bm;J)V

    .line 2338
    if-eqz p3, :cond_c

    .line 2339
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gm/provider/br;->GV()V
    :try_end_9
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2311
    :cond_c
    :try_start_a
    invoke-virtual {v5}, Lcom/google/android/gm/provider/bl;->HE()Lcom/google/common/a/a/a;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v10

    .line 2323
    if-eqz v10, :cond_d

    .line 2324
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gm/provider/MailSync;->bln:Z

    if-eqz v11, :cond_b

    .line 2328
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v10, "sync cancelled while processing messages for conversation: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v4, v10, v11}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_b
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2330
    const/4 v4, 0x0

    .line 2350
    :cond_d
    :goto_4
    if-eqz v5, :cond_9

    .line 2351
    :try_start_c
    invoke-virtual {v5}, Lcom/google/android/gm/provider/bl;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 2312
    :catch_2
    move-exception v10

    .line 2313
    const/4 v6, 0x1

    .line 2314
    const/4 v4, 0x0

    .line 2317
    :try_start_d
    sget-object v11, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v12, "handleConversationProto: Could not deflate conversation %d.marking conversation as dirty"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v10, v12, v13}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2320
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 2343
    :catch_3
    move-exception v4

    .line 2344
    :try_start_e
    sget-object v10, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v11, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v4, v11, v12}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2346
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->sM()J

    move-result-wide v12

    invoke-interface {v10, v8, v9, v12, v13}, Lcom/google/android/gm/provider/ba;->j(JJ)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2347
    const/4 v4, 0x0

    .line 2350
    if-eqz v5, :cond_1

    .line 2351
    :try_start_f
    invoke-virtual {v5}, Lcom/google/android/gm/provider/bl;->close()V

    goto/16 :goto_0

    .line 2350
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_e

    .line 2351
    invoke-virtual {v5}, Lcom/google/android/gm/provider/bl;->close()V

    :cond_e
    throw v2

    .line 2354
    :cond_f
    const/16 v5, 0xc

    invoke-virtual {v10, v5}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2355
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "handleConversationProto: end conversation"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 2360
    :cond_10
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "Unexpected chunk in conversation"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2
.end method

.method private a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/br;)V
    .locals 25

    .prologue
    .line 1631
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v14

    .line 1633
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v16

    .line 1635
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v18

    .line 1638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4}, Lcom/google/android/gm/provider/ba;->prepare()V

    .line 1640
    const/4 v4, 0x6

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1641
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1643
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Custom From prefs: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1645
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1647
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/MailSync;->o(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    .line 1648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Lcom/google/android/gm/provider/ba;->c(Ljava/util/Map;Z)V

    .line 1651
    :cond_0
    const/4 v4, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1652
    const/4 v4, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1654
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Reply From prefs: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1657
    const-string v5, "bx_rf"

    invoke-static {v5, v4}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1663
    :cond_1
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1664
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1666
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Custom Color: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1668
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailSync;->fa(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->o(Ljava/util/Map;)V

    .line 1673
    :cond_2
    const/16 v4, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1674
    const/16 v4, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1676
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1677
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Reply To: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1678
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Reply To: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1681
    :cond_3
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1683
    const-string v5, "sx_rt"

    invoke-static {v5, v4}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1685
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1695
    :cond_4
    :goto_0
    const/16 v4, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1696
    const/16 v4, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1698
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Display Name: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1700
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1702
    const-string v5, "sx_dn"

    invoke-static {v5, v4}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1704
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1714
    :cond_5
    :goto_1
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1715
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1717
    const/16 v5, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1719
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1721
    const/16 v7, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1723
    const/16 v8, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1727
    sget-object v9, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1728
    sget-object v9, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v10, "StartSyncInfoProto: IO enabled: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1729
    sget-object v9, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v10, "StartSyncInfoProto: IO sections: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1731
    sget-object v9, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v10, "StartSyncInfoProto: IO sizes: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1733
    sget-object v9, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v10, "StartSyncInfoProto: IO default inbox: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1735
    sget-object v7, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v9, "StartSyncInfoProto: IO arrows off: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v7, v9, v10}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1739
    :cond_6
    new-instance v7, Lcom/google/common/collect/y;

    invoke-direct {v7}, Lcom/google/common/collect/y;-><init>()V

    const-string v9, "sx_ioe"

    invoke-virtual {v7, v9, v4}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v7, "sx_iosc"

    invoke-virtual {v4, v7, v5}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "sx_ioss"

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "bx_ioao"

    invoke-virtual {v4, v5, v8}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1749
    :cond_7
    const/16 v4, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1750
    const/16 v4, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1753
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Personal inbox enabled: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1756
    new-instance v5, Lcom/google/common/collect/y;

    invoke-direct {v5}, Lcom/google/common/collect/y;-><init>()V

    const-string v6, "bx_pie"

    invoke-virtual {v5, v6, v4}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1760
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1763
    :cond_8
    const/16 v4, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1764
    const/16 v4, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1768
    :try_start_1
    invoke-virtual {v5}, Lcom/google/common/a/a/a;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1774
    :goto_2
    :try_start_2
    sget-object v6, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v7, "StartSyncInfoProto: Personal inbox android config: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1777
    new-instance v5, Lcom/google/common/collect/y;

    invoke-direct {v5}, Lcom/google/common/collect/y;-><init>()V

    const-string v6, "sx_piac"

    invoke-virtual {v5, v6, v4}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1780
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->m(Ljava/util/Map;)V

    .line 1783
    :cond_9
    const/16 v4, 0x12

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1784
    const/16 v4, 0x12

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v4

    .line 1787
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: personal inbox available: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1790
    new-instance v5, Lcom/google/common/collect/y;

    invoke-direct {v5}, Lcom/google/common/collect/y;-><init>()V

    const-string v6, "bx_pia"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1795
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1798
    :cond_a
    const/16 v4, 0x13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1799
    const/16 v4, 0x13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v4

    .line 1802
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: personal inbox user flipped: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1805
    new-instance v5, Lcom/google/common/collect/y;

    invoke-direct {v5}, Lcom/google/common/collect/y;-><init>()V

    const-string v6, "bx_piuf"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1810
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1813
    :cond_b
    const/16 v4, 0x15

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1814
    const/16 v4, 0x15

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1816
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "StartSyncInfoProto: Dasher Domain Title: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1817
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->eH(Ljava/lang/String;)V

    .line 1820
    :cond_c
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_11

    .line 1821
    :try_start_3
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    const/4 v4, 0x4

    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v8

    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: Labels: numLabels: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v4, 0x0

    move v7, v4

    :goto_4
    if-ge v7, v8, :cond_11

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v9

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v10

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x3

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v20

    const/4 v4, 0x5

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v21

    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    move v6, v4

    :goto_5
    const/4 v4, -0x1

    const/4 v5, 0x6

    invoke-virtual {v9, v5}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v4, 0x6

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    move v5, v4

    :goto_6
    const-string v4, "Default"

    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v22

    if-eqz v22, :cond_d

    const/4 v4, 0x7

    invoke-virtual {v9, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_d
    const-string v9, "Gmail"

    const-string v22, "StartSyncInfoProto: Label id: %d canonicalName: %s displayName: %s numConversations: %d numUnreadConversations: %d numUnseenConversations: %d color: %d visibility: %s"

    const/16 v23, 0x8

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v23, v24

    const/4 v10, 0x1

    aput-object v12, v23, v10

    const/4 v10, 0x2

    aput-object v13, v23, v10

    const/4 v10, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v23, v10

    const/4 v10, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v23, v10

    const/4 v10, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v23, v10

    const/4 v6, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v23, v6

    const/4 v5, 0x7

    aput-object v4, v23, v5

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v9, v0, v1}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_4

    .line 1689
    :cond_e
    const-string v4, "sx_rt"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1892
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v4

    .line 1708
    :cond_f
    :try_start_5
    const-string v4, "sx_dn"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 1710
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v4}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1771
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1821
    :catch_1
    move-exception v4

    const-string v5, "Gmail"

    const-string v6, "Error reading proto"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    :cond_10
    const/4 v4, -0x1

    move v6, v4

    goto/16 :goto_5

    .line 1824
    :cond_11
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v13

    .line 1825
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v20

    .line 1826
    const/4 v4, 0x0

    move v12, v4

    :goto_7
    move/from16 v0, v20

    if-ge v12, v0, :cond_16

    .line 1827
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v4

    .line 1828
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    .line 1829
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v6, v7}, Lcom/google/android/gm/provider/ba;->ar(J)Lcom/google/android/gm/provider/af;

    move-result-object v21

    .line 1830
    if-eqz v21, :cond_14

    .line 1831
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1833
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1834
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v7

    .line 1835
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v8

    .line 1838
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1839
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v9

    .line 1844
    :goto_8
    const v10, 0x7fffffff

    .line 1845
    const/4 v11, 0x6

    invoke-virtual {v4, v11}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1846
    const/4 v10, 0x6

    invoke-virtual {v4, v10}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v10

    .line 1849
    :cond_12
    const-string v11, "SHOW"

    .line 1850
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1851
    const/4 v11, 0x7

    invoke-virtual {v4, v11}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1852
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v22, "StartSyncInfoProto: LABEL_VISIBILITY: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1855
    :cond_13
    new-instance v4, Lcom/google/android/gm/provider/bd;

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gm/provider/bd;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 1859
    move-object/from16 v0, v21

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    :cond_14
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_7

    .line 1842
    :cond_15
    const/4 v9, -0x1

    goto :goto_8

    .line 1861
    :cond_16
    if-lez v20, :cond_17

    .line 1862
    if-eqz p2, :cond_17

    .line 1865
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gm/provider/br;->GW()V

    .line 1869
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Map;Lcom/google/android/gm/provider/br;)V

    .line 1871
    const/16 v4, 0x14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v5

    .line 1872
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "StartSyncInfoProto: server pref count: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1873
    if-lez v5, :cond_1a

    .line 1874
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v6

    .line 1875
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v5, :cond_19

    .line 1876
    const/16 v7, 0x14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v7

    .line 1878
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1879
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1880
    if-eqz v8, :cond_18

    if-eqz v7, :cond_18

    .line 1881
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1883
    :cond_18
    sget-object v7, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v8, "StartSyncInfoProto: received invalid pref from server"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_a

    .line 1886
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v6}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    .line 1889
    :cond_1a
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "handleStartSyncInfoValues: highestServerOperation: %d highestServerConversation: %d handledClientOperation: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v4, "startSyncNeeded"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/MailSync;->fc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "startSyncNeeded"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    const-string v4, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    const-string v4, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    :cond_1b
    const-string v4, "lowestBackwardConversationId"

    const-wide/16 v6, 0x1

    add-long v6, v6, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    const-string v4, "highestBackwardConversationId"

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gm/provider/MailSync;->aM(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->HA()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 1893
    return-void

    :cond_1d
    move v5, v4

    goto/16 :goto_6
.end method

.method private a(Ljava/util/Map;Lcom/google/android/gm/provider/br;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gm/provider/af;",
            "Lcom/google/android/gm/provider/bd;",
            ">;",
            "Lcom/google/android/gm/provider/br;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1608
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v1, "handleLabelsValues: receiving set of %d labels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1610
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v2

    .line 1611
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1613
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/af;

    .line 1615
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/bd;

    .line 1616
    iget-wide v6, v1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    iget-object v0, v0, Lcom/google/android/gm/provider/bd;->bhU:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0, v2}, Lcom/google/android/gm/provider/ba;->n(Ljava/util/Map;)V

    .line 1621
    invoke-direct {p0, v5, v5, v3}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1622
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 1623
    if-eqz p2, :cond_1

    .line 1626
    invoke-interface {p2}, Lcom/google/android/gm/provider/br;->GW()V

    .line 1628
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3030
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 3031
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 3035
    invoke-static {v5, p2}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 3036
    :goto_0
    invoke-static {v6, p2}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 3038
    :cond_0
    invoke-static {v5, p3}, Lcom/google/android/gm/provider/MailSync;->b(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 3039
    :cond_1
    invoke-static {v6, p3}, Lcom/google/android/gm/provider/MailSync;->b(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 3041
    :cond_2
    if-nez p3, :cond_6

    .line 3042
    const-string v3, "labelsAll"

    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3043
    const-string v3, "labelsAll"

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p3

    .line 3044
    if-eqz p1, :cond_3

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3045
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p3, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3051
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 3089
    :cond_5
    :goto_2
    return-void

    :cond_6
    move v0, v1

    .line 3049
    goto :goto_1

    .line 3058
    :cond_7
    invoke-static {}, Lcom/google/android/gm/provider/Y;->Fi()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3061
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v0}, Lcom/google/android/gm/provider/ae;->eN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v4, v1

    .line 3063
    :goto_4
    if-eqz v4, :cond_10

    .line 3064
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 3065
    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v3

    :goto_5
    move v3, v0

    .line 3067
    goto :goto_3

    :cond_9
    move v4, v2

    .line 3061
    goto :goto_4

    .line 3068
    :cond_a
    invoke-static {}, Lcom/google/android/gm/provider/Y;->Fj()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3069
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v0}, Lcom/google/android/gm/provider/ae;->eN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v4, v1

    .line 3071
    :goto_7
    if-eqz v4, :cond_b

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3072
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v3, v0

    goto :goto_6

    :cond_d
    move v4, v2

    .line 3069
    goto :goto_7

    .line 3076
    :cond_e
    if-eqz v3, :cond_5

    .line 3077
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3078
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "checkLabelsSets changed the label sets to: included(%s), partial(%s), all(%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/android/gm/provider/ad;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-static {v6}, Lcom/google/android/gm/provider/ad;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {p3}, Lcom/google/android/gm/provider/ad;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3084
    :cond_f
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    .line 3085
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    .line 3086
    const-string v0, "labelsAll"

    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    .line 3087
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->GA()V

    goto/16 :goto_2

    :cond_10
    move v0, v3

    goto :goto_5

    :cond_11
    move v0, v2

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3677
    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3679
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3680
    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->aa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3093
    if-nez p1, :cond_1

    .line 3102
    :cond_0
    return v0

    .line 3095
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3096
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3097
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3098
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3099
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private aM(J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2113
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v1, "Received handled client operation id from server"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2114
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/provider/ba;->aI(J)V

    .line 2116
    const-string v0, "unackedSentOperations"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 2117
    const-string v0, "clientOpToAck"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 2118
    return-void
.end method

.method private aa(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3667
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3668
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    const/4 v0, 0x1

    .line 3671
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)I
    .locals 19

    .prologue
    .line 1109
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/provider/MailSync;->f(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/bl;

    move-result-object v13

    .line 1111
    invoke-virtual {v13}, Lcom/google/android/gm/provider/bl;->HD()I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    .line 1112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attempt to use protos for a version-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/google/android/gm/provider/bl;->HD()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1118
    :cond_0
    const/4 v10, 0x0

    .line 1119
    const/4 v2, 0x0

    move-object v12, v2

    move v2, v10

    .line 1125
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gm/provider/MailSync;->bln:Z

    if-nez v3, :cond_49

    .line 1126
    invoke-virtual {v13}, Lcom/google/android/gm/provider/bl;->HE()Lcom/google/common/a/a/a;

    move-result-object v3

    .line 1130
    if-eqz v3, :cond_49

    .line 1131
    invoke-virtual {v3}, Lcom/google/common/a/a/a;->getDataSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v4

    add-int v10, v2, v4

    .line 1135
    :try_start_1
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "HttpResponseChunk: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ConfigInfo"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    const-string v4, "Gmail"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1139
    :cond_2
    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    .line 1140
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1144
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_2
    const-string v2, "Gmail"

    const-string v4, "ConfigInfoProto: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    const-string v2, "Gmail"

    const-string v6, "ConfigInfoProto: Conversation Age Days: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v2, v6, v7}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x2

    invoke-static {v3, v5, v2}, Lcom/google/android/gm/provider/bv;->c(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    const-string v5, "Gmail"

    const-string v6, "ConfigInfoProto: Included Canonical Label Name: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x3

    invoke-static {v3, v2, v4}, Lcom/google/android/gm/provider/bv;->c(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    const-string v2, "Gmail"

    const-string v5, "ConfigInfoProto: Duration Canonical Label Name: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v2, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x2

    invoke-static {v3, v7, v2}, Lcom/google/android/gm/provider/bv;->c(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    const/4 v7, 0x3

    invoke-static {v3, v7, v6}, Lcom/google/android/gm/provider/bv;->c(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->Hz()I

    move-result v3

    const-string v7, "serverVersion"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v8

    int-to-long v14, v3

    cmp-long v7, v14, v8

    if-lez v7, :cond_f

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v4, "Ignoring config info from server because server version is %d but gservices says that the min server version is %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "needConfigSuggestion"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    move v2, v10

    goto/16 :goto_0

    .line 1136
    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "ConfigAccepted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1200
    :catchall_0
    move-exception v2

    move v2, v10

    :goto_3
    invoke-virtual {v13}, Lcom/google/android/gm/provider/bl;->close()V

    .line 1201
    :goto_4
    return v2

    .line 1136
    :cond_5
    const/4 v4, 0x4

    :try_start_4
    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "StartSync"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "UphillSync"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "ForwardSync"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "CheckConversation"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "BeginConversation"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "BeginMessage"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "NoConversation"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "NoMessage"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "SyncPostamble"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Ads"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1144
    :catch_0
    move-exception v2

    const-string v4, "Gmail"

    const-string v5, "Error reading proto"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v2, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    :cond_f
    const-string v3, " "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z

    const-string v2, "needConfigSuggestion"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    const-string v2, "configDirty"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    move v2, v10

    goto/16 :goto_0

    .line 1145
    :cond_10
    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1146
    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v2, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v3, "ConfigAccepted Proto is missing a client_id value"

    invoke-direct {v2, v3}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "handleConfigAcceptedValues: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v4, "clientId"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_12

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Client id is already set but response has different id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-string v4, "clientId"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    const-string v2, "configDirty"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    const-string v2, "startSyncNeeded"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    const-string v2, "highestBackwardConversationId"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    const-string v2, "lowestBackwardConversationId"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    move v2, v10

    goto/16 :goto_0

    .line 1147
    :cond_13
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1148
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/br;)V

    .line 1150
    const/4 v2, 0x1

    move-object/from16 v0, p5

    iput-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkJ:Z

    move v2, v10

    goto/16 :goto_0

    .line 1151
    :cond_14
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1152
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v2, v1}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/aX;)V

    move v2, v10

    goto/16 :goto_0

    .line 1154
    :cond_15
    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1155
    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v3}, Lcom/google/android/gm/provider/bv;->g(Lcom/google/common/a/a/a;)V

    :cond_16
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->prepare()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    const/4 v4, 0x2

    :try_start_5
    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v16

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v6

    if-nez v6, :cond_17

    const/4 v8, 0x1

    :goto_5
    const/4 v3, 0x1

    if-ne v6, v3, :cond_18

    const/4 v3, 0x1

    move v11, v3

    :goto_6
    const/4 v3, 0x2

    if-ne v6, v3, :cond_19

    const/4 v3, 0x1

    :goto_7
    if-nez v8, :cond_1a

    if-nez v11, :cond_1a

    if-nez v3, :cond_1a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown change code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_17
    const/4 v8, 0x0

    goto :goto_5

    :cond_18
    const/4 v3, 0x0

    move v11, v3

    goto :goto_6

    :cond_19
    const/4 v3, 0x0

    goto :goto_7

    :cond_1a
    const/4 v7, 0x0

    if-nez v8, :cond_1b

    if-eqz v11, :cond_1c

    :cond_1b
    const/4 v6, 0x3

    :try_start_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v9, v6, v7}, Lcom/google/android/gm/provider/ba;->ar(J)Lcom/google/android/gm/provider/af;

    move-result-object v7

    :cond_1c
    const/4 v6, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gm/provider/MailSync;->dU(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-result-object v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/google/android/gm/provider/bv;->a(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    if-nez v8, :cond_1d

    if-eqz v11, :cond_22

    :cond_1d
    if-eqz v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gm/provider/ba;->a(JLjava/util/List;Lcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    :cond_1e
    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    :cond_1f
    :goto_9
    const-string v3, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v15}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    if-eqz p2, :cond_20

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gm/provider/br;->GW()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_20
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3}, Lcom/google/android/gm/provider/ba;->commit()V

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3}, Lcom/google/android/gm/provider/ba;->Dc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->R(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_21
    move v2, v10

    goto/16 :goto_0

    :cond_22
    if-eqz v3, :cond_23

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3, v4, v5, v6, v9}, Lcom/google/android/gm/provider/ba;->a(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V

    goto :goto_8

    :cond_23
    sget-boolean v3, Lcom/google/android/gm/provider/MailSync;->vb:Z

    if-nez v3, :cond_1e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_24
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v6, v4, v5}, Lcom/google/android/gm/provider/ba;->ar(J)Lcom/google/android/gm/provider/af;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_25

    const-string v6, "startSyncNeeded"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v7, "SHOW"

    invoke-interface {v6, v4, v5, v3, v7}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    :cond_25
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    goto/16 :goto_9

    :cond_26
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v6, v4, v5}, Lcom/google/android/gm/provider/ba;->ar(J)Lcom/google/android/gm/provider/af;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_27
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gm/provider/ba;->aq(J)Lcom/google/android/gm/provider/af;

    move-result-object v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->b(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v5, v3}, Lcom/google/android/gm/provider/ba;->c(Lcom/google/android/gm/provider/af;)V

    if-eqz v4, :cond_28

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    :cond_29
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    goto/16 :goto_9

    :cond_2a
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailSync;->d(Lcom/google/common/a/a/a;)V

    goto/16 :goto_9

    :cond_2b
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v5

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v3

    move v4, v3

    :goto_a
    const-string v3, ""

    if-nez v4, :cond_2c

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2c
    sget-object v7, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v8, "MainSync: Custom preference name: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v7, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v8, "MainSync: Custom preference value: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v9, v11

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v7, "sx_clcp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "MainSync: Custom Color: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailSync;->fa(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->o(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_2d
    const-string v7, "bx_rf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "bx_rf"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_2e
    const-string v7, "/customfrom/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    if-nez v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/google/android/gm/provider/MailSync;->o(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/google/android/gm/provider/ba;->c(Ljava/util/Map;Z)V

    goto/16 :goto_9

    :cond_2f
    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v4, "Deleting preference %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3, v6}, Lcom/google/android/gm/provider/ba;->eX(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_30
    const-string v7, "sx_rt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_31
    const-string v3, ""

    :goto_b
    const-string v4, "sx_rt"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_32
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_33
    const-string v7, "sx_dn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_34
    const-string v3, ""

    :goto_c
    const-string v4, "sx_dn"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_35
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_36
    const-string v7, "sx_ioe"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    if-eqz v3, :cond_1f

    if-nez v4, :cond_1f

    const-string v4, "sx_ioe"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    const-string v3, "startSyncNeeded"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    goto/16 :goto_9

    :cond_37
    const-string v7, "sx_iosc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    if-eqz v3, :cond_1f

    if-nez v4, :cond_1f

    const-string v4, "sx_iosc"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_38
    const-string v7, "bx_ioao"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    if-eqz v3, :cond_1f

    if-nez v4, :cond_1f

    const-string v4, "bx_ioao"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_39
    const-string v7, "bx_pie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    if-eqz v3, :cond_1f

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "Received updated %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "bx_pie"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v4, "bx_pie"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->k(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_3a
    const-string v7, "sx_piac"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    if-nez v4, :cond_1f

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Lcom/google/common/a/a/a;->getBytes(I)[B

    move-result-object v3

    if-eqz v3, :cond_3b

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "Received updated %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "sx_piac"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Lcom/google/common/collect/y;

    invoke-direct {v4}, Lcom/google/common/collect/y;-><init>()V

    const-string v5, "sx_piac"

    invoke-virtual {v4, v5, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/ba;->m(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_3b
    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v4, "sx_piac was null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_9

    :cond_3c
    const-string v5, "bx_piuf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-eqz v3, :cond_1f

    if-nez v4, :cond_1f

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "ForwardSync: personal inbox user flipped: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v5, "ShouldShowSectionedInboxOOBE"

    invoke-interface {v4, v5, v3}, Lcom/google/android/gm/provider/ba;->Z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3d
    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3, v6}, Lcom/google/android/gm/provider/ba;->eI(Ljava/lang/String;)V

    :goto_d
    const-string v3, "bx_eid"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v6, v3}, Lcom/google/android/gm/provider/ba;->Z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_3f
    invoke-static {v3}, Lcom/google/android/gm/provider/bv;->g(Lcom/google/common/a/a/a;)V

    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v4, "No forward sync operation found"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_9

    .line 1158
    :cond_40
    const/16 v2, 0x8

    :try_start_a
    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1159
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->d(Lcom/google/common/a/a/a;)V

    move v2, v10

    goto/16 :goto_0

    .line 1161
    :cond_41
    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1162
    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    move-object/from16 v2, p0

    move-object v4, v13

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bl;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)V

    move v2, v10

    goto/16 :goto_0

    .line 1165
    :cond_42
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1166
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    move-object/from16 v2, p0

    move-object v4, v13

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bl;Lcom/google/android/gm/provider/br;J)V

    move v2, v10

    goto/16 :goto_0

    .line 1169
    :cond_43
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1170
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "handleNoConversationProto: conversationId: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4}, Lcom/google/android/gm/provider/ba;->prepare()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v4, v2, v3, v5}, Lcom/google/android/gm/provider/ba;->b(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    new-instance v5, Lcom/google/android/gm/provider/aX;

    invoke-direct {v5}, Lcom/google/android/gm/provider/aX;-><init>()V

    invoke-interface {v4, v2, v3, v5}, Lcom/google/android/gm/provider/ba;->a(JLcom/google/android/gm/provider/aX;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->commit()V

    move v2, v10

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v2

    .line 1171
    :cond_44
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1172
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "handleNoMessageProto: messageId: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v2, v3}, Lcom/google/android/gm/provider/ba;->aH(J)V

    move v2, v10

    goto/16 :goto_0

    .line 1173
    :cond_45
    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1174
    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    .line 1182
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1183
    const-string v3, "lowestMessageIdInDuration"

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 1189
    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->Hs()V

    move-object v12, v2

    move v2, v10

    goto/16 :goto_0

    .line 1190
    :cond_47
    const/16 v2, 0x13

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1191
    const/16 v2, 0x13

    invoke-virtual {v3, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->e(Lcom/google/common/a/a/a;)V

    move v2, v10

    goto/16 :goto_0

    .line 1193
    :cond_48
    new-instance v2, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v3, "No protobuf found inside response chunk"

    invoke-direct {v2, v3}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1195
    :cond_49
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gm/provider/MailSync;->bln:Z

    if-nez v3, :cond_4a

    if-eqz v12, :cond_4a

    .line 1197
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v12, v1}, Lcom/google/android/gm/provider/MailSync;->b(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/aX;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1200
    :cond_4a
    invoke-virtual {v13}, Lcom/google/android/gm/provider/bl;->close()V

    goto/16 :goto_4

    :catchall_3
    move-exception v3

    goto/16 :goto_3

    :cond_4b
    move v4, v3

    goto/16 :goto_a
.end method

.method private b(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/bk;)J
    .locals 6

    .prologue
    .line 1292
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->f(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/bl;

    move-result-object v1

    .line 1294
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gm/provider/bl;->HE()Lcom/google/common/a/a/a;

    move-result-object v0

    .line 1295
    if-eqz v0, :cond_0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bk;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1306
    invoke-virtual {v1}, Lcom/google/android/gm/provider/bl;->close()V

    return-wide v2

    .line 1299
    :cond_0
    :try_start_1
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "handleQueryResponseProto: No query result found inside response chunk. reason: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const-string v0, "null protoBuf"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1302
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v2, "No query result found inside response chunk"

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1306
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bl;->close()V

    throw v0

    .line 1299
    :cond_1
    :try_start_2
    const-string v0, "missing query result"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/aX;)V
    .locals 12

    .prologue
    .line 2553
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2554
    :try_start_0
    const-string v0, "Gmail"

    const-string v1, "SyncPostableProto: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/provider/bv;->b(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/a/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    const v1, 0x7fffffff

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v1

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    const-string v2, "SHOW"

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v2, "Gmail"

    const-string v8, "SyncPostAmbleProto: labelId: %d, count: %d, unreadCount: %d, color: %d, visibility: %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v6

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v4

    const/4 v1, 0x4

    aput-object v0, v9, v1

    invoke-static {v2, v8, v9}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Gmail"

    const-string v2, "Error reading proto"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2556
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2557
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v3, "Received operationId of 0 as last-examined-server-op. Wiping."

    invoke-interface {v2, v3}, Lcom/google/android/gm/provider/ba;->eP(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "last-examined-server-operation operationId: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "highestProcessedServerOperationId"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 2560
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2561
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "lowest-backward-convesation-id conversationid: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "lowestBackwardConversationId"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 2564
    :cond_4
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2565
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "%s messageSequenceNumber: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "messageSequenceNumber"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "messageSequenceNumber"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 2569
    :cond_5
    iget-boolean v0, p2, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-eqz v0, :cond_9

    .line 2570
    const-string v0, "moreForwardSyncNeeded"

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 2578
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2579
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/provider/bv;->b(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 2581
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2582
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->prepare()V

    .line 2584
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/a/a;

    .line 2585
    const v5, 0x7fffffff

    .line 2586
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2587
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v5

    .line 2589
    :cond_7
    const-string v6, "SHOW"

    .line 2590
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2591
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2593
    sget-object v1, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v2, "ResponseSyncPostamble: LABEL_VISIBILITY: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2595
    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v2

    .line 2596
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v3

    .line 2599
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2600
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    .line 2605
    :goto_5
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1, v10, v11}, Lcom/google/android/gm/provider/ba;->aq(J)Lcom/google/android/gm/provider/af;

    move-result-object v1

    .line 2611
    if-eqz v1, :cond_6

    .line 2612
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/af;IIIILjava/lang/String;)V

    .line 2614
    iget-wide v0, v1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2618
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v0

    .line 2574
    :cond_9
    const-string v0, "moreForwardSyncNeeded"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    goto/16 :goto_3

    .line 2603
    :cond_a
    const/4 v4, -0x1

    goto :goto_5

    .line 2618
    :cond_b
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 2620
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0, v7}, Lcom/google/android/gm/provider/ba;->q(Ljava/util/Set;)V

    .line 2621
    return-void

    :cond_c
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private static b(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3107
    if-nez p1, :cond_1

    .line 3116
    :cond_0
    return v0

    .line 3109
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3111
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3112
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/MailSync;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private d(Lcom/google/common/a/a/a;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 2138
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->prepare()V

    .line 2140
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    new-instance v2, Lcom/google/android/gm/provider/bi;

    invoke-direct {v2}, Lcom/google/android/gm/provider/bi;-><init>()V

    .line 2143
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    .line 2145
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    .line 2146
    iput-wide v0, v2, Lcom/google/android/gm/provider/bi;->bku:J

    .line 2147
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/bi;->bhx:J

    .line 2148
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/bi;->blE:J

    .line 2149
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/bi;->ayV:Ljava/lang/String;

    .line 2150
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/bi;->abh:Ljava/lang/String;

    .line 2151
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->dN(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/bi;->blF:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2153
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/bi;->blA:J

    .line 2154
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/google/android/gm/provider/bi;->blB:I

    .line 2155
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v4

    iput-boolean v4, v2, Lcom/google/android/gm/provider/bi;->ayX:Z

    .line 2156
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/provider/s;->b(Lcom/google/common/a/a/a;)[B

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/bi;->blD:[B

    .line 2158
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v2, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    .line 2159
    const/16 v4, 0xb

    iget-object v5, v2, Lcom/google/android/gm/provider/bi;->blG:Ljava/util/Set;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/bv;->a(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 2162
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3, v2}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/bi;)V

    .line 2167
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v2

    .line 2168
    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "checkConversationProto: conversationId: %d, messageId: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2170
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/google/android/gm/provider/ba;->i(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 2174
    invoke-direct {p0, v9}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 2175
    return-void

    .line 2164
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 2172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v0
.end method

.method private static d(Lorg/apache/http/HttpResponse;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1075
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 1076
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 1077
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 1079
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1080
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1081
    if-gez v0, :cond_0

    .line 1082
    const/16 v0, 0x1000

    .line 1084
    :cond_0
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 1086
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    .line 1088
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1089
    :cond_1
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 1090
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    .line 1091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 1092
    const-string v0, "\nRead timed out..."

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :cond_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 1099
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v2, "Html Response from html content = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1103
    :goto_0
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v0

    .line 1101
    :cond_3
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v1, "Response too large to print"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private dT(I)V
    .locals 6

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blv:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 760
    return-void
.end method

.method private static dU(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;
    .locals 3

    .prologue
    .line 2895
    packed-switch p0, :pswitch_data_0

    .line 2903
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown proto rationale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2897
    :pswitch_0
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 2901
    :goto_0
    return-object v0

    .line 2899
    :pswitch_1
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    goto :goto_0

    .line 2901
    :pswitch_2
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bml:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    goto :goto_0

    .line 2895
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e(Lcom/google/common/a/a/a;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 2396
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->prepare()V

    .line 2398
    const/4 v1, 0x0

    .line 2399
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2400
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2404
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2405
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2407
    if-eqz v2, :cond_1

    .line 2408
    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ads targetting info: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2412
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v2

    .line 2413
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2414
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v3

    .line 2415
    new-instance v4, Lcom/google/android/gm/provider/Advertisement;

    invoke-direct {v4, v3, v1}, Lcom/google/android/gm/provider/Advertisement;-><init>(Lcom/google/common/a/a/a;Ljava/lang/String;)V

    .line 2416
    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "Received Ad with event id: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2417
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v3, v4}, Lcom/google/android/gm/provider/ba;->h(Lcom/google/android/gm/provider/Advertisement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2420
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ba;->commit()V

    .line 2421
    return-void

    .line 2420
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->commit()V

    throw v0
.end method

.method public static e(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    .prologue
    .line 1504
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/bl;
    .locals 12

    .prologue
    .line 3434
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 3435
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3436
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No response body received. Status is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3439
    :cond_0
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 3440
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error returned from server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3443
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 3445
    new-instance v6, Lcom/google/android/gm/provider/bl;

    invoke-direct {v6, v0}, Lcom/google/android/gm/provider/bl;-><init>(Ljava/io/InputStream;)V

    .line 3447
    invoke-virtual {v6}, Lcom/google/android/gm/provider/bl;->HE()Lcom/google/common/a/a/a;

    move-result-object v0

    .line 3448
    if-nez v0, :cond_2

    .line 3449
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v1, "End of stream while reading next chunk part"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3452
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v7

    .line 3453
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3454
    :try_start_0
    const-string v0, "Gmail"

    const-string v1, "HttpResponseProto: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v5

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    :cond_3
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_1
    const-wide/16 v2, -0x1

    const/4 v4, 0x6

    invoke-virtual {v7, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x6

    invoke-virtual {v7, v2}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    :cond_4
    const-string v4, "noWipeDescription"

    const/4 v5, 0x5

    invoke-virtual {v7, v5}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const/4 v5, -0x1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v5

    :cond_6
    const-string v8, "Gmail"

    const-string v9, "HttpProtoResponse: serverVersion: %d, hasVersionError: %b, delay: %d, responseVersion: %d wipeDescription: %s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3458
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    .line 3459
    const-string v1, "serverVersion"

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    .line 3461
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3463
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The server (version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") does not support the protocol version that we used"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3454
    :catch_0
    move-exception v0

    const-string v1, "Gmail"

    const-string v2, "Error reading proto"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 3468
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3470
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v1, "Abuse error reported"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3473
    :cond_a
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 3474
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 3475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3476
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailSync;->blo:J

    .line 3478
    :cond_b
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3479
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3480
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received mustWipe error from server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gm/provider/ba;->eP(Ljava/lang/String;)V

    .line 3484
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    .line 3485
    invoke-virtual {v6, v0}, Lcom/google/android/gm/provider/bl;->dV(I)V

    .line 3490
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v1, "temp_adie"

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/ba;->eW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3492
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3493
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 3499
    :goto_2
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 3500
    if-nez v0, :cond_f

    .line 3501
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v1, "temp_adie"

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/ba;->eI(Ljava/lang/String;)V

    .line 3505
    :goto_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v1}, Lcom/google/android/gm/provider/ba;->Dc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 3509
    :cond_d
    return-object v6

    .line 3496
    :cond_e
    const/4 v0, 0x0

    goto :goto_2

    .line 3503
    :cond_f
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    const-string v2, "temp_adie"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gm/provider/ba;->Z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static f(Lcom/google/common/a/a/a;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 3361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3362
    invoke-virtual {p0, v2}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3363
    invoke-virtual {p0, v2}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3364
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3366
    :cond_0
    return-object v0
.end method

.method private static fa(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/bc;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1906
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1908
    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1909
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1910
    aget-object v4, v3, v0

    const-string v5, ":"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1913
    :try_start_0
    new-instance v5, Lcom/google/android/gm/provider/bc;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/gm/provider/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1909
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1917
    :catch_0
    move-exception v4

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected Custom Color preference received: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1921
    :cond_0
    return-object v2
.end method

.method private fb(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3597
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3598
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3600
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3638
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3640
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fe(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3645
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->fd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdH:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private static o(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/bb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 1939
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1942
    if-nez p1, :cond_2

    .line 1948
    const-string v0, "(?<!\\\\)#"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    .line 1955
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 1958
    aget-object v3, v0, v1

    const/16 v5, 0x23

    invoke-static {v3, v5}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 1960
    const-string v5, "(?<!\\\\),"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1962
    array-length v3, v5

    const/4 v6, 0x4

    if-lt v3, v6, :cond_0

    aget-object v3, v5, v11

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    aget-object v3, v5, v10

    .line 1965
    :goto_2
    :try_start_0
    new-instance v6, Lcom/google/android/gm/provider/bb;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/16 v8, 0x2c

    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-direct {v6, v7, v8, v9, v3}, Lcom/google/android/gm/provider/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    const/4 v3, 0x1

    aget-object v3, v5, v3

    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1972
    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1951
    :cond_2
    new-array v0, v10, [Ljava/lang/String;

    aput-object p0, v0, v2

    goto :goto_0

    .line 1962
    :cond_3
    aget-object v3, v5, v11

    goto :goto_2

    .line 1975
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected Custom from preference received: %s"

    new-array v6, v10, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v2

    invoke-static {v3, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 1979
    :cond_4
    return-object v4
.end method

.method static synthetic oA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private q(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 3656
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->aa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static q(Landroid/database/Cursor;)[B
    .locals 2

    .prologue
    .line 3343
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3348
    return-object v0

    .line 3346
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UTF-8 not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DR()I
    .locals 6

    .prologue
    const/16 v0, 0x19

    const/16 v1, 0xa

    .line 1328
    const-string v2, "serverVersion"

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1329
    if-nez v2, :cond_0

    .line 1341
    :goto_0
    return v0

    .line 1333
    :cond_0
    if-ge v2, v1, :cond_1

    .line 1336
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v3, "Server version (%d) is too old to talk to. Minimum supported version is %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1339
    goto :goto_0

    .line 1341
    :cond_1
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public final Ey()J
    .locals 2

    .prologue
    .line 1422
    const-string v0, "conversationAgeDays"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final GT()J
    .locals 2

    .prologue
    .line 1349
    const-string v0, "messageSequenceNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method final HA()V
    .locals 3

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    const-string v1, "labelsIncluded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    const-string v1, "labelsPartial"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    const-string v1, "conversationAgeDays"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    const-string v1, "maxAttachmentSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3692
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    .line 3693
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/provider/MailSync;->blt:Ljava/util/Map;

    .line 3694
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gm/provider/ba;->b(Ljava/util/Map;Z)V

    .line 3695
    return-void

    .line 3686
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Hr()V
    .locals 1

    .prologue
    .line 751
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->blu:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blv:[J

    .line 752
    return-void
.end method

.method public final Ht()J
    .locals 2

    .prologue
    .line 1314
    const-string v0, "clientId"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Hu()J
    .locals 2

    .prologue
    .line 1319
    const-string v0, "serverVersion"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Hv()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1406
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->bhh:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Hw()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1418
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->bhh:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Hx()J
    .locals 2

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "lowestMessageIdInDuration"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    const-string v0, "lowestMessageIdInDuration"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v0

    .line 1498
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final Hy()V
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->blp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1515
    return-void
.end method

.method public final a(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/br;Lcom/google/android/gm/provider/aX;)I
    .locals 7

    .prologue
    .line 1031
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->dT(I)V

    .line 1032
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/MailSync;->a(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)I

    move-result v0

    return v0
.end method

.method public final a(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/bk;)J
    .locals 4

    .prologue
    .line 1273
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1274
    const-string v1, "application/vnd.google-x-gms-proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->b(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/bk;)J

    move-result-wide v0

    return-wide v0

    .line 1276
    :cond_0
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1277
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1278
    sget-object v1, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1279
    invoke-static {p1}, Lcom/google/android/gm/provider/MailSync;->d(Lorg/apache/http/HttpResponse;)V

    .line 1282
    :cond_1
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server returned unhandled response content type (text/html status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    :cond_2
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown response content type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final a(Landroid/content/SyncResult;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 763
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 764
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->blu:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 765
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->blv:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 766
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->blu:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->blv:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 764
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_1
    invoke-virtual {p1}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gm/provider/bj;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 14

    .prologue
    .line 996
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 997
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    const-string v0, "clientId"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v12

    .line 999
    const-string v0, "lowestBackwardConversationId"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v2

    .line 1001
    const-string v0, "highestProcessedServerOperationId"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v4

    .line 1003
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    const-string v6, "clientOpToAck"

    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync;->He()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/google/android/gm/provider/aX;

    invoke-direct {v11}, Lcom/google/android/gm/provider/aX;-><init>()V

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/aX;)Lcom/google/common/a/a/a;

    move-result-object v6

    .line 1015
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->DR()I

    move-result v3

    const/4 v7, 0x1

    move-wide v4, v12

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJLcom/google/common/a/a/a;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;JI)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->DR()I

    move-result v2

    const/4 v7, 0x5

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;ILjava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZLcom/google/android/gm/provider/aX;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/gm/provider/aX;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/bj;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .prologue
    .line 789
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gm/provider/MailSync;->blo:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gm/provider/MailSync;->blo:J

    sub-long v2, v4, v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v5, "Sync waiting for %d ms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 790
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gm/provider/MailSync;->bln:Z

    .line 792
    const-string v2, "needConfigSuggestion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->DR()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;I)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 969
    :goto_1
    return-object v2

    .line 805
    :cond_1
    const-string v2, "clientId"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v6

    .line 806
    const-string v2, "configDirty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fc(Ljava/lang/String;)Z

    move-result v2

    .line 807
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkG:Z

    if-nez v2, :cond_4

    .line 808
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 809
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->DR()I

    move-result v5

    const-string v2, "labelsIncluded"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    const-string v2, "labelsPartial"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    const-string v2, "conversationAgeDays"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v10

    const-string v2, "maxAttachmentSize"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJLjava/util/Set;Ljava/util/Set;JJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    goto :goto_1

    .line 817
    :cond_4
    const-string v2, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v8

    .line 819
    const-string v2, "highestBackwardConversationId"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v10

    .line 821
    const-string v2, "lowestBackwardConversationId"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v12

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    const-string v3, "gmail_start_sync_interval"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 832
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-eqz v3, :cond_7

    if-eqz p1, :cond_7

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int v2, v3, v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 835
    :goto_2
    const-string v3, "startSyncNeeded"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->fc(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "unackedSentOperations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->fc(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_8

    .line 851
    :cond_5
    cmp-long v2, v10, v12

    if-gez v2, :cond_6

    .line 852
    const-wide/16 v10, 0x0

    .line 853
    const-wide/16 v12, 0x0

    .line 855
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->DR()I

    move-result v5

    const-string v2, "clientOpToAck"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJJJJJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    goto/16 :goto_1

    .line 832
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 866
    :cond_8
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkG:Z

    if-eqz v2, :cond_a

    .line 867
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 868
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 878
    :goto_3
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 880
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "highestMessageIds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 884
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    const-string v2, "clientOpToAck"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v16

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->He()Ljava/util/ArrayList;

    move-result-object v20

    move-wide v14, v8

    move-object/from16 v21, p2

    invoke-virtual/range {v10 .. v21}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/aX;)Lcom/google/common/a/a/a;

    move-result-object v8

    .line 896
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailSync;->bln:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 870
    :cond_a
    if-eqz p3, :cond_b

    .line 873
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->Hd()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v18, p3

    goto :goto_3

    .line 870
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/aX;)Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_4

    .line 897
    :cond_c
    const/4 v2, 0x7

    invoke-virtual {v8, v2}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v2

    .line 898
    new-instance v10, Lcom/google/android/gm/provider/bo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/google/android/gm/provider/bo;-><init>(Lcom/google/android/gm/provider/MailSync;Lcom/google/common/a/a/a;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    move-object/from16 v0, p2

    invoke-interface {v2, v10, v0, v4, v5}, Lcom/google/android/gm/provider/ba;->a(Lcom/google/android/gm/provider/be;Lcom/google/android/gm/provider/aX;J)V

    .line 901
    invoke-virtual {v10}, Lcom/google/android/gm/provider/bo;->HG()Ljava/util/ArrayList;

    move-result-object v11

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->bcK:Lcom/google/android/gm/provider/bG;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->DR()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJLcom/google/common/a/a/a;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v9

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    const-string v3, "gmail_use_multipart_protobuf"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    .line 908
    :goto_5
    if-eqz v2, :cond_12

    :try_start_1
    invoke-virtual {v10}, Lcom/google/android/gm/provider/bo;->HF()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v11, :cond_12

    .line 915
    new-instance v3, Lcom/google/android/gm/provider/bn;

    const-string v5, "PROTOBUFDATA"

    invoke-virtual {v8}, Lcom/google/common/a/a/a;->getDataSize()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v8}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gm/provider/bn;-><init>(Lcom/google/android/gm/provider/MailSync;Ljava/lang/String;J[B)V

    .line 917
    new-instance v2, Lcom/google/android/common/http/a;

    const-string v4, "PROTOBUFDATA"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/google/android/common/http/a;-><init>(Ljava/lang/String;Lcom/google/android/common/http/i;Ljava/lang/String;)V

    .line 918
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    new-instance v3, Lcom/google/android/common/http/d;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/common/http/g;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/common/http/g;

    invoke-direct {v3, v2}, Lcom/google/android/common/http/d;-><init>([Lcom/google/android/common/http/g;)V

    invoke-virtual {v9, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 945
    :goto_6
    invoke-virtual {v10}, Lcom/google/android/gm/provider/bg;->HB()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->blv:[J

    const/4 v5, 0x5

    aget-wide v6, v4, v5

    add-long/2addr v2, v6

    aput-wide v2, v4, v5

    .line 948
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "moreForwardSyncNeeded"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailSync;->fc(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_14

    :cond_d
    const/4 v2, 0x1

    .line 954
    :goto_7
    invoke-virtual {v10}, Lcom/google/android/gm/provider/bg;->HB()I

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    .line 956
    :goto_8
    if-nez v3, :cond_f

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gm/provider/aX;->bkG:Z

    if-nez v3, :cond_e

    if-nez v2, :cond_f

    :cond_e
    if-eqz p1, :cond_16

    .line 958
    :cond_f
    const-string v2, "moreForwardSyncNeeded"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 959
    invoke-virtual {v10}, Lcom/google/android/gm/provider/bg;->HB()I

    move-result v2

    if-eqz v2, :cond_10

    .line 960
    const-string v2, "unackedSentOperations"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 962
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    move-object v2, v9

    .line 963
    goto/16 :goto_1

    .line 905
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 921
    :cond_12
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 922
    invoke-virtual {v8, v3}, Lcom/google/common/a/a/a;->g(Ljava/io/OutputStream;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    const-string v4, "gmail_max_gzip_size_bytes"

    const v5, 0x3d090

    invoke-static {v2, v4, v5}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 932
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-gt v4, v2, :cond_13

    .line 933
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->Hb:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v2

    .line 938
    :goto_9
    invoke-virtual {v9, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 941
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Should not get IO errors while writing to ram"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    :cond_13
    :try_start_3
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    .line 948
    :cond_14
    const/4 v2, 0x0

    goto :goto_7

    .line 954
    :cond_15
    const/4 v3, 0x0

    goto :goto_8

    .line 967
    :cond_16
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lowestBackward conversation id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 969
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public final a(Lorg/apache/http/HttpResponse;J)V
    .locals 8

    .prologue
    .line 1258
    const/4 v3, 0x0

    new-instance v6, Lcom/google/android/gm/provider/aX;

    invoke-direct {v6}, Lcom/google/android/gm/provider/aX;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/MailSync;->a(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)I

    .line 1259
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1365
    .line 1370
    if-eqz p1, :cond_4

    .line 1371
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->bhh:Ljava/util/regex/Pattern;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1373
    const-string v3, "labelsIncluded"

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    or-int/lit8 v3, v3, 0x0

    move-object v5, v0

    .line 1375
    :goto_0
    if-eqz p2, :cond_3

    .line 1376
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->bhh:Ljava/util/regex/Pattern;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1378
    const-string v6, "labelsPartial"

    invoke-direct {p0, v6, v0}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v6

    or-int/2addr v3, v6

    move-object v10, v0

    move v0, v3

    move-object v3, v10

    .line 1380
    :goto_1
    if-eqz p3, :cond_0

    .line 1381
    const-string v6, "conversationAgeDays"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v6, v8, v9}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    move-result v6

    or-int/2addr v0, v6

    .line 1383
    :cond_0
    if-eqz p4, :cond_1

    .line 1384
    const-string v6, "maxAttachmentSize"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v6, v8, v9}, Lcom/google/android/gm/provider/MailSync;->q(Ljava/lang/String;J)Z

    move-result v6

    or-int/2addr v0, v6

    .line 1386
    :cond_1
    const-string v6, "needConfigSuggestion"

    invoke-virtual {p0, v6, v2}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 1387
    if-eqz v0, :cond_2

    .line 1388
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->TAG:Ljava/lang/String;

    const-string v6, "config changed locally to changed the label sets to: included(%s), partial(%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/android/gm/provider/ad;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v3}, Lcom/google/android/gm/provider/ad;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v6, v7}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1392
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 1393
    invoke-direct {p0, v4, v4, v4}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1394
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->HA()V

    move v0, v1

    .line 1397
    :goto_2
    return v0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v5, v4

    move v3, v2

    goto :goto_0
.end method

.method final fc(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 3615
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3616
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3617
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3619
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lcom/google/android/gm/provider/af;)J
    .locals 10

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v0, 0x0

    .line 1441
    const-string v4, "labelsIncluded"

    invoke-direct {p0, v4}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 1442
    const-string v5, "labelsPartial"

    invoke-direct {p0, v5}, Lcom/google/android/gm/provider/MailSync;->fe(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 1444
    iget-object v6, p0, Lcom/google/android/gm/provider/MailSync;->blr:Lcom/google/android/gm/provider/ba;

    invoke-interface {v6, p1}, Lcom/google/android/gm/provider/ba;->b(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v6

    .line 1453
    const-string v7, "clientId"

    invoke-direct {p0, v7}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, v0

    if-nez v7, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return-wide v0

    .line 1461
    :cond_1
    if-eqz p1, :cond_2

    iget-wide v8, p1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v8, v9}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1466
    :cond_2
    if-eqz v6, :cond_6

    .line 1468
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1483
    :goto_1
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v5, "lowestBackwardConversationId"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1484
    const-string v2, "lowestBackwardConversationId"

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v2

    .line 1486
    :cond_3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 1471
    :cond_4
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1472
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->bls:Ljava/util/Map;

    const-string v1, "lowestMessageIdInDuration"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1473
    const-string v0, "lowestMessageIdInDuration"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->fb(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_1

    :cond_5
    move-wide v0, v2

    .line 1476
    goto :goto_1

    :cond_6
    move-wide v0, v2

    .line 1479
    goto :goto_1
.end method

.method public final onSyncCanceled()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->bln:Z

    .line 715
    return-void
.end method

.method final p(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 3661
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->aa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
