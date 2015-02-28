.class public Lcom/android/email/service/ImapService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final Ve:[Lcom/android/emailcommon/mail/Flag;

.field private static final Vf:[Lcom/android/emailcommon/mail/Flag;

.field private static final Vg:[Lcom/android/emailcommon/mail/Flag;

.field private static Vh:J

.field private static Vi:Ljava/lang/String;

.field private static Vj:Lcom/android/emailcommon/provider/Mailbox;

.field private static final Vk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/android/email/service/y;",
            ">;"
        }
    .end annotation
.end field

.field private static Vl:Ljava/lang/String;


# instance fields
.field private final Vm:Lcom/android/email/service/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/service/ImapService;->Ve:[Lcom/android/emailcommon/mail/Flag;

    .line 88
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/service/ImapService;->Vf:[Lcom/android/emailcommon/mail/Flag;

    .line 89
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/service/ImapService;->Vg:[Lcom/android/emailcommon/mail/Flag;

    .line 95
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/service/ImapService;->Vh:J

    .line 96
    sput-object v4, Lcom/android/email/service/ImapService;->Vi:Ljava/lang/String;

    .line 97
    sput-object v4, Lcom/android/email/service/ImapService;->Vj:Lcom/android/emailcommon/provider/Mailbox;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/ImapService;->Vk:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 138
    new-instance v0, Lcom/android/email/service/q;

    invoke-direct {v0, p0}, Lcom/android/email/service/q;-><init>(Lcom/android/email/service/ImapService;)V

    iput-object v0, p0, Lcom/android/email/service/ImapService;->Vm:Lcom/android/email/service/l;

    .line 1446
    return-void
.end method

.method private static a(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 21

    .prologue
    .line 1458
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 1459
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/android/emailcommon/service/SearchParams;->PJ:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 1460
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v13

    .line 1461
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-nez v13, :cond_1

    .line 1462
    :cond_0
    sget-object v4, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v5, "Attempted search for %s but account or mailbox information was missing"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1464
    const/4 v4, 0x0

    .line 1615
    :goto_0
    return v4

    .line 1468
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1469
    const-string v4, "uiSyncStatus"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1470
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1472
    const/4 v5, 0x0

    .line 1473
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 1476
    :try_start_1
    iget-object v4, v7, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v15

    .line 1477
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v15, v4}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1479
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/email/service/y;

    .line 1480
    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/emailcommon/service/SearchParams;->gY:I

    if-nez v5, :cond_5

    .line 1482
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/service/SearchParams;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v10

    .line 1483
    array-length v5, v10

    .line 1484
    if-lez v5, :cond_3

    .line 1485
    new-array v4, v5, [Lcom/android/email/service/y;

    .line 1486
    const/4 v8, 0x0

    .line 1487
    array-length v11, v10

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v11, :cond_2

    aget-object v16, v10, v5

    .line 1488
    add-int/lit8 v9, v8, 0x1

    new-instance v17, Lcom/android/email/service/y;

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/service/y;-><init>(Lcom/android/emailcommon/mail/Message;J)V

    aput-object v17, v4, v8

    .line 1487
    add-int/lit8 v5, v5, 0x1

    move v8, v9

    goto :goto_1

    .line 1494
    :cond_2
    new-instance v5, Lcom/android/email/service/u;

    invoke-direct {v5}, Lcom/android/email/service/u;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1500
    sget-object v5, Lcom/android/email/service/ImapService;->Vk:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v5, v4

    .line 1509
    :goto_2
    if-eqz v5, :cond_6

    array-length v11, v5

    .line 1510
    :goto_3
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->gY:I

    sub-int v4, v11, v4

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/emailcommon/service/SearchParams;->aaL:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1512
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v11}, Lcom/android/emailcommon/provider/Mailbox;->g(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    if-gtz v8, :cond_7

    .line 1514
    if-eqz v12, :cond_4

    .line 1607
    invoke-virtual {v12}, Lcom/android/email/mail/b;->iM()V

    .line 1610
    :cond_4
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1611
    const-string v4, "uiSyncStatus"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1506
    :cond_5
    :try_start_2
    sget-object v4, Lcom/android/email/service/ImapService;->Vk:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/email/service/y;

    move-object v5, v4

    goto :goto_2

    .line 1509
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 1517
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->gY:I

    :goto_4
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/service/SearchParams;->gY:I

    add-int/2addr v10, v8

    if-ge v4, v10, :cond_8

    .line 1519
    aget-object v10, v5, v4

    invoke-static {v10}, Lcom/android/email/service/y;->b(Lcom/android/email/service/y;)Lcom/android/emailcommon/mail/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1523
    :cond_8
    new-instance v16, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1524
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1525
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1527
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    .line 1542
    new-instance v5, Lcom/android/email/service/v;

    move-wide/from16 v8, p4

    move-object/from16 v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/email/service/v;-><init>(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;JLandroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v0, v5}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 1579
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1580
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->WL:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1581
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v0, v5}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 1586
    const/4 v5, 0x1

    new-array v8, v5, [Lcom/android/emailcommon/mail/Message;

    .line 1587
    array-length v9, v4

    const/4 v5, 0x0

    move v7, v5

    :goto_5
    if-ge v7, v9, :cond_b

    aget-object v10, v4, v7

    .line 1590
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1592
    move-object/from16 v0, v17

    invoke-static {v10, v5, v0}, Lcom/android/emailcommon/a/i;->a(Lcom/android/emailcommon/mail/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1594
    const/16 v17, 0x0

    aput-object v10, v8, v17

    .line 1595
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/mail/j;

    .line 1596
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1597
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1598
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v8, v0, v5}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1606
    :catchall_0
    move-exception v4

    move-object v5, v12

    :goto_7
    if-eqz v5, :cond_9

    .line 1607
    invoke-virtual {v5}, Lcom/android/email/mail/b;->iM()V

    .line 1610
    :cond_9
    const-string v5, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1611
    const-string v5, "uiSyncStatus"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    throw v4

    .line 1601
    :cond_a
    const/4 v5, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v10, v6, v13, v5}, Lcom/android/email/provider/H;->a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1587
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_5

    .line 1606
    :cond_b
    if-eqz v12, :cond_c

    .line 1607
    invoke-virtual {v12}, Lcom/android/email/mail/b;->iM()V

    .line 1610
    :cond_c
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1611
    const-string v4, "uiSyncStatus"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    move v4, v11

    .line 1615
    goto/16 :goto_0

    .line 1606
    :catchall_1
    move-exception v4

    goto :goto_7
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZ)I
    .locals 14

    .prologue
    .line 167
    const-class v9, Lcom/android/email/service/ImapService;

    monitor-enter v9

    :try_start_0
    invoke-static {p1}, Lcom/android/emailcommon/f;->l(Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 168
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v10

    .line 170
    const/4 v3, 0x0

    .line 172
    :try_start_1
    invoke-static {p1, p0}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v8

    .line 173
    :try_start_2
    invoke-static {p1}, Lcom/android/emailcommon/f;->l(Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/g;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/g;->XO:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v7

    const-wide/16 v4, -0x1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    const-class v2, Lcom/android/emailcommon/provider/g;

    invoke-static {p0, v7, v2}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/g;

    if-eqz v2, :cond_2

    iget-wide v4, v2, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {p0, v2}, Lcom/android/email/service/ImapService;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    if-eqz v11, :cond_0

    iget v3, v11, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v12, 0x6

    if-ne v3, v12, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    iget v3, v11, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v12, 0x6

    if-ne v3, v12, :cond_1

    iget-object v3, v11, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v11}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->iX()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v11

    sget-object v12, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v11, v12, :cond_4

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->iY()V

    :cond_1
    :goto_2
    sget-object v3, Lcom/android/emailcommon/provider/g;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, v2, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v2, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    move-wide v2, v4

    move-wide v4, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-object v11, v2, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/android/emailcommon/mail/Folder;->A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v11

    if-nez v11, :cond_7

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->iY()V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to process pending delete for id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_3
    move/from16 v0, p4

    invoke-static {p0, p1, v8, v6, v0}, Lcom/android/email/service/ImapService;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;[Ljava/lang/String;Z)V

    invoke-static {p0, p1, v8, v6}, Lcom/android/email/service/ImapService;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;[Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 174
    invoke-static/range {v2 .. v7}, Lcom/android/email/service/ImapService;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;Lcom/android/emailcommon/provider/Mailbox;ZZ)V

    .line 176
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-interface {v10, v2, v3}, Lcom/android/email/m;->f(J)V
    :try_end_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 187
    if-eqz v8, :cond_6

    .line 188
    :try_start_6
    invoke-virtual {v8}, Lcom/android/email/mail/b;->iM()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 193
    :cond_6
    const/4 v2, 0x0

    monitor-exit v9

    return v2

    .line 173
    :cond_7
    :try_start_7
    sget-object v12, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->jc()[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->iY()V
    :try_end_7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_8
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 177
    :catch_1
    move-exception v2

    move-object v3, v8

    .line 178
    :goto_4
    :try_start_9
    sget-boolean v4, Lcom/android/emailcommon/b;->LOGD:Z

    if-eqz v4, :cond_8

    .line 179
    sget-object v4, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v5, "synchronizeMailboxSynchronous"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    :cond_8
    instance-of v4, v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v4, :cond_9

    .line 183
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v6, 0x1

    invoke-interface {v10, v4, v5, v6}, Lcom/android/email/m;->a(JZ)V

    .line 185
    :cond_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 187
    :catchall_1
    move-exception v2

    move-object v8, v3

    :goto_5
    if-eqz v8, :cond_a

    .line 188
    :try_start_a
    invoke-virtual {v8}, Lcom/android/email/mail/b;->iM()V

    :cond_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 167
    :catchall_2
    move-exception v2

    monitor-exit v9

    throw v2

    .line 173
    :cond_b
    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    .line 187
    :catchall_3
    move-exception v2

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object v8, v3

    goto :goto_5

    .line 177
    :catch_2
    move-exception v2

    goto :goto_4
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;Lcom/android/emailcommon/provider/Mailbox;ZZ)V
    .locals 30

    .prologue
    .line 367
    const-class v19, Lcom/android/email/service/ImapService;

    monitor-enter v19

    :try_start_0
    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "synchronizeMailboxGeneric "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 375
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 739
    :cond_0
    :goto_0
    monitor-exit v19

    return-void

    .line 387
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/android/emailcommon/provider/Mailbox;->ZB:J

    sub-long/2addr v8, v10

    .line 389
    if-nez p5, :cond_2

    if-nez p4, :cond_2

    const-wide/32 v10, 0xdbba00

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    :cond_2
    const/4 v7, 0x1

    move/from16 v18, v7

    .line 392
    :goto_1
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/emailcommon/provider/Account;->XA:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    .line 395
    const-wide/16 v10, 0x0

    .line 435
    :goto_2
    if-nez p2, :cond_8

    .line 436
    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v7, "account is apparently deleted"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v6

    monitor-exit v19

    throw v6

    .line 389
    :cond_3
    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_1

    .line 396
    :cond_4
    if-eqz v18, :cond_7

    .line 399
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    sub-long v14, v8, v10

    .line 400
    const/4 v13, 0x0

    .line 403
    :try_start_3
    sget-object v7, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/service/x;->kH()[Ljava/lang/String;

    move-result-object v8

    const-string v9, "accountKey=? AND mailboxKey=? AND timeStamp!=0"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v11

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 410
    if-eqz v7, :cond_2f

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 411
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 413
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2f

    .line 414
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 415
    sget-object v13, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "oldest local message "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v13, v8, v9}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 420
    :goto_3
    if-eqz v7, :cond_5

    .line 421
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_5
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "full sync: original window: now - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 420
    :catchall_1
    move-exception v6

    move-object v7, v13

    :goto_4
    if-eqz v7, :cond_6

    .line 421
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v6

    .line 429
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long v10, v8, v10

    .line 430
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "quick sync: original window: now - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 439
    :cond_8
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v20

    .line 446
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_9

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_a

    .line 447
    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    .line 448
    sget-object v7, Lcom/android/emailcommon/mail/Folder$FolderType;->Xe:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/mail/Folder;->iZ()Z

    move-result v7

    if-nez v7, :cond_a

    .line 449
    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v7, "could not create remote folder type %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 455
    :cond_a
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 463
    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/mail/Folder;->ja()I

    move-result v7

    .line 466
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/emailcommon/provider/Mailbox;->g(Landroid/content/Context;I)V

    .line 470
    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/emailcommon/mail/Folder;->a(JJ)[Lcom/android/emailcommon/mail/Message;

    move-result-object v8

    .line 471
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "received "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v8

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " messages"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v7, v9, v13}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 477
    if-eqz p4, :cond_d

    .line 478
    array-length v7, v8

    add-int/lit8 v7, v7, 0xa

    .line 485
    :cond_b
    :goto_5
    sget-object v9, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "need "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " total"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v14}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 487
    array-length v9, v8

    sub-int v9, v7, v9

    .line 488
    if-lez v9, :cond_2e

    .line 489
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "trying to get "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " more"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v7, v13, v14}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 490
    const-wide/16 v14, 0x1

    sub-long v16, v10, v14

    .line 491
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    .line 492
    const-wide/32 v14, 0x5265c00

    move-object v13, v7

    .line 493
    :goto_6
    array-length v7, v13

    if-ge v7, v9, :cond_e

    const-wide/16 v22, 0x0

    cmp-long v7, v10, v22

    if-lez v7, :cond_e

    .line 494
    sub-long/2addr v10, v14

    .line 495
    const-wide/16 v22, 0x0

    cmp-long v7, v10, v22

    if-gez v7, :cond_c

    .line 496
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v10, "window size too large, this is the last attempt"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 497
    const-wide/16 v10, 0x0

    .line 499
    :cond_c
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v21, "requesting additional messages from range "

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v21, " - "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v7, v13, v0}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 501
    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/android/emailcommon/mail/Folder;->a(JJ)[Lcom/android/emailcommon/mail/Message;

    move-result-object v7

    .line 507
    const-wide/16 v22, 0x2

    mul-long v14, v14, v22

    move-object v13, v7

    goto :goto_6

    .line 480
    :cond_d
    array-length v7, v8

    .line 481
    if-eqz v18, :cond_b

    const/16 v9, 0xa

    if-ge v7, v9, :cond_b

    .line 482
    const/16 v7, 0xa

    goto/16 :goto_5

    .line 510
    :cond_e
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "additionalMessages "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v7, v14, v15}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 511
    array-length v7, v13

    if-ge v7, v9, :cond_f

    .line 515
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "expected to find "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " more messages, only got "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v14, v13

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v7, v9, v14}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 518
    :cond_f
    array-length v7, v13

    .line 519
    array-length v9, v13

    const/16 v14, 0x14

    if-le v9, v14, :cond_2d

    .line 522
    const/16 v7, 0x14

    move v9, v7

    .line 526
    :goto_7
    array-length v7, v8

    add-int/2addr v7, v9

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    .line 527
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v8, v14, v7, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    array-length v14, v13

    sub-int/2addr v14, v9

    array-length v8, v8

    invoke-static {v13, v14, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v15, v7

    move-wide/from16 v16, v10

    .line 548
    :goto_8
    const/4 v13, 0x0

    .line 549
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 556
    :try_start_6
    sget-object v7, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/service/w;->kG()[Ljava/lang/String;

    move-result-object v8

    const-string v9, "accountKey=? AND mailboxKey=? AND timeStamp>=?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v11

    const/4 v11, 0x2

    const-string v14, "0"

    aput-object v14, v10, v11

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v7

    .line 568
    :cond_10
    :goto_9
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 569
    new-instance v8, Lcom/android/email/service/w;

    invoke-direct {v8, v7}, Lcom/android/email/service/w;-><init>(Landroid/database/Cursor;)V

    .line 574
    iget-object v9, v8, Lcom/android/email/service/w;->Vv:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 575
    iget-object v9, v8, Lcom/android/email/service/w;->Vv:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    .line 579
    :catchall_2
    move-exception v6

    :goto_a
    if-eqz v7, :cond_11

    .line 580
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v6

    .line 579
    :cond_12
    if-eqz v7, :cond_13

    .line 580
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_13
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 591
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 594
    array-length v7, v15

    add-int/lit8 v7, v7, -0x1

    move v8, v7

    :goto_b
    if-ltz v8, :cond_16

    .line 595
    aget-object v9, v15, v8

    .line 596
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "remote message "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 597
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/service/w;

    .line 607
    if-eqz v7, :cond_14

    iget v10, v7, Lcom/android/email/service/w;->Vu:I

    if-eqz v10, :cond_14

    iget v7, v7, Lcom/android/email/service/w;->Vu:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_15

    .line 610
    :cond_14
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_15
    add-int/lit8 v7, v8, -0x1

    move v8, v7

    goto :goto_b

    .line 619
    :cond_16
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_17

    .line 620
    new-instance v14, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v14}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v14, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v14, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    move-object v13, v0

    new-instance v7, Lcom/android/email/service/r;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/email/service/r;-><init>(Ljava/util/HashMap;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14, v7}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 629
    :cond_17
    new-instance v9, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v9}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 630
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v9, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 631
    array-length v7, v15

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_19

    .line 632
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 633
    const/4 v7, 0x0

    move v8, v7

    :goto_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-ge v8, v7, :cond_1a

    .line 634
    add-int/lit16 v7, v8, 0x1f4

    .line 635
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v7, v11, :cond_18

    .line 636
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 638
    :cond_18
    invoke-interface {v10, v8, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 639
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/emailcommon/mail/Message;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/emailcommon/mail/Message;

    .line 641
    const/4 v11, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9, v11}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 633
    add-int/lit16 v7, v8, 0x1f4

    move v8, v7

    goto :goto_c

    .line 644
    :cond_19
    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v9, v7}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 646
    :cond_1a
    const/4 v14, 0x0

    .line 647
    const/4 v13, 0x0

    .line 648
    const/4 v8, 0x0

    .line 649
    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/mail/Folder;->jb()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v12

    array-length v0, v12

    move/from16 v24, v0

    const/4 v7, 0x0

    move v11, v7

    :goto_d
    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

    aget-object v25, v12, v11

    .line 650
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    if-ne v0, v7, :cond_2c

    .line 651
    const/4 v7, 0x1

    move v10, v7

    .line 653
    :goto_e
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    if-ne v0, v7, :cond_2b

    .line 654
    const/4 v7, 0x1

    move v9, v7

    .line 656
    :goto_f
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    if-ne v0, v7, :cond_2a

    .line 657
    const/4 v7, 0x1

    .line 649
    :goto_10
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move v13, v9

    move v14, v10

    move v8, v7

    goto :goto_d

    .line 662
    :cond_1b
    if-nez v14, :cond_1c

    if-nez v13, :cond_1c

    if-eqz v8, :cond_24

    .line 663
    :cond_1c
    array-length v0, v15

    move/from16 v24, v0

    const/4 v7, 0x0

    move v12, v7

    :goto_11
    move/from16 v0, v24

    if-ge v12, v0, :cond_24

    aget-object v25, v15, v12

    .line 664
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/service/w;

    .line 665
    if-eqz v7, :cond_1e

    .line 666
    iget-boolean v9, v7, Lcom/android/email/service/w;->Vs:Z

    .line 669
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v26

    .line 670
    if-eqz v14, :cond_1f

    move/from16 v0, v26

    if-eq v0, v9, :cond_1f

    const/4 v9, 0x1

    move v11, v9

    .line 671
    :goto_12
    iget-boolean v9, v7, Lcom/android/email/service/w;->Vt:Z

    .line 672
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v27

    .line 673
    if-eqz v13, :cond_20

    move/from16 v0, v27

    if-eq v9, v0, :cond_20

    const/4 v9, 0x1

    move v10, v9

    .line 674
    :goto_13
    iget v0, v7, Lcom/android/email/service/w;->dM:I

    move/from16 v28, v0

    .line 675
    const/high16 v9, 0x40000

    and-int v9, v9, v28

    if-eqz v9, :cond_21

    const/4 v9, 0x1

    .line 676
    :goto_14
    sget-object v29, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v25

    .line 677
    if-eqz v8, :cond_22

    move/from16 v0, v25

    if-eq v9, v0, :cond_22

    const/4 v9, 0x1

    .line 678
    :goto_15
    if-nez v11, :cond_1d

    if-nez v10, :cond_1d

    if-eqz v9, :cond_1e

    .line 679
    :cond_1d
    sget-object v9, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v7, Lcom/android/email/service/w;->Ln:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 681
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 682
    const-string v7, "flagRead"

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 683
    const-string v7, "flagFavorite"

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 684
    if-eqz v25, :cond_23

    .line 685
    const/high16 v7, 0x40000

    or-int v7, v7, v28

    .line 689
    :goto_16
    const-string v11, "flags"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v7, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 663
    :cond_1e
    add-int/lit8 v7, v12, 0x1

    move v12, v7

    goto/16 :goto_11

    .line 670
    :cond_1f
    const/4 v9, 0x0

    move v11, v9

    goto :goto_12

    .line 673
    :cond_20
    const/4 v9, 0x0

    move v10, v9

    goto :goto_13

    .line 675
    :cond_21
    const/4 v9, 0x0

    goto :goto_14

    .line 677
    :cond_22
    const/4 v9, 0x0

    goto :goto_15

    .line 687
    :cond_23
    const v7, -0x40001

    and-int v7, v7, v28

    goto :goto_16

    .line 697
    :cond_24
    array-length v8, v15

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v8, :cond_26

    aget-object v9, v15, v7

    .line 698
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 699
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 697
    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 708
    :cond_26
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_27
    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/service/w;

    .line 711
    iget-wide v10, v7, Lcom/android/email/service/w;->Vw:J

    cmp-long v9, v10, v16

    if-ltz v9, :cond_27

    iget-object v9, v7, Lcom/android/email/service/w;->Vv:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 714
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    iget-wide v12, v7, Lcom/android/email/service/w;->Ln:J

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v12, v13}, Lcom/android/emailcommon/b/a;->c(Landroid/content/Context;JJ)V

    .line 717
    sget-object v9, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v7, Lcom/android/email/service/w;->Ln:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 719
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 722
    sget-object v9, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    iget-wide v10, v7, Lcom/android/email/service/w;->Ln:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 724
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 725
    sget-object v9, Lcom/android/emailcommon/provider/g;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v7, Lcom/android/email/service/w;->Ln:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 727
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_18

    .line 731
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/service/ImapService;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 733
    if-eqz v18, :cond_29

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->w(Landroid/content/Context;J)V

    .line 738
    :cond_29
    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/mail/Folder;->iY()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 579
    :catchall_3
    move-exception v6

    move-object v7, v13

    goto/16 :goto_a

    .line 420
    :catchall_4
    move-exception v6

    goto/16 :goto_4

    :cond_2a
    move v7, v8

    goto/16 :goto_10

    :cond_2b
    move v9, v13

    goto/16 :goto_f

    :cond_2c
    move v10, v14

    goto/16 :goto_e

    :cond_2d
    move v9, v7

    goto/16 :goto_7

    :cond_2e
    move-object v15, v8

    move-wide/from16 v16, v10

    goto/16 :goto_8

    :cond_2f
    move-wide v10, v14

    goto/16 :goto_3
.end method

.method private static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;[Ljava/lang/String;)V
    .locals 20

    .prologue
    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 949
    sget-object v3, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/g;->XO:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 953
    const-wide/16 v6, -0x1

    .line 956
    const/4 v14, 0x0

    move-wide v4, v6

    move-object/from16 v8, p2

    .line 958
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 959
    const/4 v13, 0x0

    .line 960
    const/4 v12, 0x0

    .line 961
    const/4 v11, 0x0

    .line 962
    const/4 v10, 0x0

    .line 963
    const/4 v9, 0x0

    .line 965
    const-class v3, Lcom/android/emailcommon/provider/g;

    move-object/from16 v0, p0

    invoke-static {v0, v15, v3}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/g;

    .line 967
    iget-wide v6, v3, Lcom/android/emailcommon/provider/g;->Ln:J
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :try_start_1
    iget-wide v4, v3, Lcom/android/emailcommon/provider/g;->Ln:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v16

    .line 970
    if-eqz v16, :cond_0

    .line 971
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/emailcommon/provider/g;->YR:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 972
    if-eqz v12, :cond_1a

    .line 973
    iget-wide v4, v3, Lcom/android/emailcommon/provider/g;->YR:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/g;->YR:J

    move-wide/from16 v18, v0

    cmp-long v4, v4, v18

    if-eqz v4, :cond_19

    .line 976
    iget v4, v12, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 977
    const/4 v13, 0x1

    move v5, v10

    move v11, v13

    .line 982
    :goto_1
    iget-boolean v4, v3, Lcom/android/emailcommon/provider/g;->Vs:Z

    move-object/from16 v0, v16

    iget-boolean v9, v0, Lcom/android/emailcommon/provider/g;->Vs:Z

    if-eq v4, v9, :cond_4

    const/4 v10, 0x1

    .line 983
    :goto_2
    iget-boolean v4, v3, Lcom/android/emailcommon/provider/g;->Vt:Z

    move-object/from16 v0, v16

    iget-boolean v9, v0, Lcom/android/emailcommon/provider/g;->Vt:Z

    if-eq v4, v9, :cond_5

    const/4 v9, 0x1

    .line 984
    :goto_3
    iget v4, v3, Lcom/android/emailcommon/provider/g;->dM:I

    const/high16 v13, 0x40000

    and-int/2addr v4, v13

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/emailcommon/provider/g;->dM:I

    const/high16 v14, 0x40000

    and-int/2addr v13, v14

    if-eq v4, v13, :cond_6

    const/4 v4, 0x1

    :goto_4
    move v13, v11

    move-object v14, v12

    move v11, v9

    move v12, v10

    move v9, v4

    move v10, v5

    .line 989
    :cond_0
    if-nez v8, :cond_18

    if-nez v13, :cond_1

    if-nez v12, :cond_1

    if-nez v11, :cond_1

    if-nez v10, :cond_1

    if-eqz v9, :cond_18

    .line 992
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;

    move-result-object v4

    move-object v5, v4

    .line 996
    :goto_5
    if-eqz v13, :cond_e

    .line 998
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    const-string v8, "Local-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1006
    :cond_2
    :goto_6
    sget-object v4, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    iget-wide v8, v3, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1008
    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v8, v5

    move-wide v4, v6

    .line 1009
    goto/16 :goto_0

    .line 979
    :cond_3
    const/4 v10, 0x1

    move v5, v10

    move v11, v13

    goto :goto_1

    .line 982
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 983
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 984
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 998
    :cond_7
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/email/service/ImapService;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v8, v4, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v4, v8}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->iX()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v8

    sget-object v9, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v8, v9, :cond_9

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->iY()V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 1011
    :catch_0
    move-exception v2

    move-wide v4, v6

    .line 1014
    :goto_7
    :try_start_2
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 1015
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to process pending update for id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1019
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1020
    :goto_8
    return-void

    .line 998
    :cond_9
    :try_start_3
    iget-object v8, v3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/emailcommon/mail/Folder;->A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->iY()V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 1019
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 998
    :cond_a
    :try_start_4
    iget-object v9, v14, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v10

    if-nez v10, :cond_b

    sget-object v10, Lcom/android/emailcommon/mail/Folder$FolderType;->Xe:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Folder;->iZ()Z

    :cond_b
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    sget-object v10, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Folder;->iX()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v10

    sget-object v11, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v10, v11, :cond_c

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->iY()V

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Folder;->iY()V

    goto/16 :goto_6

    :cond_c
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/emailcommon/mail/Message;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    new-instance v11, Lcom/android/email/service/t;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v1}, Lcom/android/email/service/t;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)V

    invoke-virtual {v4, v10, v9, v11}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/g;)V

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Folder;->iY()V

    :cond_d
    sget-object v9, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->jc()[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->iY()V

    goto/16 :goto_6

    .line 1000
    :cond_e
    if-nez v12, :cond_f

    if-nez v11, :cond_f

    if-nez v10, :cond_f

    if-eqz v9, :cond_2

    .line 1001
    :cond_f
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/email/service/ImapService;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    if-eqz v8, :cond_2

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    const-string v13, "Local-"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v4, :cond_2

    iget v8, v4, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v13, 0x3

    if-eq v8, v13, :cond_2

    iget v8, v4, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v13, 0x4

    if-eq v8, v13, :cond_2

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Folder;->iX()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v4

    sget-object v13, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-ne v4, v13, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/Folder;->A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v13

    if-eqz v13, :cond_2

    sget-boolean v4, Lcom/android/email/b;->DEBUG:Z

    if-eqz v4, :cond_10

    sget-object v17, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v18, "Update for msg id="

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " read="

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/g;->Vs:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " flagged="

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/g;->Vt:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " answered="

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/emailcommon/provider/g;->dM:I

    const/high16 v19, 0x40000

    and-int v4, v4, v19

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " new mailbox="

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/g;->YR:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_10
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    aput-object v13, v17, v4

    if-eqz v12, :cond_11

    sget-object v4, Lcom/android/email/service/ImapService;->Ve:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v16

    iget-boolean v12, v0, Lcom/android/emailcommon/provider/g;->Vs:Z

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4, v12}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_11
    if-eqz v11, :cond_12

    sget-object v4, Lcom/android/email/service/ImapService;->Vf:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v16

    iget-boolean v11, v0, Lcom/android/emailcommon/provider/g;->Vt:Z

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4, v11}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_12
    if-eqz v9, :cond_13

    sget-object v9, Lcom/android/email/service/ImapService;->Vg:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/emailcommon/provider/g;->dM:I

    const/high16 v11, 0x40000

    and-int/2addr v4, v11

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v9, v4}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_13
    if-eqz v10, :cond_14

    iget-object v4, v14, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/emailcommon/provider/g;->YQ:Ljava/lang/String;

    invoke-virtual {v13, v9}, Lcom/android/emailcommon/mail/Message;->ab(Ljava/lang/String;)V

    new-instance v9, Lcom/android/email/service/s;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lcom/android/email/service/s;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4, v9}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/g;)V

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    const/4 v9, 0x1

    invoke-virtual {v13, v4, v9}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Folder;->jc()[Lcom/android/emailcommon/mail/Message;

    :cond_14
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Folder;->iY()V
    :try_end_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_16
    const/4 v4, 0x0

    goto :goto_a

    .line 1019
    :cond_17
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 1011
    :catch_1
    move-exception v2

    goto/16 :goto_7

    :cond_18
    move-object v5, v8

    goto/16 :goto_5

    :cond_19
    move v5, v10

    move v11, v13

    goto/16 :goto_1

    :cond_1a
    move-object v14, v12

    move-wide v4, v6

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;[Ljava/lang/String;Z)V
    .locals 16

    .prologue
    .line 877
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 881
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->XT:[Ljava/lang/String;

    const-string v5, "accountKey=? and type=5"

    const/4 v7, 0x0

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 885
    const-wide/16 v4, -0x1

    move-wide v8, v4

    move-object/from16 v11, p2

    .line 887
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 888
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 889
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 891
    const/4 v10, 0x0

    .line 894
    sget-object v3, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/g;->XT:[Ljava/lang/String;

    const-string v5, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    move-object v6, v10

    move-wide v4, v8

    move-object v3, v11

    .line 902
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 904
    if-nez v3, :cond_1

    .line 905
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;

    move-result-object v3

    .line 908
    :cond_1
    if-nez v6, :cond_2

    .line 909
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 910
    if-eqz v6, :cond_0

    :cond_2
    move-object v7, v6

    .line 911
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 917
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    sget-object v8, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Upsync failed for null message, id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    move-object v6, v7

    .line 918
    goto :goto_1

    .line 917
    :cond_4
    iget v8, v7, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Upsync skipped for mailbox=drafts, id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 920
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_5

    .line 921
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 923
    :cond_5
    if-eqz v3, :cond_6

    .line 924
    invoke-virtual {v3}, Lcom/android/email/mail/b;->iM()V

    :cond_6
    throw v2
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 928
    :catch_0
    move-exception v2

    .line 931
    :goto_3
    :try_start_3
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 932
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to process pending upsync for id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 936
    :cond_7
    if-eqz v12, :cond_8

    .line 937
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 940
    :cond_8
    :goto_4
    return-void

    .line 917
    :cond_9
    :try_start_4
    iget v8, v7, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Upsync skipped for mailbox=outbox, id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    :cond_a
    iget v8, v7, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_b

    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Upsync skipped for mailbox=trash, id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    :cond_b
    iget-wide v8, v6, Lcom/android/emailcommon/provider/g;->YR:J

    iget-wide v10, v7, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Upsync skipped; mailbox changed, id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    :cond_c
    sget-object v8, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Upsync triggered for message id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v3, v7, v6, v1}, Lcom/android/email/service/ImapService;->a(Landroid/content/Context;Lcom/android/email/mail/b;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/g;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    goto/16 :goto_2

    .line 920
    :cond_d
    if-eqz v13, :cond_e

    .line 921
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 923
    :cond_e
    if-eqz v3, :cond_f

    .line 924
    invoke-virtual {v3}, Lcom/android/email/mail/b;->iM()V
    :try_end_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v8, v4

    move-object v11, v3

    goto/16 :goto_0

    :cond_f
    move-wide v8, v4

    move-object v11, v3

    .line 927
    goto/16 :goto_0

    .line 936
    :cond_10
    if-eqz v12, :cond_8

    .line 937
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 936
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_11

    .line 937
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v2

    .line 928
    :catch_1
    move-exception v2

    move-wide v4, v8

    goto/16 :goto_3
.end method

.method private static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 258
    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 259
    sget-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WL:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {p2, v0, v2, v7}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 261
    new-array v3, v6, [Lcom/android/emailcommon/mail/Message;

    .line 262
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Message;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-static {v0, v1, v5}, Lcom/android/emailcommon/a/i;->a(Lcom/android/emailcommon/mail/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 269
    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/j;

    .line 271
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 272
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p2, v3, v2, v7}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    goto :goto_1

    .line 276
    :cond_0
    invoke-static {p0, v0, p1, p4, v6}, Lcom/android/email/provider/H;->a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    goto :goto_0

    .line 279
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/email/mail/b;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/g;Z)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1326
    .line 1331
    iget-object v2, p2, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 1332
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1333
    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderType;->Xe:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->iZ()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 1440
    :cond_0
    :goto_0
    return v1

    .line 1338
    :cond_1
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1339
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->iX()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 1340
    goto :goto_0

    .line 1345
    :cond_2
    iget-object v2, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1346
    iget-object v2, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1350
    :goto_1
    if-nez v2, :cond_5

    .line 1355
    invoke-static {p0, p3}, Lcom/android/email/l;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1360
    invoke-virtual {v5, p0, v2, p4}, Lcom/android/emailcommon/mail/Folder;->a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Z)V

    .line 1363
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    move v2, v0

    move v3, v1

    move v0, v1

    .line 1408
    :goto_2
    if-eqz v3, :cond_3

    iget-object v3, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1410
    :try_start_0
    iget-object v3, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v3

    .line 1411
    if-eqz v3, :cond_3

    .line 1412
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1413
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1414
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 1415
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->lo()Ljava/util/Date;

    move-result-object v5

    .line 1416
    if-eqz v5, :cond_3

    .line 1417
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->lo()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p3, Lcom/android/emailcommon/provider/g;->YO:J
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1427
    :cond_3
    :goto_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    .line 1428
    :cond_4
    sget-object v3, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p3, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1429
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1430
    if-eqz v2, :cond_7

    .line 1431
    invoke-virtual {v5, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1372
    :cond_5
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1373
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1374
    new-array v6, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v2, v6, v0

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 1375
    new-instance v6, Ljava/util/Date;

    iget-wide v8, p3, Lcom/android/emailcommon/provider/g;->YO:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1376
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->lo()Ljava/util/Date;

    move-result-object v7

    .line 1377
    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-lez v6, :cond_6

    move v2, v1

    move v3, v0

    .line 1381
    goto :goto_2

    .line 1389
    :cond_6
    invoke-static {p0, p3}, Lcom/android/email/l;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    .line 1392
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1393
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1394
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->WN:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1395
    invoke-virtual {v5, p0, v6, p4}, Lcom/android/emailcommon/mail/Folder;->a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Z)V

    .line 1398
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    .line 1403
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v2, v3, v1}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    move v2, v0

    move v3, v1

    move v0, v1

    goto/16 :goto_2

    .line 1432
    :cond_7
    if-eqz v0, :cond_0

    .line 1433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1434
    const-string v2, "syncServerId"

    iget-object v6, p3, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const-string v2, "syncServerTimeStamp"

    iget-wide v6, p3, Lcom/android/emailcommon/provider/g;->YO:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1436
    invoke-virtual {v5, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_8
    move-object v2, v4

    goto/16 :goto_1
.end method

.method static synthetic b(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 1

    .prologue
    .line 74
    invoke-static/range {p0 .. p5}, Lcom/android/email/service/ImapService;->a(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 783
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->Za:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 784
    iget-wide v6, p1, Lcom/android/emailcommon/provider/g;->Lq:J

    .line 785
    iget-object v8, p1, Lcom/android/emailcommon/provider/g;->Za:Ljava/lang/String;

    .line 786
    sget-wide v0, Lcom/android/email/service/ImapService;->Vh:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/email/service/ImapService;->Vi:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    sget-object v5, Lcom/android/email/service/ImapService;->Vj:Lcom/android/emailcommon/provider/Mailbox;

    .line 809
    :goto_0
    return-object v5

    .line 790
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->XO:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    const/4 v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 795
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    new-instance v5, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 797
    invoke-virtual {v5, v1}, Lcom/android/emailcommon/provider/Mailbox;->b(Landroid/database/Cursor;)V

    .line 798
    sput-wide v6, Lcom/android/email/service/ImapService;->Vh:J

    .line 799
    sput-object v8, Lcom/android/email/service/ImapService;->Vi:Ljava/lang/String;

    .line 800
    sput-object v5, Lcom/android/email/service/ImapService;->Vj:Lcom/android/emailcommon/provider/Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 803
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 809
    :cond_2
    iget-wide v0, p1, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    goto :goto_0
.end method

.method public static kF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/email/service/ImapService;->Vl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/service/ImapService;->Vl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/email/service/ImapService;->Vm:Lcom/android/email/service/l;

    invoke-virtual {v0, p0}, Lcom/android/email/service/l;->g(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/android/email/service/ImapService;->Vm:Lcom/android/email/service/l;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 127
    const v0, 0x7f090210

    invoke-virtual {p0, v0}, Lcom/android/email/service/ImapService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/ImapService;->Vl:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method
