.class public Lcom/android/mail/providers/Folder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private static final aAt:[I

.field public static final aqh:Lcom/android/mail/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/a",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private static final azX:Ljava/util/regex/Pattern;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final azq:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mW:Ljava/lang/String;


# instance fields
.field public aAa:Z

.field public aAb:I

.field public aAc:Landroid/net/Uri;

.field public aAd:Landroid/net/Uri;

.field public aAe:I

.field public aAf:I

.field public aAg:I

.field public aAh:Landroid/net/Uri;

.field public aAi:I

.field public aAj:I

.field public aAk:Ljava/lang/String;

.field public aAl:Ljava/lang/String;

.field private aAm:I

.field private aAn:I

.field public aAo:Landroid/net/Uri;

.field public aAp:Ljava/lang/String;

.field public aAq:Landroid/net/Uri;

.field public aAr:J

.field public aAs:Ljava/lang/String;

.field public ayg:I

.field public ays:I

.field public azY:Ljava/lang/String;

.field public azZ:Lcom/android/mail/utils/p;

.field public id:I

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "\\^\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Folder;->azX:Ljava/util/regex/Pattern;

    .line 67
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Folder;->mW:Ljava/lang/String;

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Folder;->azq:Ljava/util/Collection;

    .line 429
    new-instance v0, Lcom/android/mail/providers/k;

    invoke-direct {v0}, Lcom/android/mail/providers/k;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    .line 549
    new-instance v0, Lcom/android/mail/providers/l;

    invoke-direct {v0}, Lcom/android/mail/providers/l;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Folder;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 642
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102fe

    aput v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/Folder;->aAt:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const-string v0, "Uninitialized!"

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IZILandroid/net/Uri;Landroid/net/Uri;IIILandroid/net/Uri;IIIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput p1, p0, Lcom/android/mail/providers/Folder;->id:I

    .line 347
    iput-object p2, p0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    .line 348
    new-instance v2, Lcom/android/mail/utils/p;

    invoke-direct {v2, p3}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    .line 349
    iput-object p4, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 350
    iput p5, p0, Lcom/android/mail/providers/Folder;->ayg:I

    .line 351
    iput-boolean p6, p0, Lcom/android/mail/providers/Folder;->aAa:Z

    .line 352
    iput p7, p0, Lcom/android/mail/providers/Folder;->aAb:I

    .line 353
    iput-object p8, p0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    .line 354
    iput-object p9, p0, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    .line 355
    iput p10, p0, Lcom/android/mail/providers/Folder;->aAe:I

    .line 356
    iput p11, p0, Lcom/android/mail/providers/Folder;->aAf:I

    .line 357
    iput p12, p0, Lcom/android/mail/providers/Folder;->aAg:I

    .line 358
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    .line 359
    move/from16 v0, p14

    iput v0, p0, Lcom/android/mail/providers/Folder;->ays:I

    .line 360
    move/from16 v0, p15

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAi:I

    .line 361
    move/from16 v0, p16

    iput v0, p0, Lcom/android/mail/providers/Folder;->type:I

    .line 362
    move/from16 v0, p17

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAj:I

    .line 363
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    .line 364
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    .line 365
    invoke-static/range {p18 .. p18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mail/providers/Folder;->aAm:I

    .line 368
    :cond_0
    invoke-static/range {p19 .. p19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    invoke-static/range {p19 .. p19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mail/providers/Folder;->aAn:I

    .line 371
    :cond_1
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAo:Landroid/net/Uri;

    .line 372
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAp:Ljava/lang/String;

    .line 373
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/android/mail/providers/Folder;->aAr:J

    .line 374
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    .line 375
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/mail/providers/Folder;->id:I

    .line 380
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    .line 381
    new-instance v3, Lcom/android/mail/utils/p;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    .line 383
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 384
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/mail/providers/Folder;->ayg:I

    .line 386
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/providers/Folder;->aAa:Z

    .line 387
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAb:I

    .line 388
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    .line 390
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-boolean v1, p0, Lcom/android/mail/providers/Folder;->aAa:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    .line 393
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAe:I

    .line 394
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAf:I

    .line 395
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAg:I

    .line 396
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    .line 398
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->ays:I

    .line 399
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAi:I

    .line 400
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->type:I

    .line 401
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAj:I

    .line 402
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    .line 403
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAm:I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAn:I

    .line 410
    :cond_1
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAo:Landroid/net/Uri;

    .line 412
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAp:Ljava/lang/String;

    .line 413
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/providers/Folder;->aAr:J

    .line 415
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    if-nez v0, :cond_7

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_5
    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    .line 417
    const-string v0, "unreadSenders"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 419
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 420
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    .line 424
    :goto_6
    return-void

    :cond_2
    move v0, v1

    .line 386
    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    .line 389
    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    .line 391
    goto/16 :goto_2

    :cond_5
    move-object v0, v2

    .line 397
    goto/16 :goto_3

    :cond_6
    move-object v0, v2

    .line 411
    goto :goto_4

    .line 416
    :cond_7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    .line 422
    :cond_8
    iput-object v2, p0, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    goto :goto_6
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->id:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    .line 444
    new-instance v2, Lcom/android/mail/utils/p;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {v2, v0}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->ayg:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/providers/Folder;->aAa:Z

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAb:I

    .line 450
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    .line 451
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAe:I

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAf:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAg:I

    .line 455
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->ays:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAi:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->type:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAj:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAm:I

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Folder;->aAn:I

    .line 468
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAo:Landroid/net/Uri;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAp:Ljava/lang/String;

    .line 470
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/providers/Folder;->aAr:J

    .line 472
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    .line 474
    return-void

    .line 448
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static O(II)Z
    .locals 1

    .prologue
    .line 736
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/android/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/mail/c/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/mail/c/c",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 514
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 515
    const-string v1, "query_identifier"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 517
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 518
    new-instance v0, Lcom/android/mail/c/c;

    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    sget-object v3, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, p3, v1, v2, v3}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    .line 521
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/android/mail/providers/Folder;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 622
    if-nez p1, :cond_0

    .line 640
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/mail/providers/Folder;->type:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    const/4 v2, 0x1

    .line 627
    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 628
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/ag;->aM(Landroid/content/Context;)I

    move-result v3

    if-ne v0, v3, :cond_1

    move v2, v1

    .line 631
    :cond_1
    if-nez v2, :cond_4

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 625
    goto :goto_1

    :cond_3
    move v0, v1

    .line 627
    goto :goto_2

    .line 635
    :cond_4
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 636
    invoke-virtual {v2}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 637
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V
    .locals 6

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 684
    :goto_0
    return-void

    .line 648
    :cond_0
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAj:I

    .line 651
    const v1, 0x7f020093

    if-ne v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mail/providers/Folder;->aAa:Z

    if-eqz v1, :cond_4

    .line 652
    const v0, 0x7f0200ca

    move v2, v0

    .line 655
    :goto_1
    if-lez v2, :cond_3

    .line 656
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_2

    .line 659
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0xffffff

    invoke-virtual {p0, v2}, Lcom/android/mail/providers/Folder;->cz(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 677
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 665
    :cond_1
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 667
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 669
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, -0x1000000

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 672
    sget-object v3, Lcom/android/mail/providers/Folder;->aAt:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 673
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 675
    goto :goto_2

    .line 679
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 682
    :cond_3
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "No icon returned for folder %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method public static bN(Ljava/lang/String;)Lcom/android/mail/providers/Folder;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 880
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 927
    :goto_0
    return-object v0

    .line 883
    :cond_0
    new-instance v3, Lcom/android/mail/providers/Folder;

    invoke-direct {v3}, Lcom/android/mail/providers/Folder;-><init>()V

    .line 884
    const-string v4, "^*^"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 885
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 887
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 893
    sget-object v5, Lcom/android/mail/providers/Folder;->azX:Ljava/util/regex/Pattern;

    invoke-static {p0, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    .line 894
    array-length v6, v5

    const/16 v7, 0x14

    if-ge v6, v7, :cond_2

    .line 895
    sget-object v3, Lcom/android/mail/providers/Folder;->mW:Ljava/lang/String;

    const-string v4, "split.length %d"

    new-array v0, v0, [Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v3, v4, v0}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 896
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 891
    goto :goto_0

    .line 898
    :cond_2
    iput v4, v3, Lcom/android/mail/providers/Folder;->id:I

    .line 899
    new-instance v4, Lcom/android/mail/utils/p;

    aget-object v6, v5, v0

    invoke-static {v6}, Lcom/android/mail/providers/Folder;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    iput-object v4, v3, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    .line 901
    const/4 v4, 0x2

    aget-object v4, v5, v4

    iput-object v4, v3, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 902
    const/4 v4, 0x3

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    iput-boolean v0, v3, Lcom/android/mail/providers/Folder;->aAa:Z

    .line 903
    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->ayg:I

    .line 904
    const/4 v0, 0x5

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->aAb:I

    .line 905
    const/4 v0, 0x6

    aget-object v0, v5, v0

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    .line 906
    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    .line 907
    const/16 v0, 0x8

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->aAf:I

    .line 908
    const/16 v0, 0x9

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->aAg:I

    .line 909
    const/16 v0, 0xa

    aget-object v0, v5, v0

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    .line 910
    const/16 v0, 0xb

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->ays:I

    .line 911
    const/16 v0, 0xc

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->aAi:I

    .line 912
    const/16 v0, 0xd

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->type:I

    .line 913
    const/16 v0, 0xe

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->aAj:I

    .line 914
    const/16 v0, 0xf

    aget-object v0, v5, v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    .line 915
    const/16 v0, 0x10

    aget-object v0, v5, v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    .line 916
    iget-object v0, v3, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 917
    iget-object v0, v3, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->aAm:I

    .line 919
    :cond_3
    iget-object v0, v3, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 920
    iget-object v0, v3, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/mail/providers/Folder;->aAn:I

    .line 922
    :cond_4
    const/16 v0, 0x11

    aget-object v0, v5, v0

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAo:Landroid/net/Uri;

    .line 923
    const/16 v0, 0x12

    aget-object v0, v5, v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAp:Ljava/lang/String;

    .line 924
    const/16 v0, 0x13

    aget-object v0, v5, v0

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    .line 925
    iput-object v2, v3, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    move-object v0, v3

    .line 927
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 902
    goto/16 :goto_1
.end method

.method private static bO(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 931
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v0, 0x0

    .line 934
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static cB(I)Z
    .locals 1

    .prologue
    .line 814
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final g(Lcom/android/mail/providers/Folder;)Z
    .locals 2

    .prologue
    .line 938
    if-eqz p0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static s(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 526
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 527
    iget-object v3, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v3}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_0
    return-object v1
.end method

.method public static t(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 705
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 706
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 714
    :goto_0
    return-object v0

    .line 708
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 710
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 711
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v0}, Lcom/android/mail/utils/p;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 712
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 713
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 714
    goto :goto_0
.end method


# virtual methods
.method public final bx(I)I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/android/mail/providers/Folder;->aAn:I

    :cond_0
    return p1
.end method

.method public final cA(I)Z
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/android/mail/providers/Folder;->type:I

    invoke-static {v0, p1}, Lcom/android/mail/providers/Folder;->O(II)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 55
    check-cast p1, Lcom/android/mail/providers/Folder;

    iget-object v0, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final cy(I)Z
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/android/mail/providers/Folder;->ayg:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cz(I)I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/android/mail/providers/Folder;->aAm:I

    :cond_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 574
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/mail/providers/Folder;

    if-nez v0, :cond_1

    .line 575
    :cond_0
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    check-cast p1, Lcom/android/mail/providers/Folder;

    iget-object v1, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v0}, Lcom/android/mail/utils/p;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    const-string v1, "Uninitialized!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    const-string v1, "{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget v1, p0, Lcom/android/mail/providers/Folder;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    sget-object v1, Lcom/android/mail/providers/Folder;->mW:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v1, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget v1, p0, Lcom/android/mail/providers/Folder;->aAg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uP()Z
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/android/mail/providers/Folder;->ays:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uQ()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 690
    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uR()Z
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    return v0
.end method

.method public final uS()Z
    .locals 1

    .prologue
    .line 750
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    return v0
.end method

.method public final uT()Z
    .locals 1

    .prologue
    .line 757
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    return v0
.end method

.method public final uU()Z
    .locals 1

    .prologue
    .line 764
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    return v0
.end method

.method public final uV()Z
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    return v0
.end method

.method public final uW()Z
    .locals 1

    .prologue
    .line 778
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    return v0
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 786
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    return v0
.end method

.method public final uY()Z
    .locals 1

    .prologue
    .line 793
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    return v0
.end method

.method public final uZ()Z
    .locals 1

    .prologue
    .line 807
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    return v0
.end method

.method public final va()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 822
    invoke-virtual {p0, v1}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inbox_section:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    :goto_0
    return-object v0

    .line 824
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inbox:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    const-string v0, "draft"

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    const-string v0, "important"

    goto :goto_0

    .line 830
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 831
    const-string v0, "outbox"

    goto :goto_0

    .line 832
    :cond_4
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 833
    const-string v0, "sent"

    goto :goto_0

    .line 834
    :cond_5
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 835
    const-string v0, "spam"

    goto :goto_0

    .line 836
    :cond_6
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 837
    const-string v0, "starred"

    goto :goto_0

    .line 838
    :cond_7
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 839
    const-string v0, "trash"

    goto :goto_0

    .line 840
    :cond_8
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 841
    const-string v0, "unread"

    goto :goto_0

    .line 842
    :cond_9
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 843
    const-string v0, "search"

    goto :goto_0

    .line 844
    :cond_a
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 845
    const-string v0, "all_mail"

    goto/16 :goto_0

    .line 846
    :cond_b
    invoke-virtual {p0}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "other:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 849
    :cond_c
    const-string v0, "user_folder"

    goto/16 :goto_0
.end method

.method public final vb()Z
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAi:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final vc()Z
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 478
    iget v0, p0, Lcom/android/mail/providers/Folder;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 481
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget v0, p0, Lcom/android/mail/providers/Folder;->ayg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-boolean v0, p0, Lcom/android/mail/providers/Folder;->aAa:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 487
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 488
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 492
    iget v0, p0, Lcom/android/mail/providers/Folder;->ays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Lcom/android/mail/providers/Folder;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAo:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 499
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 501
    iget-wide v2, p0, Lcom/android/mail/providers/Folder;->aAr:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 502
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 503
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 484
    goto :goto_1
.end method
