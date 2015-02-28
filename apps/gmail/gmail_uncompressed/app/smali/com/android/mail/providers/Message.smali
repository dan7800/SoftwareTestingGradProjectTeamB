.class public Lcom/android/mail/providers/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/mail/ui/ch;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/Message;",
            ">;"
        }
    .end annotation
.end field

.field private static final Wd:Ljava/util/regex/Pattern;

.field private static aBc:Ljava/util/regex/Pattern;


# instance fields
.field private YT:Ljava/lang/String;

.field private YU:Ljava/lang/String;

.field private YV:Ljava/lang/String;

.field private YW:Ljava/lang/String;

.field private YX:Ljava/lang/String;

.field private transient aBA:[Ljava/lang/String;

.field private transient aBB:[Ljava/lang/String;

.field private transient aBC:[Ljava/lang/String;

.field private transient aBD:[Ljava/lang/String;

.field private transient aBE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public aBd:Ljava/lang/String;

.field public aBe:Landroid/net/Uri;

.field public aBf:J

.field public aBg:Ljava/lang/String;

.field public aBh:Ljava/lang/String;

.field public aBi:Z

.field public aBj:Landroid/net/Uri;

.field public aBk:I

.field public aBl:Z

.field public aBm:Landroid/net/Uri;

.field public aBn:Landroid/net/Uri;

.field public aBo:J

.field public aBp:Z

.field public aBq:I

.field public aBr:Ljava/lang/String;

.field public aBs:Landroid/net/Uri;

.field public aBt:Ljava/lang/String;

.field public aBu:I

.field public aBv:I

.field public aBw:Ljava/lang/String;

.field public aBx:Z

.field public aBy:Ljava/lang/String;

.field private transient aBz:[Ljava/lang/String;

.field public abh:Ljava/lang/String;

.field public ayV:Ljava/lang/String;

.field public ayX:Z

.field public ayZ:I

.field public aza:Z

.field public azb:Z

.field public azc:Z

.field public azj:Landroid/net/Uri;

.field public id:J

.field public uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "<img\\s+[^>]*src="

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Message;->aBc:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Message;->Wd:Ljava/util/regex/Pattern;

    .line 348
    new-instance v0, Lcom/android/mail/providers/w;

    invoke-direct {v0}, Lcom/android/mail/providers/w;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;

    .line 222
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;

    .line 223
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    .line 341
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/a/f;Landroid/net/Uri;)V
    .locals 11

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    .line 426
    invoke-virtual {p2}, Lcom/android/emailcommon/a/f;->kU()[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Message;->bW(Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xo:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p2, v0}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Message;->bX(Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xp:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p2, v0}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Message;->bY(Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xq:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p2, v0}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Message;->bZ(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Lcom/android/emailcommon/a/f;->kV()[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Message;->ca(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Lcom/android/emailcommon/a/f;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    .line 436
    invoke-virtual {p2}, Lcom/android/emailcommon/a/f;->kT()Ljava/util/Date;

    move-result-object v0

    .line 437
    invoke-virtual {p2}, Lcom/android/emailcommon/a/f;->lo()Ljava/util/Date;

    move-result-object v1

    .line 438
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/providers/Message;->aBf:J

    .line 447
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBp:Z

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBw:Ljava/lang/String;

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBk:I

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/providers/Message;->ayZ:I

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->azc:Z

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBt:Ljava/lang/String;

    .line 453
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mail/providers/Message;->aBo:J

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBx:Z

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBy:Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->ayX:Z

    .line 460
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-static {p2, v8, v1}, Lcom/android/emailcommon/a/i;->a(Lcom/android/emailcommon/mail/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 464
    invoke-static {v8}, Lcom/android/emailcommon/b/c;->b(Ljava/util/ArrayList;)Lcom/android/emailcommon/b/d;

    move-result-object v0

    .line 466
    iget-object v2, v0, Lcom/android/emailcommon/b/d;->abh:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mail/providers/Message;->abh:Ljava/lang/String;

    .line 467
    iget-object v2, v0, Lcom/android/emailcommon/b/d;->abf:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    .line 470
    iget-object v0, v0, Lcom/android/emailcommon/b/d;->abg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/utils/t;->cv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    .line 475
    invoke-virtual {p2}, Lcom/android/emailcommon/a/f;->kW()Ljava/lang/String;

    move-result-object v4

    .line 477
    const/4 v0, 0x0

    .line 478
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/j;

    .line 479
    iget-object v10, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    new-instance v0, Lcom/android/mail/providers/Attachment;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/content/Context;Lcom/android/emailcommon/mail/j;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    .line 481
    goto :goto_1

    .line 440
    :cond_0
    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/providers/Message;->aBf:J

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/providers/Message;->aBf:J

    goto/16 :goto_0

    .line 485
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/j;

    .line 486
    const-string v0, "Content-ID"

    invoke-interface {v2, v0}, Lcom/android/emailcommon/mail/j;->Y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 488
    sget-object v1, Lcom/android/mail/providers/Message;->Wd:Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    iget-object v8, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    new-instance v0, Lcom/android/mail/providers/Attachment;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/content/Context;Lcom/android/emailcommon/mail/j;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->ayX:Z

    .line 496
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->ayX:Z

    if-eqz v0, :cond_6

    invoke-static {p3, v4}, Lcom/android/mail/providers/EmlAttachmentProvider;->d(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    .line 499
    invoke-static {p3, v4}, Lcom/android/mail/providers/EmlAttachmentProvider;->e(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBn:Landroid/net/Uri;

    .line 500
    return-void

    .line 494
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 496
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object v1, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    .line 363
    if-eqz p1, :cond_1

    .line 364
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Message;->id:J

    .line 365
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    .line 366
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 368
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBe:Landroid/net/Uri;

    .line 370
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    .line 371
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->abh:Ljava/lang/String;

    .line 372
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    .line 373
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    .line 374
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    .line 375
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    .line 376
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YX:Ljava/lang/String;

    .line 377
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Message;->aBf:J

    .line 378
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 379
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    .line 380
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBi:Z

    .line 382
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBj:Landroid/net/Uri;

    .line 386
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBk:I

    .line 387
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBl:Z

    .line 389
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->ayX:Z

    .line 390
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-boolean v4, p0, Lcom/android/mail/providers/Message;->ayX:Z

    if-eqz v4, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    .line 394
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-boolean v4, p0, Lcom/android/mail/providers/Message;->ayX:Z

    if-eqz v4, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBn:Landroid/net/Uri;

    .line 398
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Message;->aBo:J

    .line 399
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBp:Z

    .line 400
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aza:Z

    .line 401
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->azb:Z

    .line 402
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->azc:Z

    .line 403
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBq:I

    .line 404
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBr:Ljava/lang/String;

    .line 405
    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    .line 407
    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBs:Landroid/net/Uri;

    .line 409
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBt:Ljava/lang/String;

    .line 411
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBu:I

    .line 412
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBv:I

    .line 413
    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBw:Ljava/lang/String;

    .line 414
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->ayZ:I

    .line 415
    const/16 v0, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_e

    :goto_c
    iput-boolean v2, p0, Lcom/android/mail/providers/Message;->aBx:Z

    .line 416
    const/16 v0, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBy:Ljava/lang/String;

    .line 418
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 367
    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 369
    goto/16 :goto_1

    :cond_4
    move v0, v3

    .line 380
    goto/16 :goto_2

    :cond_5
    move-object v0, v1

    .line 384
    goto/16 :goto_3

    :cond_6
    move v0, v3

    .line 387
    goto/16 :goto_4

    :cond_7
    move v0, v3

    .line 389
    goto/16 :goto_5

    :cond_8
    move-object v0, v1

    .line 392
    goto/16 :goto_6

    :cond_9
    move-object v0, v1

    .line 396
    goto/16 :goto_7

    :cond_a
    move v0, v3

    .line 399
    goto/16 :goto_8

    :cond_b
    move v0, v3

    .line 400
    goto/16 :goto_9

    :cond_c
    move v0, v3

    .line 401
    goto/16 :goto_a

    :cond_d
    move v0, v3

    .line 402
    goto/16 :goto_b

    :cond_e
    move v2, v3

    .line 415
    goto :goto_c
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object v3, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;

    .line 221
    iput-object v3, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;

    .line 222
    iput-object v3, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;

    .line 223
    iput-object v3, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;

    .line 224
    iput-object v3, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;

    .line 226
    iput-object v3, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Message;->id:J

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    .line 306
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 307
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBe:Landroid/net/Uri;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->abh:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->YX:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Message;->aBf:J

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBi:Z

    .line 319
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBj:Landroid/net/Uri;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBk:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBl:Z

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->ayX:Z

    .line 323
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Message;->aBo:J

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/mail/providers/Message;->aBp:Z

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBq:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBr:Ljava/lang/String;

    .line 328
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    .line 329
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBs:Landroid/net/Uri;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBt:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBu:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->aBv:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBw:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Message;->ayZ:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/android/mail/providers/Message;->aBx:Z

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBy:Ljava/lang/String;

    .line 337
    return-void

    :cond_0
    move v0, v2

    .line 318
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 321
    goto :goto_1

    :cond_2
    move v0, v2

    .line 322
    goto :goto_2

    :cond_3
    move v0, v2

    .line 325
    goto :goto_3

    :cond_4
    move v1, v2

    .line 335
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/mail/providers/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static cb(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    new-array v0, v0, [Ljava/lang/String;

    .line 637
    :goto_0
    return-object v0

    .line 632
    :cond_0
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 633
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 634
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 635
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 637
    goto :goto_0
.end method

.method private static m([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 619
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 620
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 621
    aget-object v2, p0, v0

    const-string v3, "<"

    const-string v4, "&lt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, "&gt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/AsyncQueryHandler;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 704
    iput-boolean v1, p0, Lcom/android/mail/providers/Message;->aBp:Z

    .line 706
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 707
    const-string v0, "alwaysShowImages"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public final declared-synchronized bW(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bX(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bY(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bZ(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bj(Z)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 659
    if-eqz p1, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 674
    :cond_0
    return v1

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v3

    .line 667
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 668
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uB()Z

    move-result v0

    if-nez v0, :cond_2

    .line 669
    add-int/lit8 v0, v1, 0x1

    .line 667
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized ca(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mail/providers/Message;->YX:Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 235
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    check-cast p1, Lcom/android/mail/providers/Message;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final f(Lcom/android/mail/providers/Message;)Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/providers/Message;->ayZ:I

    iget v1, p1, Lcom/android/mail/providers/Message;->ayZ:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->azc:Z

    iget-boolean v1, p1, Lcom/android/mail/providers/Message;->azc:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aza:Z

    iget-boolean v1, p1, Lcom/android/mail/providers/Message;->aza:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 727
    iget-wide v0, p0, Lcom/android/mail/providers/Message;->id:J

    return-wide v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[message id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/mail/providers/Message;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uV()Z
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/android/mail/providers/Message;->aBk:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized vA()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YX:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/providers/Message;->cb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBD:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final vB()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vA()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Message;->m([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->bK(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    .line 648
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    return-object v0

    .line 645
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBE:Ljava/util/List;

    goto :goto_0
.end method

.method public final vD()Z
    .locals 2

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aBp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aBi:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mail/providers/Message;->aBc:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

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

.method public final vE()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aBi:Z

    return v0
.end method

.method public final vF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    const-string v0, ""

    .line 715
    iget-object v1, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 722
    :cond_0
    :goto_0
    return-object v0

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 719
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 720
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final vp()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x10

    .line 513
    iget-wide v0, p0, Lcom/android/mail/providers/Message;->aBo:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final vq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    return-object v0
.end method

.method public final vr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized vs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/providers/Message;->cb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBz:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final vt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vs()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Message;->m([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized vu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/providers/Message;->cb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBA:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final vv()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vu()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Message;->m([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized vw()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/providers/Message;->cb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBB:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final vx()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vw()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Message;->m([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized vy()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/providers/Message;->cb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBC:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final vz()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/mail/providers/Message;->vy()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Message;->m([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-wide v4, p0, Lcom/android/mail/providers/Message;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 269
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 271
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBe:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 272
    iget-object v0, p0, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/mail/providers/Message;->abh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/mail/providers/Message;->YX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-wide v4, p0, Lcom/android/mail/providers/Message;->aBf:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aBi:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBj:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    iget v0, p0, Lcom/android/mail/providers/Message;->aBk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aBl:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->ayX:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 288
    iget-wide v4, p0, Lcom/android/mail/providers/Message;->aBo:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aBp:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Lcom/android/mail/providers/Message;->aBq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 293
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBs:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 294
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/android/mail/providers/Message;->aBu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Lcom/android/mail/providers/Message;->aBv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/android/mail/providers/Message;->ayZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-boolean v0, p0, Lcom/android/mail/providers/Message;->aBx:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Lcom/android/mail/providers/Message;->aBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return-void

    :cond_0
    move v0, v2

    .line 282
    goto :goto_0

    :cond_1
    move v0, v2

    .line 285
    goto :goto_1

    :cond_2
    move v0, v2

    .line 286
    goto :goto_2

    :cond_3
    move v0, v2

    .line 289
    goto :goto_3

    :cond_4
    move v1, v2

    .line 299
    goto :goto_4
.end method
