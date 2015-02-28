.class public Lcom/google/android/gm/provider/B;
.super Lcom/google/android/gm/provider/G;
.source "SourceFile"


# static fields
.field static final synthetic vb:Z


# instance fields
.field private final bdZ:I

.field private final bea:I

.field private final beb:I

.field private final bec:I

.field private final bed:I

.field private final bee:I

.field private final bef:I

.field private final beg:I

.field private final beh:I

.field private final bei:I

.field private final bej:I

.field private final bek:I

.field private final bel:I

.field private final bem:I

.field private final ben:I

.field private final beo:I

.field private final bep:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;>;"
        }
    .end annotation
.end field

.field private final beq:Landroid/text/TextUtils$StringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3497
    const-class v0, Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/B;->vb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 3526
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gm/provider/G;-><init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3514
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/provider/B;->bep:Landroid/util/LruCache;

    .line 3518
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->DZ()Landroid/text/TextUtils$StringSplitter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/B;->beq:Landroid/text/TextUtils$StringSplitter;

    .line 3528
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bdZ:I

    .line 3530
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bea:I

    .line 3531
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "snippet"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->beb:I

    .line 3532
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "fromAddress"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bec:I

    .line 3533
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bef:I

    .line 3534
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "personalLevel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->beg:I

    .line 3536
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "numMessages"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->beh:I

    .line 3537
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "maxMessageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bei:I

    .line 3538
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "hasAttachments"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bej:I

    .line 3540
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "hasMessagesWithErrors"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bek:I

    .line 3542
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "forceAllUnread"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bel:I

    .line 3544
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "synced"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bem:I

    .line 3545
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "conversationLabels"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->ben:I

    .line 3547
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "labelIds"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->beo:I

    .line 3548
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "fromProtoBuf"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bed:I

    .line 3549
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    const-string v1, "fromCompact"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/B;->bee:I

    .line 3550
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 3497
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gm/provider/B;-><init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method protected final Ea()V
    .locals 0

    .prologue
    .line 3554
    invoke-super {p0}, Lcom/google/android/gm/provider/G;->Ea()V

    .line 3555
    return-void
.end method

.method public final Eb()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3663
    iget v0, p0, Lcom/google/android/gm/provider/B;->beo:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3664
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/B;->beo:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3665
    iget-object v1, p0, Lcom/google/android/gm/provider/B;->beq:Landroid/text/TextUtils$StringSplitter;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {v1, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3666
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->beq:Landroid/text/TextUtils$StringSplitter;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->a(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v0

    .line 3670
    :goto_0
    return-object v0

    .line 3668
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->Ed()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->j(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final Ec()J
    .locals 2

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/B;->bei:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Ed()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->zC()J

    move-result-wide v2

    .line 3715
    iget-object v1, p0, Lcom/google/android/gm/provider/B;->bep:Landroid/util/LruCache;

    monitor-enter v1

    .line 3716
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->bep:Landroid/util/LruCache;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/B;->zC()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3717
    if-nez v0, :cond_0

    .line 3718
    iget-object v4, p0, Lcom/google/android/gm/provider/B;->mAccount:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gm/provider/B;->ben:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/B;->ben:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v4, v0}, Lcom/google/android/gm/provider/Y;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3719
    iget-object v4, p0, Lcom/google/android/gm/provider/B;->bep:Landroid/util/LruCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    :cond_0
    monitor-exit v1

    .line 3722
    return-object v0

    .line 3718
    :cond_1
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3721
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final zC()J
    .locals 2

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/google/android/gm/provider/B;->eR:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/B;->bdZ:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
