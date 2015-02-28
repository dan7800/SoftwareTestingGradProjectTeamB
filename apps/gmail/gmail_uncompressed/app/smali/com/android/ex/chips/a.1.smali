.class public Lcom/android/ex/chips/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/ex/chips/r;


# instance fields
.field private Tw:Landroid/accounts/Account;

.field private final abY:Lcom/android/ex/chips/v;

.field private final abZ:I

.field protected final aca:I

.field private acb:Lcom/android/ex/chips/DropdownChipLayouter;

.field private acc:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;>;"
        }
    .end annotation
.end field

.field private acd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation
.end field

.field private ace:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private acf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation
.end field

.field private acg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation
.end field

.field private ach:I

.field protected aci:Ljava/lang/CharSequence;

.field private acj:Lcom/android/ex/chips/q;

.field private final ack:Lcom/android/ex/chips/d;

.field private acl:Lcom/android/ex/chips/h;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/a;-><init>(Landroid/content/Context;B)V

    .line 527
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 518
    new-instance v0, Lcom/android/ex/chips/d;

    invoke-direct {v0, p0, v2}, Lcom/android/ex/chips/d;-><init>(Lcom/android/ex/chips/a;B)V

    iput-object v0, p0, Lcom/android/ex/chips/a;->ack:Lcom/android/ex/chips/d;

    .line 542
    iput-object p1, p0, Lcom/android/ex/chips/a;->mContext:Landroid/content/Context;

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/a;->mContentResolver:Landroid/content/ContentResolver;

    .line 544
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ex/chips/a;->aca:I

    .line 545
    new-instance v0, Lcom/android/ex/chips/j;

    iget-object v1, p0, Lcom/android/ex/chips/a;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/android/ex/chips/j;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/ex/chips/a;->acj:Lcom/android/ex/chips/q;

    .line 546
    iput v2, p0, Lcom/android/ex/chips/a;->abZ:I

    .line 548
    sget-object v0, Lcom/android/ex/chips/s;->adj:Lcom/android/ex/chips/v;

    iput-object v0, p0, Lcom/android/ex/chips/a;->abY:Lcom/android/ex/chips/v;

    .line 550
    return-void
.end method

.method static synthetic a(Lcom/android/ex/chips/a;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/ex/chips/a;->abY:Lcom/android/ex/chips/v;

    invoke-virtual {v0}, Lcom/android/ex/chips/v;->mA()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    add-int/lit8 v2, p2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v0, "directory"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/a;->Tw:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    const-string v0, "name_for_primary_account"

    iget-object v2, p0, Lcom/android/ex/chips/a;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "type_for_primary_account"

    iget-object v2, p0, Lcom/android/ex/chips/a;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/android/ex/chips/a;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/a;->abY:Lcom/android/ex/chips/v;

    invoke-virtual {v2}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object v0
.end method

.method static synthetic a(Lcom/android/ex/chips/a;)Lcom/android/ex/chips/d;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/ex/chips/a;->ack:Lcom/android/ex/chips/d;

    return-object v0
.end method

.method static synthetic a(Lcom/android/ex/chips/a;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/ex/chips/a;->acc:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 636
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 637
    const/4 v0, 0x0

    .line 638
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 639
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 643
    const-wide/16 v8, 0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    .line 644
    new-instance v1, Lcom/android/ex/chips/g;

    invoke-direct {v1}, Lcom/android/ex/chips/g;-><init>()V

    .line 648
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 649
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 650
    iput-wide v6, v1, Lcom/android/ex/chips/g;->act:J

    .line 651
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ex/chips/g;->acv:Ljava/lang/String;

    .line 652
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ex/chips/g;->acw:Ljava/lang/String;

    .line 653
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ex/chips/g;->accountType:Ljava/lang/String;

    .line 654
    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    .line 656
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 658
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ex/chips/g;->acu:Ljava/lang/String;

    .line 659
    iget-object v2, v1, Lcom/android/ex/chips/g;->acu:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 660
    const-string v2, "BaseRecipientAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot resolve directory name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/ex/chips/g;->acw:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/ex/chips/g;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 674
    goto :goto_0

    .line 663
    :catch_0
    move-exception v2

    .line 664
    const-string v6, "BaseRecipientAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Cannot resolve directory name: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 676
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 680
    :cond_3
    if-eqz v0, :cond_4

    .line 681
    invoke-interface {v4, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 684
    :cond_4
    return-object v4
.end method

.method static synthetic a(Lcom/android/ex/chips/a;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/ex/chips/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/ex/chips/a;->acd:Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 780
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 782
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 783
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 784
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v4, v2

    move v3, v1

    .line 785
    :goto_1
    if-ge v4, v7, :cond_0

    .line 786
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/ae;

    .line 787
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v8, p0, Lcom/android/ex/chips/a;->acj:Lcom/android/ex/chips/q;

    invoke-interface {v8, v1, p0}, Lcom/android/ex/chips/q;->b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V

    .line 789
    add-int/lit8 v3, v3, 0x1

    .line 785
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 791
    :cond_0
    iget v0, p0, Lcom/android/ex/chips/a;->aca:I

    if-le v3, v0, :cond_2

    .line 792
    :goto_2
    iget v0, p0, Lcom/android/ex/chips/a;->aca:I

    if-gt v3, v0, :cond_1

    .line 796
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/ae;

    .line 797
    iget v2, p0, Lcom/android/ex/chips/a;->aca:I

    if-gt v3, v2, :cond_1

    .line 798
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v2, p0, Lcom/android/ex/chips/a;->acj:Lcom/android/ex/chips/q;

    invoke-interface {v2, v0, p0}, Lcom/android/ex/chips/q;->b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V

    .line 802
    add-int/lit8 v3, v3, 0x1

    .line 803
    goto :goto_3

    .line 806
    :cond_1
    return-object v5

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/ex/chips/a;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/ex/chips/a;->ace:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic a(Lcom/android/ex/chips/i;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/i;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method private static a(Lcom/android/ex/chips/i;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/chips/i;",
            "Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    iget-object v2, p0, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v2, p0, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 735
    if-nez p1, :cond_1

    .line 736
    iget-object v2, p0, Lcom/android/ex/chips/i;->acv:Ljava/lang/String;

    iget v3, p0, Lcom/android/ex/chips/i;->acG:I

    iget-object v4, p0, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    iget v5, p0, Lcom/android/ex/chips/i;->acA:I

    iget-object v6, p0, Lcom/android/ex/chips/i;->acB:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/ex/chips/i;->acC:J

    iget-object v9, p0, Lcom/android/ex/chips/i;->acD:Ljava/lang/Long;

    iget-wide v10, p0, Lcom/android/ex/chips/i;->acE:J

    iget-object v12, p0, Lcom/android/ex/chips/i;->acF:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/ex/chips/i;->acH:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lcom/android/ex/chips/ae;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    :cond_1
    iget-wide v2, p0, Lcom/android/ex/chips/i;->acC:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    iget-wide v2, p0, Lcom/android/ex/chips/i;->acC:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 745
    iget-object v2, p0, Lcom/android/ex/chips/i;->acv:Ljava/lang/String;

    iget v3, p0, Lcom/android/ex/chips/i;->acG:I

    iget-object v4, p0, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    iget v5, p0, Lcom/android/ex/chips/i;->acA:I

    iget-object v6, p0, Lcom/android/ex/chips/i;->acB:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/ex/chips/i;->acC:J

    iget-object v9, p0, Lcom/android/ex/chips/i;->acD:Ljava/lang/Long;

    iget-wide v10, p0, Lcom/android/ex/chips/i;->acE:J

    iget-object v12, p0, Lcom/android/ex/chips/i;->acF:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/ex/chips/i;->acH:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lcom/android/ex/chips/ae;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 752
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 753
    iget-object v2, p0, Lcom/android/ex/chips/i;->acv:Ljava/lang/String;

    iget v3, p0, Lcom/android/ex/chips/i;->acG:I

    iget-object v4, p0, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    iget v5, p0, Lcom/android/ex/chips/i;->acA:I

    iget-object v6, p0, Lcom/android/ex/chips/i;->acB:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/ex/chips/i;->acC:J

    iget-object v9, p0, Lcom/android/ex/chips/i;->acD:Ljava/lang/Long;

    iget-wide v10, p0, Lcom/android/ex/chips/i;->acE:J

    iget-object v12, p0, Lcom/android/ex/chips/i;->acF:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/ex/chips/i;->acH:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lcom/android/ex/chips/ae;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    iget-wide v2, p0, Lcom/android/ex/chips/i;->acC:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/android/ex/chips/a;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/android/ex/chips/a;->ach:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/ex/chips/a;->ach:I

    return v0
.end method

.method static synthetic c(Lcom/android/ex/chips/a;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/ex/chips/a;->ach:I

    return v0
.end method

.method private mq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/ex/chips/a;->acg:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/a;->acg:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/a;->acf:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method protected final D(II)V
    .locals 1

    .prologue
    .line 833
    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/ex/chips/a;->acf:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ex/chips/a;->acg:Ljava/util/List;

    .line 836
    :cond_0
    return-void
.end method

.method public final a(Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/ex/chips/a;->Tw:Landroid/accounts/Account;

    .line 615
    return-void
.end method

.method public final a(Lcom/android/ex/chips/DropdownChipLayouter;)V
    .locals 2

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/ex/chips/a;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 568
    iget-object v0, p0, Lcom/android/ex/chips/a;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    iget-object v1, p0, Lcom/android/ex/chips/a;->abY:Lcom/android/ex/chips/v;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Lcom/android/ex/chips/v;)V

    .line 569
    return-void
.end method

.method protected final a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/ex/chips/a;->acj:Lcom/android/ex/chips/q;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/chips/q;->b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V

    .line 852
    return-void
.end method

.method public final a(Lcom/android/ex/chips/h;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/ex/chips/a;->acl:Lcom/android/ex/chips/h;

    .line 816
    return-void
.end method

.method protected a(Lcom/android/ex/chips/i;Z)V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/ex/chips/a;->acc:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/ex/chips/a;->acd:Ljava/util/List;

    iget-object v2, p0, Lcom/android/ex/chips/a;->ace:Ljava/util/Set;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/i;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    .line 723
    return-void
.end method

.method public final a(Lcom/android/ex/chips/q;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/ex/chips/a;->acj:Lcom/android/ex/chips/q;

    .line 580
    return-void
.end method

.method protected final a(Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/g;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 693
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 695
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 696
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/g;

    .line 697
    iput-object p1, v0, Lcom/android/ex/chips/g;->acx:Ljava/lang/CharSequence;

    .line 698
    iget-object v3, v0, Lcom/android/ex/chips/g;->acy:Lcom/android/ex/chips/e;

    if-nez v3, :cond_0

    .line 699
    new-instance v3, Lcom/android/ex/chips/e;

    invoke-direct {v3, p0, v0}, Lcom/android/ex/chips/e;-><init>(Lcom/android/ex/chips/a;Lcom/android/ex/chips/g;)V

    iput-object v3, v0, Lcom/android/ex/chips/g;->acy:Lcom/android/ex/chips/e;

    .line 701
    :cond_0
    iget-object v3, v0, Lcom/android/ex/chips/g;->acy:Lcom/android/ex/chips/e;

    invoke-virtual {v3, p3}, Lcom/android/ex/chips/e;->bp(I)V

    .line 702
    iget-object v0, v0, Lcom/android/ex/chips/g;->acy:Lcom/android/ex/chips/e;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/e;->filter(Ljava/lang/CharSequence;)V

    .line 695
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 707
    :cond_1
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/android/ex/chips/a;->ach:I

    .line 708
    iget-object v0, p0, Lcom/android/ex/chips/a;->ack:Lcom/android/ex/chips/d;

    invoke-virtual {v0}, Lcom/android/ex/chips/d;->mv()V

    .line 709
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcom/android/ex/chips/H;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/H;",
            ")V"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/ex/chips/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/chips/a;->Tw:Landroid/accounts/Account;

    invoke-static {v0, p0, p1, v1, p2}, Lcom/android/ex/chips/F;->a(Landroid/content/Context;Lcom/android/ex/chips/a;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/android/ex/chips/H;)V

    .line 607
    return-void
.end method

.method protected final b(Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 317
    iget v0, p0, Lcom/android/ex/chips/a;->aca:I

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 318
    if-lez v0, :cond_2

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/a;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/ex/chips/f;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/ex/chips/f;->Lm:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    iget-object v0, p0, Lcom/android/ex/chips/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/chips/a;->Tw:Landroid/accounts/Account;

    invoke-static {v0, v6, v1}, Lcom/android/ex/chips/a;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 331
    if-eqz v6, :cond_0

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    move-object v0, v6

    .line 337
    goto :goto_0
.end method

.method public final bo(I)Lcom/android/ex/chips/ae;
    .locals 1

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/android/ex/chips/a;->mq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/ae;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/ex/chips/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/android/ex/chips/a;->mq()Ljava/util/List;

    move-result-object v0

    .line 892
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Lcom/android/ex/chips/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/b;-><init>(Lcom/android/ex/chips/a;B)V

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/a;->bo(I)Lcom/android/ex/chips/ae;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 902
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/android/ex/chips/a;->mq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/ae;

    invoke-virtual {v0}, Lcom/android/ex/chips/ae;->mT()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/android/ex/chips/a;->mq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/ae;

    .line 924
    iget-object v0, p0, Lcom/android/ex/chips/a;->aci:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/a;->aci:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/a;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    sget-object v5, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acY:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/ae;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x1

    return v0
.end method

.method protected final h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/ex/chips/a;->acf:Ljava/util/List;

    .line 821
    iget-object v0, p0, Lcom/android/ex/chips/a;->acl:Lcom/android/ex/chips/h;

    invoke-interface {v0, p1}, Lcom/android/ex/chips/h;->i(Ljava/util/List;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/ex/chips/a;->notifyDataSetChanged()V

    .line 823
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/android/ex/chips/a;->mq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/ae;

    invoke-virtual {v0}, Lcom/android/ex/chips/ae;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public final ml()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/android/ex/chips/a;->abZ:I

    return v0
.end method

.method public final mm()Lcom/android/ex/chips/q;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/ex/chips/a;->acj:Lcom/android/ex/chips/q;

    return-object v0
.end method

.method public mn()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method protected mo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/ex/chips/a;->acc:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/ex/chips/a;->acd:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final mp()V
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/a;->acg:Ljava/util/List;

    .line 844
    return-void
.end method

.method public final mr()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/ex/chips/a;->Tw:Landroid/accounts/Account;

    return-object v0
.end method

.method public final ms()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public final mt()V
    .locals 0

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/android/ex/chips/a;->notifyDataSetChanged()V

    .line 943
    return-void
.end method

.method public final mu()V
    .locals 0

    .prologue
    .line 948
    return-void
.end method
