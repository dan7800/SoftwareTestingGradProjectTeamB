.class public final Lcom/android/ex/chips/F;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# static fields
.field private static final adV:Ljava/util/Map;
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


# instance fields
.field private acb:Lcom/android/ex/chips/DropdownChipLayouter;

.field private final adQ:J

.field private adR:I

.field private adS:Lcom/android/ex/chips/G;

.field private final adT:Ljava/lang/Long;

.field private final adU:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ex/chips/F;->adV:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/Long;Ljava/lang/String;JILcom/android/ex/chips/G;Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 12

    .prologue
    .line 371
    if-nez p8, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/ex/chips/s;->adj:Lcom/android/ex/chips/v;

    invoke-virtual {v2}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    sget-object v2, Lcom/android/ex/chips/s;->adj:Lcom/android/ex/chips/v;

    invoke-virtual {v2}, Lcom/android/ex/chips/v;->mB()Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    move-object v8, v2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/ex/chips/s;->adj:Lcom/android/ex/chips/v;

    invoke-virtual {v4}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p5

    invoke-static {v2, v8, v0}, Lcom/android/ex/chips/F;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v3, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 57
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/ex/chips/F;->adR:I

    .line 373
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/android/ex/chips/F;->adQ:J

    .line 374
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/ex/chips/F;->adT:Ljava/lang/Long;

    .line 375
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/ex/chips/F;->adS:Lcom/android/ex/chips/G;

    .line 377
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/ex/chips/F;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 378
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/ex/chips/F;->adU:Landroid/graphics/drawable/StateListDrawable;

    .line 379
    return-void

    .line 371
    :cond_1
    move-object/from16 v0, p5

    invoke-static {p2, p3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "entities"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object v8, v2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/ex/chips/s;->adi:Lcom/android/ex/chips/v;

    invoke-virtual {v2}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_3

    sget-object v2, Lcom/android/ex/chips/s;->adi:Lcom/android/ex/chips/v;

    invoke-virtual {v2}, Lcom/android/ex/chips/v;->mB()Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    move-object v8, v2

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/ex/chips/s;->adi:Lcom/android/ex/chips/v;

    invoke-virtual {v4}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p5

    invoke-static {p2, p3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "entities"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object v8, v2

    goto :goto_2
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 458
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v5, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 460
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 462
    const/4 v2, 0x0

    .line 463
    const/4 v1, 0x0

    .line 464
    const/4 v0, 0x0

    .line 467
    const/4 v3, -0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 468
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 469
    const/16 v3, 0x9

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 475
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    .line 481
    :goto_0
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 482
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 483
    if-eqz p1, :cond_2

    .line 484
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 491
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 495
    const/16 v0, 0xa

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v0, 0x2

    const/4 v4, 0x2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v0, 0x3

    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v0, 0x4

    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    const/4 v4, 0x5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v0, 0x6

    const/4 v4, 0x6

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v0, 0x7

    const/4 v4, 0x7

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v0

    const/16 v0, 0x8

    const/16 v4, 0x8

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    const/16 v0, 0x9

    const/16 v4, 0x9

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    .line 508
    const/4 v0, 0x0

    aget-object v0, v7, v0

    if-nez v0, :cond_3

    .line 509
    const/4 v0, 0x0

    aput-object v3, v7, v0

    .line 511
    :cond_3
    const/4 v0, 0x6

    aget-object v0, v7, v0

    if-nez v0, :cond_4

    .line 512
    const/4 v0, 0x6

    aput-object v2, v7, v0

    .line 514
    :cond_4
    const/4 v0, 0x7

    aget-object v0, v7, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 515
    const/4 v0, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v0

    .line 517
    :cond_5
    const/16 v0, 0x8

    aget-object v0, v7, v0

    if-nez v0, :cond_6

    .line 518
    const/16 v0, 0x8

    aput-object p2, v7, v0

    .line 522
    :cond_6
    const/4 v0, 0x6

    aget-object v0, v7, v0

    check-cast v0, Ljava/lang/String;

    .line 523
    if-eqz v0, :cond_7

    .line 524
    sget-object v4, Lcom/android/ex/chips/F;->adV:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 525
    const/4 v4, 0x6

    sget-object v8, Lcom/android/ex/chips/F;->adV:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v4

    .line 544
    :cond_7
    :goto_2
    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 526
    :cond_8
    const/16 v4, 0x3f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-eq v4, v8, :cond_7

    .line 527
    const-string v4, "\\?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 528
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    const/4 v4, 0x0

    :goto_3
    array-length v10, v8

    if-ge v4, v10, :cond_b

    .line 530
    const/4 v10, 0x1

    if-ne v4, v10, :cond_a

    .line 531
    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_9
    :goto_4
    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 532
    :cond_a
    const/4 v10, 0x1

    if-le v4, v10, :cond_9

    .line 533
    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 538
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    sget-object v8, Lcom/android/ex/chips/F;->adV:Ljava/util/Map;

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const/4 v0, 0x6

    aput-object v4, v7, v0

    goto :goto_2

    .line 547
    :cond_c
    return-object v5

    :cond_d
    move-object v3, v2

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method static a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;
    .locals 2

    .prologue
    .line 295
    if-nez p1, :cond_1

    move-object p1, p0

    .line 337
    :cond_0
    :goto_0
    return-object p1

    .line 299
    :cond_1
    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p0

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, p0

    .line 317
    goto :goto_0

    .line 320
    :cond_4
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->nb()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->nb()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    if-nez v0, :cond_7

    move-object p1, p0

    .line 328
    goto :goto_0

    .line 331
    :cond_7
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->nb()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->nb()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 249
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 253
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v7, 0x6

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v7, 0x8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, p1

    invoke-static/range {v0 .. v11}, Lcom/android/ex/chips/ae;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v1

    .line 271
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/ae;

    invoke-static {v0, v1}, Lcom/android/ex/chips/F;->a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;

    move-result-object v0

    .line 274
    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "RecipAlternates"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string v0, "RecipAlternates"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received reverse look up information for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RESULTS:  NAME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CONTACT ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ADDRESS :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :cond_2
    return-object v12
.end method

.method public static a(Landroid/content/Context;Lcom/android/ex/chips/a;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/android/ex/chips/H;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/chips/a;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/accounts/Account;",
            "Lcom/android/ex/chips/H;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 81
    sget-object v7, Lcom/android/ex/chips/s;->adj:Lcom/android/ex/chips/v;

    const/16 v0, 0x32

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_0

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "RecipAlternates"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RecipAlternates"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Doing reverse lookup for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/ex/chips/v;->mB()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " IN ("

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v2, v0}, Lcom/android/ex/chips/F;->a(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/android/ex/chips/H;->b(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v2, v8

    move-object v3, p3

    move-object v5, v7

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/ex/chips/F;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/v;Lcom/android/ex/chips/H;)V

    invoke-interface {p4, v4}, Lcom/android/ex/chips/H;->c(Ljava/util/Set;)V

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/H;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/ae;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/H;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v5, Lcom/android/ex/chips/s;->adj:Lcom/android/ex/chips/v;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/ex/chips/F;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/v;Lcom/android/ex/chips/H;)V

    .line 153
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/v;Lcom/android/ex/chips/H;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/ae;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/v;",
            "Lcom/android/ex/chips/H;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 164
    const/4 v8, 0x0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ex/chips/f;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/ex/chips/f;->Lm:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 168
    if-nez v3, :cond_2

    .line 169
    const/4 v2, 0x0

    move-object v12, v2

    .line 175
    :goto_0
    if-eqz v3, :cond_0

    .line 176
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 181
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    invoke-static {p0, v3, v0}, Lcom/android/ex/chips/a;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v2

    move-object v3, v8

    :goto_2
    if-eqz v3, :cond_3

    .line 176
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 187
    :cond_4
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 189
    if-eqz v12, :cond_b

    .line 190
    const/4 v2, 0x0

    .line 191
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v3, v2

    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 192
    const/4 v11, 0x0

    .line 193
    const/4 v2, 0x0

    move v9, v2

    move-object v10, v3

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_c

    .line 195
    :try_start_2
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/g;

    iget-wide v2, v2, Lcom/android/ex/chips/g;->act:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/android/ex/chips/v;->mA()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "limit"

    const-string v6, "6"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    if-eqz v3, :cond_6

    const-string v5, "directory"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6
    if-eqz p3, :cond_7

    const-string v3, "name_for_primary_account"

    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "type_for_primary_account"

    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/android/ex/chips/v;->getProjection()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v10

    .line 199
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 201
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v3, 0x0

    .line 193
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v10, v3

    goto :goto_4

    .line 204
    :cond_8
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/g;

    iget-wide v2, v2, Lcom/android/ex/chips/g;->act:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v3, v10

    .line 209
    :goto_5
    if-eqz v3, :cond_5

    .line 211
    :try_start_3
    invoke-static {v3, v2}, Lcom/android/ex/chips/F;->a(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v4

    .line 214
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 220
    :catchall_1
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 199
    :catchall_2
    move-exception v2

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_9

    .line 201
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 205
    throw v2

    .line 204
    :cond_9
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/g;

    iget-wide v2, v2, Lcom/android/ex/chips/g;->act:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v3, v10

    .line 205
    goto :goto_5

    .line 218
    :cond_a
    :try_start_4
    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/android/ex/chips/H;->b(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 226
    :cond_b
    return-void

    .line 175
    :catchall_3
    move-exception v2

    goto/16 :goto_2

    :cond_c
    move-object v2, v11

    move-object v3, v10

    goto :goto_5
.end method

.method public static a(Ljava/util/Set;Lcom/android/ex/chips/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/H;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-interface {p1, p0}, Lcom/android/ex/chips/H;->c(Ljava/util/Set;)V

    .line 244
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    .line 595
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 596
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/F;->bq(I)Lcom/android/ex/chips/ae;

    move-result-object v3

    .line 598
    iget-object v0, p0, Lcom/android/ex/chips/F;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    const/4 v2, 0x0

    sget-object v5, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acZ:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    iget-object v6, p0, Lcom/android/ex/chips/F;->adU:Landroid/graphics/drawable/StateListDrawable;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/ae;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;

    .line 600
    return-void
.end method

.method public final bq(I)Lcom/android/ex/chips/ae;
    .locals 13

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/ex/chips/F;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    .line 561
    invoke-interface {v11, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 562
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/ex/chips/F;->adT:Ljava/lang/Long;

    const/4 v8, 0x5

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x8

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lcom/android/ex/chips/ae;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/ex/chips/F;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 553
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 556
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/ex/chips/F;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 579
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 580
    if-nez p2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/ex/chips/F;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    sget-object v2, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acZ:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;

    move-result-object p2

    .line 583
    :cond_0
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/ex/chips/F;->adQ:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 584
    iput p1, p0, Lcom/android/ex/chips/F;->adR:I

    .line 585
    iget-object v1, p0, Lcom/android/ex/chips/F;->adS:Lcom/android/ex/chips/G;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/ex/chips/F;->adS:Lcom/android/ex/chips/G;

    iget v2, p0, Lcom/android/ex/chips/F;->adR:I

    invoke-interface {v1, v2}, Lcom/android/ex/chips/G;->br(I)V

    .line 589
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/ex/chips/F;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 590
    return-object p2
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/ex/chips/F;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acZ:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
