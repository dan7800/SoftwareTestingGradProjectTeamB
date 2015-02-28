.class public final Lcom/android/email/service/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static UA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/service/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final UB:Ljava/lang/Object;

.field private static final Uz:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/android/email/service/n;->Uz:Landroid/content/res/Configuration;

    .line 521
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/n;->UA:Ljava/util/Map;

    .line 522
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/service/n;->UB:Ljava/lang/Object;

    return-void
.end method

.method public static N(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {p0}, Lcom/android/email/service/n;->P(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/o;

    .line 114
    iget-object v2, v0, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 115
    invoke-static {v0}, Lcom/android/email/service/n;->a(Lcom/android/email/service/o;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public static O(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/email/service/n;->P(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/o;

    .line 126
    iget-object v0, v0, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static P(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/service/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p0}, Lcom/android/email/service/n;->Q(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static Q(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/service/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 528
    sget-object v1, Lcom/android/email/service/n;->UB:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_0
    sget-object v0, Lcom/android/email/service/n;->UA:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 534
    sget-object v0, Lcom/android/email/service/n;->Uz:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 537
    :cond_0
    sget-object v0, Lcom/android/email/service/n;->Uz:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 540
    sget-object v2, Lcom/android/email/service/n;->UA:Ljava/util/Map;

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    sget-object v0, Lcom/android/email/service/n;->UA:Ljava/util/Map;

    monitor-exit v1

    .line 651
    :goto_0
    return-object v0

    .line 545
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v0

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 550
    sput-object v0, Lcom/android/email/service/n;->UA:Ljava/util/Map;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 554
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 555
    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 558
    :cond_3
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-eq v4, v10, :cond_5

    .line 559
    if-ne v4, v9, :cond_3

    const-string v4, "emailservice"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 561
    new-instance v4, Lcom/android/email/service/o;

    invoke-direct {v4}, Lcom/android/email/service/o;-><init>()V

    .line 562
    sget-object v5, Lcom/android/email/t;->rM:[I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 564
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    .line 565
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    .line 566
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/email/service/o;->name:Ljava/lang/String;

    .line 567
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/email/service/o;->Vc:Z

    .line 568
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 570
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    .line 571
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/email/service/o;->UE:Ljava/lang/String;

    .line 573
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UG:Z

    .line 575
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v4, Lcom/android/email/service/o;->port:I

    .line 576
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v4, Lcom/android/email/service/o;->UF:I

    .line 577
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UH:Z

    .line 578
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UI:Z

    .line 580
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UJ:Z

    .line 582
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UL:Z

    .line 584
    const/16 v7, 0xe

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v4, Lcom/android/email/service/o;->UM:I

    .line 587
    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UN:Z

    .line 589
    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UK:Z

    .line 590
    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UO:Z

    .line 592
    const/16 v7, 0x15

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UP:Z

    .line 594
    const/16 v7, 0x18

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v4, Lcom/android/email/service/o;->UQ:I

    .line 597
    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UR:Z

    .line 599
    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->US:Z

    .line 601
    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UT:Z

    .line 603
    const/16 v7, 0x19

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UU:Z

    .line 606
    const/16 v7, 0x1a

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v4, Lcom/android/email/service/o;->UV:[Ljava/lang/CharSequence;

    .line 608
    const/16 v7, 0x1b

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v4, Lcom/android/email/service/o;->UW:[Ljava/lang/CharSequence;

    .line 610
    const/16 v7, 0x1c

    const/16 v8, 0xf

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v4, Lcom/android/email/service/o;->UX:I

    .line 612
    const/16 v7, 0x1d

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/email/service/o;->UY:Ljava/lang/String;

    .line 613
    const/16 v7, 0x16

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->UZ:Z

    .line 615
    const/16 v7, 0x17

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->Va:Z

    .line 617
    const/16 v7, 0x1e

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Lcom/android/email/service/o;->Vb:Z

    .line 619
    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/email/service/o;->Vd:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    if-eqz v6, :cond_4

    .line 626
    :try_start_2
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/service/o;->UC:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :cond_4
    :try_start_3
    iget-object v5, v4, Lcom/android/email/service/o;->UC:Ljava/lang/Class;

    if-nez v5, :cond_6

    iget-object v5, v4, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    if-nez v5, :cond_6

    iget-boolean v5, v4, Lcom/android/email/service/o;->Vd:Z

    if-nez v5, :cond_6

    .line 635
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No class or intent action specified in service descriptor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    :catch_0
    move-exception v2

    .line 650
    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 651
    sput-object v0, Lcom/android/email/service/n;->UA:Ljava/util/Map;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 628
    :catch_1
    move-exception v2

    :try_start_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class not found in service descriptor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    goto :goto_2

    .line 638
    :cond_6
    iget-object v5, v4, Lcom/android/email/service/o;->UC:Ljava/lang/Class;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 639
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Both class and intent action specified in service descriptor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    :cond_7
    iget-object v5, v4, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public static R(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 762
    invoke-static {p0}, Lcom/android/emailcommon/VendorPolicyLoader;->W(Landroid/content/Context;)Lcom/android/emailcommon/VendorPolicyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/VendorPolicyLoader;->kN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Enabling alternate EAS authenticator"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 764
    const-class v0, Lcom/android/email/service/EasAuthenticatorServiceAlternate;

    invoke-static {p0, v0, v4}, Lcom/android/email/service/n;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 765
    const-class v0, Lcom/android/email/service/EasAuthenticatorService;

    invoke-static {p0, v0, v3}, Lcom/android/email/service/n;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 772
    :goto_0
    return-void

    .line 767
    :cond_0
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Enabling EAS authenticator"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 768
    const-class v0, Lcom/android/email/service/EasAuthenticatorService;

    invoke-static {p0, v0, v4}, Lcom/android/email/service/n;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 769
    const-class v0, Lcom/android/email/service/EasAuthenticatorServiceAlternate;

    invoke-static {p0, v0, v3}, Lcom/android/email/service/n;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0
.end method

.method public static S(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 775
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Disabling EAS authenticators"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 776
    const-class v0, Lcom/android/email/service/EasAuthenticatorServiceAlternate;

    invoke-static {p0, v0, v3}, Lcom/android/email/service/n;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 777
    const-class v0, Lcom/android/email/service/EasAuthenticatorService;

    invoke-static {p0, v0, v3}, Lcom/android/email/service/n;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 778
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZ)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "ZZZ)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->XC:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->u(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 294
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/n;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLcom/android/emailcommon/provider/HostAuth;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLcom/android/emailcommon/provider/HostAuth;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "ZZZ",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 313
    if-nez p5, :cond_0

    .line 324
    :goto_0
    return-object v2

    .line 317
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 318
    const-string v0, "username"

    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "password"

    iget-object v1, p5, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "contacts"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    const-string v0, "calendar"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    const-string v0, "email"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    iget-object v0, p5, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v1

    .line 324
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, v1, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Lcom/android/email/service/o;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/email/service/o;->UE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    return-object v0
.end method

.method private static a(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 269
    :try_start_0
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 277
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "finishAccountManagerBlocker"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "finishAccountManagerBlocker"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 274
    :catch_2
    move-exception v0

    .line 275
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "finishAccountManagerBlocker"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 331
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->XO:[Ljava/lang/String;

    const-string v5, "emailAddress=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 334
    if-nez v7, :cond_0

    .line 487
    :goto_0
    return-void

    .line 336
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 338
    new-instance v8, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 339
    invoke-virtual {v8, v7}, Lcom/android/emailcommon/provider/Account;->b(Landroid/database/Cursor;)V

    .line 340
    iget-wide v4, v8, Lcom/android/emailcommon/provider/Account;->XC:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->u(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v9

    .line 342
    if-nez v9, :cond_1

    .line 486
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 346
    :cond_1
    :try_start_1
    iget-object v3, v9, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 347
    if-nez v3, :cond_2

    .line 486
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 352
    :cond_2
    :try_start_2
    sget-object v4, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v5, "Converting %s to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x1

    aput-object v3, v6, v10

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 355
    iget v11, v8, Lcom/android/emailcommon/provider/Account;->dM:I

    .line 358
    iget v4, v8, Lcom/android/emailcommon/provider/Account;->dM:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v8, Lcom/android/emailcommon/provider/Account;->dM:I

    .line 359
    const-string v4, "flags"

    iget v5, v8, Lcom/android/emailcommon/provider/Account;->dM:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, v8, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 361
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 366
    const-string v5, "protocol"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v14, v9, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "Updated HostAuths"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 373
    :try_start_3
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 375
    if-nez v3, :cond_8

    .line 377
    const-string v3, "com.android.email.provider"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    move v6, v3

    .line 380
    :goto_1
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 382
    const-string v3, "com.android.calendar"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v14

    .line 384
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "Email: %s, Contacts: %s Calendar: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v15

    const/4 v15, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v15

    const/4 v15, 0x2

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v15

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 388
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 389
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 392
    const/4 v3, 0x0

    .line 394
    :try_start_4
    sget-object v5, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-static {v5, v15, v0}, Lcom/android/email/service/n;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v17, Landroid/accounts/Account;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 400
    :try_start_5
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    move-object v5, v3

    .line 402
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 404
    const/4 v3, 0x0

    .line 406
    :try_start_6
    sget-object v17, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    new-instance v18, Landroid/accounts/Account;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v3

    .line 412
    :try_start_7
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    move-object v4, v3

    .line 414
    :goto_3
    if-eqz v5, :cond_3

    .line 415
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v17, "Got calendar key: %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 418
    :cond_3
    if-eqz v4, :cond_4

    .line 419
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v17, "Got contacts key: %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 424
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v8, v6, v14, v13}, Lcom/android/email/service/n;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZ)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    .line 426
    invoke-static {v3}, Lcom/android/email/service/n;->a(Landroid/accounts/AccountManagerFuture;)V

    .line 427
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v6, "Created new AccountManager account"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v8}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_type"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "caller_is_syncadapter"

    const-string v13, "true"

    invoke-virtual {v8, v9, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "account_name"

    invoke-virtual {v8, v9, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v8, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "account_type"

    invoke-virtual {v9, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "account_name=? AND account_type=?"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const/16 v17, 0x1

    aput-object v16, v14, v17

    invoke-virtual {v6, v8, v9, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "caller_is_syncadapter"

    const-string v13, "true"

    invoke-virtual {v8, v9, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "account_name"

    invoke-virtual {v8, v9, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v8, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "account_type"

    invoke-virtual {v9, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v8, v9, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 437
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v8, v9}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    .line 439
    invoke-static {v6}, Lcom/android/email/service/n;->a(Landroid/accounts/AccountManagerFuture;)V

    .line 440
    sget-object v6, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v8, "Deleted old AccountManager account"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-eqz v6, :cond_5

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    .line 449
    :try_start_8
    sget-object v8, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v15, v3}, Lcom/android/email/service/n;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v15, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8, v9, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 454
    sget-object v5, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v8, "Set calendar key..."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 458
    :try_start_9
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 461
    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    array-length v5, v4

    if-eqz v5, :cond_6

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v5

    .line 466
    :try_start_a
    sget-object v6, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v15, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6, v8, v4}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 470
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "Set contacts key..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 477
    :cond_6
    :goto_5
    :try_start_b
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "Account update completed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 480
    :try_start_c
    const-string v3, "flags"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "[Incomplete flag cleared]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 486
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v5

    :try_start_d
    sget-object v5, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v17, "Get calendar key FAILED"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 400
    :try_start_e
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    move-object v5, v3

    .line 401
    goto/16 :goto_2

    .line 400
    :catchall_0
    move-exception v3

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 480
    :catchall_1
    move-exception v3

    :try_start_f
    const-string v4, "flags"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "[Incomplete flag cleared]"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 486
    :catchall_2
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 410
    :catch_1
    move-exception v17

    :try_start_10
    sget-object v17, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v18, "Get contacts key FAILED"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 412
    :try_start_11
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    move-object v4, v3

    .line 413
    goto/16 :goto_3

    .line 412
    :catchall_3
    move-exception v3

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 456
    :catch_2
    move-exception v5

    :try_start_12
    sget-object v5, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v8, "Set calendar key FAILED"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 458
    :try_start_13
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_4

    :catchall_4
    move-exception v3

    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    throw v3

    .line 472
    :catch_3
    move-exception v3

    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "Set contacts key FAILED"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_5

    :cond_8
    move v6, v3

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 750
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 755
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/email/service/n;->P(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/o;

    .line 138
    iget-object v2, v0, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 139
    iget-object v0, v0, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/email/service/n;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/a;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/service/a;->bd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    invoke-static {v0}, Lcom/android/email/service/n;->a(Lcom/android/email/service/o;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string v1, "ServiceProxy.FORCE_SHUTDOWN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    :cond_0
    return-void
.end method

.method public static i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;
    .locals 1

    .prologue
    .line 176
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->m(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/service/n;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/a;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/email/service/o;->UD:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    invoke-static {v0}, Lcom/android/email/service/n;->a(Lcom/android/email/service/o;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    :cond_0
    return-void
.end method

.method public static j(Landroid/content/Context;J)Lcom/android/email/service/o;
    .locals 1

    .prologue
    .line 253
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->m(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {p0, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_0
    iget-object v1, v0, Lcom/android/email/service/o;->UC:Ljava/lang/Class;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v0}, Lcom/android/email/service/n;->a(Lcom/android/email/service/o;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/android/emailcommon/service/a;

    invoke-direct {v1, p0, v0}, Lcom/android/emailcommon/service/a;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/a;->mb()Z

    move-result v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/a;
    .locals 4

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 232
    if-eqz p1, :cond_2

    .line 233
    invoke-static {p0, p1}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    move-object v1, v0

    .line 235
    :goto_0
    if-nez v1, :cond_0

    .line 236
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Returning NullService for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    new-instance v0, Lcom/android/emailcommon/service/a;

    const-class v1, Lcom/android/email/service/p;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/android/email/service/o;->UC:Ljava/lang/Class;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/emailcommon/service/a;

    iget-object v1, v1, Lcom/android/email/service/o;->UC:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/android/email/service/n;->a(Lcom/android/email/service/o;)Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Lcom/android/emailcommon/service/a;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/a;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;
    .locals 1

    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/email/service/n;->Q(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/o;

    return-object v0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 663
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-object v2

    .line 666
    :cond_1
    invoke-static {p0}, Lcom/android/email/service/n;->Q(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 668
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/o;

    .line 669
    iget-object v4, v0, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 670
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    :cond_2
    iget-object v0, v0, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    :goto_2
    move-object v1, v0

    .line 676
    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 677
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
