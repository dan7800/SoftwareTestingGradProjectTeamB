.class public Lcom/android/emailcommon/provider/Mailbox;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/f;


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field public static final XO:[Ljava/lang/String;

.field private static final ZC:[Ljava/lang/String;

.field private static final ZD:[Ljava/lang/String;

.field private static final ZE:[Ljava/lang/String;

.field private static final ZF:Landroid/util/SparseBooleanArray;

.field public static final ZG:[I

.field public static Zo:Landroid/net/Uri;


# instance fields
.field public Lq:J

.field public Vv:Ljava/lang/String;

.field public XA:I

.field public XB:I

.field public Xy:Ljava/lang/String;

.field public Xz:Ljava/lang/String;

.field public ZA:Ljava/lang/String;

.field public ZB:J

.field public Zp:Ljava/lang/String;

.field public Zq:J

.field public Zr:I

.field public Zs:I

.field public Zt:J

.field public Zu:Z

.field public Zv:Ljava/lang/String;

.field public Zw:J

.field public Zx:I

.field public Zy:I

.field public Zz:I

.field public dM:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 205
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "parentServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "delimiter"

    aput-object v1, v0, v6

    const-string v1, "syncKey"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "syncTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lastTouchedTime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "uiSyncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "uiLastSyncResult"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "totalCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hierarchicalName"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lastFullSyncTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->XO:[Ljava/lang/String;

    .line 233
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZC:[Ljava/lang/String;

    .line 238
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZD:[Ljava/lang/String;

    .line 246
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZE:[Ljava/lang/String;

    .line 353
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 354
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZF:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 355
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZF:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 359
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZF:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 360
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZF:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 361
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZF:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 362
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZF:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 378
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZG:[I

    .line 856
    new-instance v0, Lcom/android/emailcommon/provider/l;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/l;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 378
    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    .line 414
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->XU:Landroid/net/Uri;

    .line 415
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 831
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 169
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    .line 832
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->XU:Landroid/net/Uri;

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    .line 834
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zp:Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zs:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Xz:Ljava/lang/String;

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->XA:I

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zt:J

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zv:Ljava/lang/String;

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zw:J

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zy:I

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->ZA:Ljava/lang/String;

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->ZB:J

    .line 854
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static G(J)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 111
    const-string v1, "__mailboxCount__"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->bk(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    return-object v0
.end method

.method public static b(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 7

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 472
    packed-switch p3, :pswitch_data_0

    .line 488
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mailbox type for newSystemMailbox: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :pswitch_1
    const/16 v0, 0x18

    .line 492
    :goto_0
    :pswitch_2
    new-instance v2, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 493
    iput-wide p1, v2, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    .line 494
    iput p3, v2, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    .line 495
    iput v1, v2, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    .line 496
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    .line 498
    packed-switch p3, :pswitch_data_1

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal mailbox type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :pswitch_4
    const/4 v1, -0x1

    .line 486
    goto :goto_0

    .line 498
    :pswitch_5
    sget v1, Lcom/android/emailcommon/d;->VP:I

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    .line 499
    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    .line 500
    iput v0, v2, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    .line 501
    return-object v2

    .line 498
    :pswitch_6
    sget v1, Lcom/android/emailcommon/d;->VR:I

    goto :goto_1

    :pswitch_7
    sget v1, Lcom/android/emailcommon/d;->VO:I

    goto :goto_1

    :pswitch_8
    sget v1, Lcom/android/emailcommon/d;->VU:I

    goto :goto_1

    :pswitch_9
    sget v1, Lcom/android/emailcommon/d;->VS:I

    goto :goto_1

    :pswitch_a
    sget v1, Lcom/android/emailcommon/d;->VQ:I

    goto :goto_1

    :pswitch_b
    sget v1, Lcom/android/emailcommon/d;->VT:I

    goto :goto_1

    :pswitch_c
    sget v1, Lcom/android/emailcommon/d;->VN:I

    goto :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 498
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->XO:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 519
    if-nez v1, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 522
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {p0, v1, v0}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 524
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "Multiple mailboxes named \"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 528
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Could not find mailbox at \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static bk(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "__mailboxId%d__"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bl(I)Z
    .locals 1

    .prologue
    .line 554
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->ZF:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;JI)J
    .locals 9

    .prologue
    .line 666
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 667
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->XT:[Ljava/lang/String;

    const-string v3, "type=? and accountKey=?"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1

    .prologue
    .line 541
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->b(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 542
    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 545
    :cond_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 5

    .prologue
    .line 676
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 677
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 678
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 680
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/os/Bundle;)[J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 117
    const-string v0, "__mailboxCount__"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 118
    if-lez v2, :cond_2

    .line 119
    const-string v0, "__push_only__"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "Mailboxes specified in a push only sync"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    :cond_0
    const-string v0, "__account_only__"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "Mailboxes specified in an account only sync"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    :cond_1
    new-array v0, v2, [J

    .line 126
    :goto_0
    if-ge v1, v2, :cond_3

    .line 127
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->bk(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public static lR()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailboxCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->Zo:Landroid/net/Uri;

    .line 85
    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 921
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ZE:[Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 7

    .prologue
    .line 457
    const-class v1, Lcom/android/emailcommon/provider/Mailbox;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->XO:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method public static x(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 711
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 712
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->ZD:[Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 577
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->XU:Landroid/net/Uri;

    .line 578
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    .line 579
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    .line 580
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    .line 581
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zp:Ljava/lang/String;

    .line 582
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    .line 583
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    .line 584
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    .line 585
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zs:I

    .line 586
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Xz:Ljava/lang/String;

    .line 587
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->XA:I

    .line 588
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    .line 589
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zt:J

    .line 590
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    .line 591
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    .line 592
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zv:Ljava/lang/String;

    .line 593
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zw:J

    .line 594
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    .line 595
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zy:I

    .line 596
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    .line 597
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->ZA:Ljava/lang/String;

    .line 598
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->ZB:J

    .line 599
    return-void

    :cond_0
    move v0, v1

    .line 590
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 633
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    if-eq p2, v0, :cond_0

    .line 634
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 635
    const-string v1, "totalCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 637
    iput p2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    .line 639
    :cond_0
    return-void
.end method

.method public final lB()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 603
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 604
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "serverId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v1, "parentServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v1, "parentKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    const-string v1, "type"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string v1, "delimiter"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Xz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->XA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const-string v1, "syncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 615
    const-string v1, "flagVisible"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 616
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v1, "syncStatus"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v1, "lastTouchedTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zw:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    const-string v1, "uiSyncStatus"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string v1, "uiLastSyncResult"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v1, "totalCount"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v1, "hierarchicalName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->ZA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v1, "lastFullSyncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->ZB:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 624
    return-object v0
.end method

.method public final lS()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 753
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->XO:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 755
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 757
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 759
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 761
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zp:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 763
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 765
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 767
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 769
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Xz:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 771
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->XA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 773
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 775
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 777
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 779
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 781
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zv:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 783
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 785
    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zw:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 787
    const/16 v1, 0x10

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 789
    const/16 v1, 0x11

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 791
    const/16 v1, 0x12

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 793
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->ZA:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 795
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Mailbox "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 647
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->ZB:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 649
    const-string v1, "lastFullSyncTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 650
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 651
    iput-wide p2, p0, Lcom/android/emailcommon/provider/Mailbox;->ZB:J

    .line 653
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->XU:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 808
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 809
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 813
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 814
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Xz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->XA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 820
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zw:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 824
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->Zz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->ZA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->ZB:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 829
    return-void

    .line 820
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
