.class public Lcom/android/mail/providers/Conversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public static final aqh:Lcom/android/mail/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/a",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private static azp:Ljava/lang/String;

.field public static final azq:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private static final azr:Landroid/os/Bundle;

.field private static final azs:Landroid/os/Bundle;

.field private static final mW:Ljava/lang/String;


# instance fields
.field public final aam:Z

.field public final ayV:Ljava/lang/String;

.field public final ayW:J

.field public final ayX:Z

.field public final ayY:Landroid/net/Uri;

.field public final ayZ:I

.field public aza:Z

.field public azb:Z

.field public azc:Z

.field private azd:Lcom/android/mail/providers/FolderList;

.field public aze:I

.field public final azf:I

.field public final azg:Z

.field public final azh:Z

.field public final azi:Z

.field public final azj:Landroid/net/Uri;

.field public final azk:Lcom/android/mail/providers/ConversationInfo;

.field public final azl:Landroid/net/Uri;

.field public final azm:J

.field public transient azn:Z

.field private transient azo:Z

.field public final color:I

.field public final id:J

.field public transient position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public priority:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 46
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Conversation;->mW:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Conversation;->azq:Ljava/util/Collection;

    .line 244
    new-instance v0, Lcom/android/mail/providers/g;

    invoke-direct {v0}, Lcom/android/mail/providers/g;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Conversation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 545
    sput-object v0, Lcom/android/mail/providers/Conversation;->azs:Landroid/os/Bundle;

    const-string v1, "rawFolders"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 547
    sget-object v0, Lcom/android/mail/providers/Conversation;->azs:Landroid/os/Bundle;

    const-string v1, "options"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 552
    sput-object v0, Lcom/android/mail/providers/Conversation;->azr:Landroid/os/Bundle;

    const-string v1, "conversationInfo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    sget-object v0, Lcom/android/mail/providers/Conversation;->azr:Landroid/os/Bundle;

    const-string v1, "options"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 817
    new-instance v0, Lcom/android/mail/providers/h;

    invoke-direct {v0}, Lcom/android/mail/providers/h;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Conversation;->aqh:Lcom/android/mail/c/a;

    return-void
.end method

.method private constructor <init>(JLandroid/net/Uri;Ljava/lang/String;JZLandroid/net/Uri;IIZZZLcom/android/mail/providers/FolderList;IIZZZLandroid/net/Uri;Lcom/android/mail/providers/ConversationInfo;Landroid/net/Uri;ZJ)V
    .locals 5

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    if-nez p21, :cond_0

    .line 356
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null conversationInfo"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_0
    iput-wide p1, p0, Lcom/android/mail/providers/Conversation;->id:J

    .line 359
    iput-object p3, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 360
    iput-object p4, p0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    .line 361
    iput-wide p5, p0, Lcom/android/mail/providers/Conversation;->ayW:J

    .line 362
    iput-boolean p7, p0, Lcom/android/mail/providers/Conversation;->ayX:Z

    .line 363
    iput-object p8, p0, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    .line 364
    iput p9, p0, Lcom/android/mail/providers/Conversation;->ayZ:I

    .line 365
    iput p10, p0, Lcom/android/mail/providers/Conversation;->priority:I

    .line 366
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aza:Z

    .line 367
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azb:Z

    .line 368
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azc:Z

    .line 369
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    .line 370
    move/from16 v0, p15

    iput v0, p0, Lcom/android/mail/providers/Conversation;->aze:I

    .line 371
    move/from16 v0, p16

    iput v0, p0, Lcom/android/mail/providers/Conversation;->azf:I

    .line 372
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azg:Z

    .line 373
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azi:Z

    .line 374
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azh:Z

    .line 375
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mail/providers/Conversation;->color:I

    .line 376
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    .line 377
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    .line 378
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    .line 379
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aam:Z

    .line 380
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->azm:J

    .line 381
    return-void
.end method

.method synthetic constructor <init>(JLandroid/net/Uri;Ljava/lang/String;JZLandroid/net/Uri;IIZZZLcom/android/mail/providers/FolderList;IIZZZLandroid/net/Uri;Lcom/android/mail/providers/ConversationInfo;Landroid/net/Uri;ZJB)V
    .locals 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p25}, Lcom/android/mail/providers/Conversation;-><init>(JLandroid/net/Uri;Ljava/lang/String;JZLandroid/net/Uri;IIZZZLcom/android/mail/providers/FolderList;IIZZZLandroid/net/Uri;Lcom/android/mail/providers/ConversationInfo;Landroid/net/Uri;ZJ)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Creating conversation from null cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Conversation;->id:J

    .line 274
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 275
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Conversation;->ayW:J

    .line 276
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_3

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    .line 283
    :goto_0
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->ayX:Z

    .line 284
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    .line 286
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->ayZ:I

    .line 287
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    .line 288
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aza:Z

    .line 289
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azb:Z

    .line 290
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azc:Z

    .line 291
    instance-of v0, p1, Lcom/android/mail/browse/u;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/u;

    invoke-virtual {v0, v7}, Lcom/android/mail/browse/u;->bU(I)[B

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v4, v0

    if-lez v4, :cond_9

    invoke-static {v0}, Lcom/android/mail/providers/FolderList;->d([B)Lcom/android/mail/providers/FolderList;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    .line 292
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->aze:I

    .line 293
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->azf:I

    .line 294
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azg:Z

    .line 295
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azi:Z

    .line 296
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azh:Z

    .line 297
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->color:I

    .line 298
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/providers/Conversation;->position:I

    .line 301
    iput-boolean v2, p0, Lcom/android/mail/providers/Conversation;->azn:Z

    .line 302
    instance-of v0, p1, Lcom/android/mail/browse/u;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/u;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/u;->bU(I)[B

    move-result-object v0

    if-eqz v0, :cond_f

    array-length v4, v0

    if-lez v4, :cond_f

    invoke-static {v0}, Lcom/android/mail/providers/ConversationInfo;->c([B)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    .line 303
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/android/mail/providers/Conversation;->mW:Ljava/lang/String;

    const-string v4, "Null conversation info from cursor"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 306
    :cond_1
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_2
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    .line 310
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11

    :goto_c
    iput-boolean v1, p0, Lcom/android/mail/providers/Conversation;->aam:Z

    .line 311
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->azm:J

    .line 312
    return-void

    .line 281
    :cond_3
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 283
    goto/16 :goto_1

    :cond_5
    move-object v0, v3

    .line 285
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 288
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 289
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 290
    goto/16 :goto_5

    .line 291
    :cond_9
    sget-object v0, Lcom/android/mail/providers/Conversation;->azs:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "rawFolders"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "rawFolders"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/FolderList;

    goto/16 :goto_6

    :cond_a
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/FolderList;->d([B)Lcom/android/mail/providers/FolderList;

    move-result-object v0

    goto/16 :goto_6

    :cond_b
    move v0, v2

    .line 294
    goto/16 :goto_7

    :cond_c
    move v0, v2

    .line 295
    goto/16 :goto_8

    :cond_d
    move v0, v2

    .line 296
    goto/16 :goto_9

    :cond_e
    move-object v0, v3

    .line 299
    goto/16 :goto_a

    .line 302
    :cond_f
    sget-object v0, Lcom/android/mail/providers/Conversation;->azr:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "conversationInfo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "conversationInfo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ConversationInfo;

    goto/16 :goto_b

    :cond_10
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/ConversationInfo;->c([B)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v0

    goto/16 :goto_b

    :cond_11
    move v1, v2

    .line 310
    goto :goto_c
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Conversation;->id:J

    .line 205
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mail/providers/Conversation;->ayW:J

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->ayX:Z

    .line 209
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->ayZ:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aza:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azb:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azc:Z

    .line 215
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/FolderList;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->aze:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->azf:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azg:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azi:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azh:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->color:I

    .line 222
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/providers/Conversation;->position:I

    .line 224
    iput-boolean v2, p0, Lcom/android/mail/providers/Conversation;->azn:Z

    .line 225
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ConversationInfo;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    .line 226
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/mail/providers/Conversation;->aam:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->azm:J

    .line 229
    return-void

    :cond_0
    move v0, v2

    .line 208
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 212
    goto :goto_1

    :cond_2
    move v0, v2

    .line 213
    goto :goto_2

    :cond_3
    move v0, v2

    .line 214
    goto :goto_3

    :cond_4
    move v0, v2

    .line 218
    goto :goto_4

    :cond_5
    move v0, v2

    .line 219
    goto :goto_5

    :cond_6
    move v0, v2

    .line 220
    goto :goto_6

    :cond_7
    move v1, v2

    .line 227
    goto :goto_7
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copying null conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->id:J

    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->id:J

    .line 320
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 321
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->ayW:J

    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->ayW:J

    .line 322
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    .line 323
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->ayX:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->ayX:Z

    .line 324
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    .line 325
    iget v0, p1, Lcom/android/mail/providers/Conversation;->ayZ:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->ayZ:I

    .line 326
    iget v0, p1, Lcom/android/mail/providers/Conversation;->priority:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    .line 327
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->aza:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aza:Z

    .line 328
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->azb:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azb:Z

    .line 329
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->azc:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azc:Z

    .line 330
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    .line 331
    iget v0, p1, Lcom/android/mail/providers/Conversation;->aze:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->aze:I

    .line 332
    iget v0, p1, Lcom/android/mail/providers/Conversation;->azf:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->azf:I

    .line 333
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->azg:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azg:Z

    .line 334
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->azi:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azi:Z

    .line 335
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->azh:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azh:Z

    .line 336
    iget v0, p1, Lcom/android/mail/providers/Conversation;->color:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->color:I

    .line 337
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    .line 338
    iget v0, p1, Lcom/android/mail/providers/Conversation;->position:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->position:I

    .line 339
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->azn:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azn:Z

    .line 342
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    .line 343
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    .line 344
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->aam:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aam:Z

    .line 345
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->azm:J

    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->azm:J

    .line 346
    return-void
.end method

.method public static final a(Ljava/util/Collection;Lcom/android/mail/providers/Conversation;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/providers/Conversation;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 697
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    .line 710
    :goto_0
    return v0

    .line 701
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 702
    goto :goto_0

    .line 704
    :cond_2
    iget-wide v4, p1, Lcom/android/mail/providers/Conversation;->id:J

    .line 705
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 706
    iget-wide v6, v0, Lcom/android/mail/providers/Conversation;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    .line 707
    goto :goto_0

    :cond_4
    move v0, v2

    .line 710
    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 801
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    const v0, 0x7f0901a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 810
    :cond_0
    :goto_0
    return-object p2

    .line 803
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    sget-object v0, Lcom/android/mail/providers/Conversation;->azp:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 805
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Conversation;->azp:Ljava/lang/String;

    .line 807
    :cond_2
    sget-object v0, Lcom/android/mail/providers/Conversation;->azp:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Conversation;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/mail/providers/Conversation;->azq:Ljava/util/Collection;

    .line 722
    :goto_0
    return-object v0

    .line 721
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->aE(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/mail/providers/Conversation;->mW:Ljava/lang/String;

    return-object v0
.end method

.method public static o(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " conversations:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x0

    .line 780
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 781
    add-int/lit8 v1, v1, 0x1

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 786
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/FolderList;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    .line 656
    return-void
.end method

.method public final bL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final d(Landroid/content/ContentValues;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 609
    if-nez p1, :cond_1

    .line 642
    :cond_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 613
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 614
    sget-object v5, Lcom/android/mail/providers/Conversation;->mW:Ljava/lang/String;

    const-string v6, "Conversation: applying cached value to col=%s val=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 616
    const-string v5, "read"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    .line 617
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aza:Z

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    .line 618
    :cond_4
    const-string v5, "conversationInfo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 619
    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/android/mail/providers/ConversationInfo;->c([B)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v0

    .line 620
    if-nez v0, :cond_5

    .line 621
    sget-object v0, Lcom/android/mail/providers/Conversation;->mW:Ljava/lang/String;

    const-string v1, "Null ConversationInfo in applyCachedValues"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 623
    :cond_5
    iget-object v1, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    invoke-virtual {v1, v0}, Lcom/android/mail/providers/ConversationInfo;->b(Lcom/android/mail/providers/ConversationInfo;)V

    goto :goto_0

    .line 625
    :cond_6
    const-string v5, "conversationFlags"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 626
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->aze:I

    goto :goto_0

    .line 627
    :cond_7
    const-string v5, "starred"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 628
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azc:Z

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_2

    .line 629
    :cond_9
    const-string v5, "seen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 630
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azb:Z

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_3

    .line 631
    :cond_b
    const-string v5, "rawFolders"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 632
    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/android/mail/providers/FolderList;->d([B)Lcom/android/mail/providers/FolderList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    goto/16 :goto_0

    .line 633
    :cond_c
    const-string v5, "viewed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 635
    const-string v5, "priority"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 636
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    goto/16 :goto_0

    .line 638
    :cond_d
    sget-object v1, Lcom/android/mail/providers/Conversation;->mW:Ljava/lang/String;

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const-string v6, "unsupported cached conv value in col=%s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v1, v5, v6, v7}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 660
    instance-of v0, p1, Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_0

    .line 661
    check-cast p1, Lcom/android/mail/providers/Conversation;

    .line 662
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[conversation id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    iget-wide v2, p0, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    sget-object v1, Lcom/android/mail/providers/Conversation;->mW:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uD()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    iget-object v0, v0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final uE()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 676
    iget v1, p0, Lcom/android/mail/providers/Conversation;->priority:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uF()Z
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/android/mail/providers/Conversation;->aze:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v0, v0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v0, v0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final uH()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget v0, v0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    return v0
.end method

.method public final uI()I
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget v0, v0, Lcom/android/mail/providers/ConversationInfo;->azN:I

    return v0
.end method

.method public final uJ()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azo:Z

    return v0
.end method

.method public final uK()V
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azo:Z

    .line 753
    return-void
.end method

.method public final uL()Z
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    iget-object v0, v0, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 764
    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    const/4 v0, 0x1

    .line 769
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iget-wide v4, p0, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 180
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-wide v4, p0, Lcom/android/mail/providers/Conversation;->ayW:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->ayX:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    iget v0, p0, Lcom/android/mail/providers/Conversation;->ayZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aza:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azb:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azc:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azd:Lcom/android/mail/providers/FolderList;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget v0, p0, Lcom/android/mail/providers/Conversation;->aze:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/android/mail/providers/Conversation;->azf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azg:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azi:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->azh:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/android/mail/providers/Conversation;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 197
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->aam:Z

    if-eqz v0, :cond_7

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-wide v0, p0, Lcom/android/mail/providers/Conversation;->azm:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 182
    goto :goto_0

    :cond_1
    move v0, v2

    .line 186
    goto :goto_1

    :cond_2
    move v0, v2

    .line 187
    goto :goto_2

    :cond_3
    move v0, v2

    .line 188
    goto :goto_3

    :cond_4
    move v0, v2

    .line 192
    goto :goto_4

    :cond_5
    move v0, v2

    .line 193
    goto :goto_5

    :cond_6
    move v0, v2

    .line 194
    goto :goto_6

    :cond_7
    move v1, v2

    .line 199
    goto :goto_7
.end method
