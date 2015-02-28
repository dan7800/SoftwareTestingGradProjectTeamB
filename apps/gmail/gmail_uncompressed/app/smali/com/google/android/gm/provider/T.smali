.class public final Lcom/google/android/gm/provider/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bgS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final bgU:Ljava/util/regex/Pattern;


# instance fields
.field private final Ln:J

.field private aIW:I

.field private bgH:Ljava/lang/String;

.field private bgI:Ljava/lang/String;

.field private bgJ:I

.field private bgK:I

.field private bgL:Z

.field private final bgM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final bgN:Z

.field private bgO:I

.field private bgP:I

.field private bgQ:Ljava/lang/String;

.field private bgR:Z

.field private bgT:J

.field private final mAccount:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/T;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "^f"

    const v2, 0x7f09037b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^^out"

    const v2, 0x7f09037c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^i"

    const v2, 0x7f09037d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^r"

    const v2, 0x7f09037e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^b"

    const v2, 0x7f09037f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^all"

    const v2, 0x7f090380

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^u"

    const v2, 0x7f090381

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^k"

    const v2, 0x7f090382

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^s"

    const v2, 0x7f090383

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^t"

    const v2, 0x7f090384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^g"

    const v2, 0x7f090385

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^io_im"

    const v2, 0x7f090386

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^iim"

    const v2, 0x7f090387

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_personal"

    const v2, 0x7f090388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_social"

    const v2, 0x7f090389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_promo"

    const v2, 0x7f09038a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_notification"

    const v2, 0x7f09038b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_group"

    const v2, 0x7f09038c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/T;->bgS:Ljava/util/Map;

    .line 146
    const-string v0, "\\^\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/T;->bgU:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZIIJLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZIIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gm/provider/T;->bgO:I

    .line 96
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gm/provider/T;->bgP:I

    .line 411
    iput-object p2, p0, Lcom/google/android/gm/provider/T;->mAccount:Ljava/lang/String;

    .line 412
    iput-wide p3, p0, Lcom/google/android/gm/provider/T;->Ln:J

    .line 413
    iput-boolean p11, p0, Lcom/google/android/gm/provider/T;->bgN:Z

    .line 414
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gm/provider/T;->bgM:Ljava/util/Map;

    .line 416
    iget-object v2, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object p5, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/provider/T;->bgL:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/provider/T;->bgQ:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/T;->bgI:Ljava/lang/String;

    invoke-static {p7, v2}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p7, p0, Lcom/google/android/gm/provider/T;->bgI:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/provider/T;->bgQ:Ljava/lang/String;

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gm/provider/T;->bgL:Z

    if-eqz v2, :cond_3

    if-eqz p6, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    invoke-virtual {v2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/T;->cb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p6

    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/provider/T;->mName:Ljava/lang/String;

    invoke-static {p6, v2}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object p6, p0, Lcom/google/android/gm/provider/T;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/provider/T;->bgQ:Ljava/lang/String;

    :cond_4
    iput p8, p0, Lcom/google/android/gm/provider/T;->aIW:I

    iput p9, p0, Lcom/google/android/gm/provider/T;->bgJ:I

    iput p10, p0, Lcom/google/android/gm/provider/T;->bgK:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/provider/T;->bgR:Z

    iput p12, p0, Lcom/google/android/gm/provider/T;->bgO:I

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gm/provider/T;->bgP:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/gm/provider/T;->bgT:J

    .line 418
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v1, p0, Lcom/google/android/gm/provider/T;->bgO:I

    .line 96
    iput v1, p0, Lcom/google/android/gm/provider/T;->bgP:I

    .line 389
    iput-object p1, p0, Lcom/google/android/gm/provider/T;->mAccount:Ljava/lang/String;

    .line 390
    iput-wide p2, p0, Lcom/google/android/gm/provider/T;->Ln:J

    .line 391
    iput-object p4, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    .line 392
    invoke-static {p4}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/T;->bgL:Z

    .line 393
    iput-object v2, p0, Lcom/google/android/gm/provider/T;->bgM:Ljava/util/Map;

    .line 395
    iget-boolean v0, p0, Lcom/google/android/gm/provider/T;->bgL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/T;->cb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/T;->mName:Ljava/lang/String;

    .line 402
    :goto_0
    iput-object p6, p0, Lcom/google/android/gm/provider/T;->bgI:Ljava/lang/String;

    .line 403
    iput-boolean v1, p0, Lcom/google/android/gm/provider/T;->bgR:Z

    .line 404
    iput-boolean p7, p0, Lcom/google/android/gm/provider/T;->bgN:Z

    .line 405
    return-void

    .line 400
    :cond_0
    iput-object p5, p0, Lcom/google/android/gm/provider/T;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static U(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/google/android/gm/provider/T;->bgS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 298
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 718
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->dW(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 719
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 720
    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/T;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;)",
            "Lcom/google/android/gm/provider/T;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 241
    const-string v1, "^*^"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 243
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 244
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 246
    if-eqz p2, :cond_2

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    move-object v8, v0

    .line 289
    :cond_0
    :goto_0
    return-object v8

    .line 252
    :cond_1
    sget-object v1, Lcom/google/android/gm/provider/T;->TAG:Ljava/lang/String;

    const-string v2, "Problem parsing labelId: original string: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 255
    :cond_2
    sget-object v1, Lcom/google/android/gm/provider/T;->bgU:Ljava/util/regex/Pattern;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    array-length v2, v1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 260
    :try_start_0
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 270
    aget-object v4, v1, v7

    .line 273
    aget-object v5, v1, v11

    .line 274
    const/4 v6, 0x3

    aget-object v6, v1, v6

    .line 275
    const/4 v10, 0x4

    :try_start_1
    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-lez v1, :cond_4

    .line 284
    :goto_1
    new-instance v0, Lcom/google/android/gm/provider/T;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/T;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .line 286
    if-eqz p2, :cond_3

    .line 287
    invoke-interface {p2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v8, v0

    .line 289
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    sget-object v2, Lcom/google/android/gm/provider/T;->TAG:Ljava/lang/String;

    const-string v3, "Problem parsing labelId: %s original string: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    aput-object p1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    move v7, v0

    .line 275
    goto :goto_1

    .line 278
    :catch_1
    move-exception v1

    .line 279
    sget-object v2, Lcom/google/android/gm/provider/T;->TAG:Ljava/lang/String;

    const-string v3, "Problem parsing isHidden: %s original string: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    aput-object p1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 470
    if-eqz p0, :cond_0

    const-string p1, "2147483647"

    :cond_0
    return-object p1
.end method

.method private cb(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/google/android/gm/provider/T;->bgM:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/google/android/gm/provider/T;->bgM:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 317
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 313
    :cond_1
    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/T;->U(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static cc(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    if-eqz p0, :cond_0

    .line 323
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    .line 324
    const-string v1, "^f"

    const v2, 0x7f09037b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^^out"

    const v2, 0x7f09037c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^i"

    const v2, 0x7f09037d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^r"

    const v2, 0x7f09037e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^b"

    const v2, 0x7f09037f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^all"

    const v2, 0x7f090380

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^u"

    const v2, 0x7f090381

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^k"

    const v2, 0x7f090382

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^s"

    const v2, 0x7f090383

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^t"

    const v2, 0x7f090384

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^g"

    const v2, 0x7f090385

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^io_im"

    const v2, 0x7f090386

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^iim"

    const v2, 0x7f090387

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^sq_ig_i_personal"

    const v2, 0x7f090388

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^sq_ig_i_social"

    const v2, 0x7f090389

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^sq_ig_i_promo"

    const v2, 0x7f09038a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^sq_ig_i_notification"

    const v2, 0x7f09038b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "^sq_ig_i_group"

    const v2, 0x7f09038c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_0
    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 485
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v0

    .line 486
    const-string v1, "^g"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {}, Lcom/google/android/gm/c/f;->IB()[I

    move-result-object v0

    .line 503
    :goto_0
    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_1
    return v0

    .line 488
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->ea(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    invoke-static {p0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fu()Ljava/util/Map;

    move-result-object v0

    .line 491
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/ai;

    .line 493
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Lcom/google/android/gm/provider/ai;->getBackgroundColor()I

    move-result v0

    goto :goto_1

    .line 498
    :cond_1
    invoke-static {}, Lcom/google/android/gm/c/f;->IC()I

    move-result v0

    goto :goto_1

    .line 500
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gm/provider/T;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gm/c/f;->af(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static eA(Ljava/lang/String;)I
    .locals 2

    .prologue
    const v0, 0x7f02009c

    .line 536
    const-string v1, "^sq_ig_i_personal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 538
    :cond_1
    const-string v1, "^sq_ig_i_social"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    const v0, 0x7f0200a1

    goto :goto_0

    .line 540
    :cond_2
    const-string v1, "^sq_ig_i_promo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    const v0, 0x7f02009e

    goto :goto_0

    .line 542
    :cond_3
    const-string v1, "^sq_ig_i_notification"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 543
    const v0, 0x7f0200a6

    goto :goto_0

    .line 544
    :cond_4
    const-string v1, "^sq_ig_i_group"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 545
    const v0, 0x7f020094

    goto :goto_0

    .line 546
    :cond_5
    const-string v1, "^f"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 547
    const v0, 0x7f02009f

    goto :goto_0

    .line 548
    :cond_6
    const-string v1, "^i"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    const-string v0, "^iim"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 551
    const v0, 0x7f02009d

    goto :goto_0

    .line 552
    :cond_7
    const-string v0, "^r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 553
    const v0, 0x7f020092

    goto :goto_0

    .line 554
    :cond_8
    const-string v0, "^u"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 555
    const v0, 0x7f0200a5

    goto :goto_0

    .line 556
    :cond_9
    const-string v0, "^k"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 557
    const v0, 0x7f0200a4

    goto :goto_0

    .line 558
    :cond_a
    const-string v0, "^s"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 559
    const v0, 0x7f0200a2

    goto :goto_0

    .line 560
    :cond_b
    const-string v0, "^t"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 561
    const v0, 0x7f0200a3

    goto/16 :goto_0

    .line 562
    :cond_c
    const-string v0, "^all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 563
    const v0, 0x7f020091

    goto/16 :goto_0

    .line 564
    :cond_d
    const-string v0, "^^out"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 565
    const v0, 0x7f02009b

    goto/16 :goto_0

    .line 566
    :cond_e
    const-string v0, "^im"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "^io_im"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 568
    :cond_f
    const v0, 0x7f020096

    goto/16 :goto_0

    .line 571
    :cond_10
    const v0, 0x7f020098

    goto/16 :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 518
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v0

    .line 519
    const-string v1, "^g"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-static {}, Lcom/google/android/gm/c/f;->IB()[I

    move-result-object v0

    .line 525
    :goto_0
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 522
    :cond_0
    invoke-static {v0, p2}, Lcom/google/android/gm/provider/T;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gm/c/f;->af(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized EU()Z
    .locals 1

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/T;->bgL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized EV()I
    .locals 3

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/T;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/T;->bgI:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/T;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized EW()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 582
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gm/provider/T;->bgO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized EX()Z
    .locals 2

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/T;->bgO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized EY()I
    .locals 2

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/T;->bgR:Z

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversation counts were not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 604
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gm/provider/T;->aIW:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized EZ()I
    .locals 2

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/T;->bgR:Z

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unread conversation counts were not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 616
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gm/provider/T;->bgJ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized Fa()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 638
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gm/provider/T;->bgP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Fb()Z
    .locals 2

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/T;->bgP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Fc()Z
    .locals 2

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/T;->bgP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Fd()J
    .locals 2

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/T;->bgT:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getBackgroundColor()I
    .locals 3

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/T;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/T;->bgI:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/T;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getId()J
    .locals 2

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/T;->Ln:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/T;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/gm/provider/T;->bgH:Ljava/lang/String;

    return-object v0
.end method
