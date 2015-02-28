.class public abstract Lcom/android/mail/browse/A;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static AUTHORITY:Ljava/lang/String;

.field public static amx:Ljava/lang/String;


# instance fields
.field private Hb:Landroid/content/ContentResolver;

.field private amt:Lcom/android/mail/browse/be;

.field private amy:I

.field private amz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1422
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1521
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/A;->amy:I

    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/A;->amz:Ljava/util/ArrayList;

    .line 1523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/A;->amt:Lcom/android/mail/browse/be;

    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/A;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/mail/browse/A;->Hb:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static a(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mail/browse/u;)V
    .locals 4

    .prologue
    .line 1589
    if-nez p1, :cond_1

    .line 1596
    :cond_0
    return-void

    .line 1592
    :cond_1
    invoke-static {p0}, Lcom/android/mail/browse/u;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1593
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1594
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v0, v3}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/android/mail/browse/be;)V
    .locals 2

    .prologue
    .line 1526
    invoke-static {}, Lcom/android/mail/browse/u;->pk()I

    move-result v0

    iget v1, p0, Lcom/android/mail/browse/A;->amy:I

    if-eq v0, v1, :cond_0

    .line 1527
    invoke-static {}, Lcom/android/mail/browse/u;->pk()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/A;->amy:I

    .line 1528
    iget-object v0, p0, Lcom/android/mail/browse/A;->amz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1529
    iput-object p2, p0, Lcom/android/mail/browse/A;->amt:Lcom/android/mail/browse/be;

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/A;->amz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    return-void
.end method

.method static a(Landroid/net/Uri;Lcom/android/mail/browse/u;)V
    .locals 3

    .prologue
    .line 1544
    invoke-static {p0}, Lcom/android/mail/browse/u;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1545
    const-string v1, "__deleted__"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1546
    return-void
.end method

.method static a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 1557
    invoke-virtual {p1, p0}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/providers/Conversation;)V

    .line 1558
    return-void
.end method


# virtual methods
.method final a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V
    .locals 3

    .prologue
    .line 1537
    invoke-static {p1}, Lcom/android/mail/browse/u;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1538
    const-string v1, "__deleted__"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1539
    invoke-direct {p0, p1, p3}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/be;)V

    .line 1540
    return-void
.end method

.method final a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V
    .locals 2

    .prologue
    .line 1550
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 1551
    invoke-static {v0}, Lcom/android/mail/browse/u;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1552
    invoke-virtual {p2, v1, p1}, Lcom/android/mail/browse/u;->a(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)V

    .line 1553
    invoke-direct {p0, v0, p3}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/be;)V

    .line 1554
    return-void
.end method

.method public apply(Ljava/util/Collection;Lcom/android/mail/browse/u;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/browse/z;",
            ">;",
            "Lcom/android/mail/browse/u;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1600
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1603
    invoke-static {}, Lcom/android/mail/browse/u;->pl()I

    .line 1606
    const/4 v0, 0x0

    .line 1607
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/z;

    .line 1608
    invoke-static {v0}, Lcom/android/mail/browse/z;->a(Lcom/android/mail/browse/z;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/browse/u;->l(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1609
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 1610
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1611
    if-nez v1, :cond_0

    .line 1612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    :cond_0
    invoke-static {v0, v5}, Lcom/android/mail/browse/z;->a(Lcom/android/mail/browse/z;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 1616
    if-eqz v5, :cond_1

    .line 1617
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    :cond_1
    invoke-static {v0}, Lcom/android/mail/browse/z;->b(Lcom/android/mail/browse/z;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1621
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 1623
    goto :goto_0

    .line 1626
    :cond_2
    if-eqz v2, :cond_3

    .line 1627
    invoke-static {p2}, Lcom/android/mail/browse/u;->i(Lcom/android/mail/browse/u;)V

    .line 1631
    :cond_3
    invoke-static {p2}, Lcom/android/mail/browse/u;->j(Lcom/android/mail/browse/u;)V

    .line 1634
    invoke-static {}, Lcom/android/mail/browse/u;->oY()Z

    move-result v2

    .line 1635
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1636
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1637
    if-eqz v2, :cond_4

    .line 1639
    :try_start_0
    iget-object v5, p0, Lcom/android/mail/browse/A;->Hb:Landroid/content/ContentResolver;

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1642
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1644
    :cond_4
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mail/browse/B;

    invoke-direct {v6, p0, v0, v1}, Lcom/android/mail/browse/B;-><init>(Lcom/android/mail/browse/A;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 1656
    :cond_5
    invoke-static {}, Lcom/android/mail/browse/u;->pk()I

    move-result v0

    return v0

    .line 1642
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to ConversationProvider.delete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/mail/browse/A;->Hb:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/android/mail/browse/C;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lcom/android/mail/browse/u;)V
    .locals 3

    .prologue
    .line 1566
    iget v0, p0, Lcom/android/mail/browse/A;->amy:I

    if-nez v0, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/A;->amz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1571
    invoke-static {v0}, Lcom/android/mail/browse/u;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/mail/browse/u;->bf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1572
    invoke-static {v0, p1}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;)V

    goto :goto_1

    .line 1575
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/A;->amy:I

    .line 1576
    invoke-static {p1}, Lcom/android/mail/browse/u;->i(Lcom/android/mail/browse/u;)V

    .line 1579
    invoke-static {p1}, Lcom/android/mail/browse/u;->j(Lcom/android/mail/browse/u;)V

    .line 1582
    iget-object v0, p0, Lcom/android/mail/browse/A;->amt:Lcom/android/mail/browse/be;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/android/mail/browse/A;->amt:Lcom/android/mail/browse/be;

    invoke-interface {v0}, Lcom/android/mail/browse/be;->sa()V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 1435
    sput-object p0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    .line 1436
    invoke-virtual {p0}, Lcom/android/mail/browse/A;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/A;->AUTHORITY:Ljava/lang/String;

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/mail/browse/A;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/A;->amx:Ljava/lang/String;

    .line 1438
    invoke-virtual {p0}, Lcom/android/mail/browse/A;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/A;->Hb:Landroid/content/ContentResolver;

    .line 1439
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/mail/browse/A;->Hb:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/mail/browse/u;->l(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1457
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to ConversationProvider.update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
