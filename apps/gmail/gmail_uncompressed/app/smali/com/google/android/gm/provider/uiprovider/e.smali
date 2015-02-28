.class public final Lcom/google/android/gm/provider/uiprovider/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bku:J

.field public final blK:Ljava/lang/String;

.field public final blL:J

.field public final bol:J

.field public final bos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final partId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/e;->blK:Ljava/lang/String;

    .line 538
    iput-wide p2, p0, Lcom/google/android/gm/provider/uiprovider/e;->bku:J

    .line 539
    iput-wide p4, p0, Lcom/google/android/gm/provider/uiprovider/e;->bol:J

    .line 540
    iput-wide p6, p0, Lcom/google/android/gm/provider/uiprovider/e;->blL:J

    .line 541
    iput-object p8, p0, Lcom/google/android/gm/provider/uiprovider/e;->partId:Ljava/lang/String;

    .line 542
    iput-object p9, p0, Lcom/google/android/gm/provider/uiprovider/e;->bos:Ljava/util/List;

    .line 543
    return-void
.end method

.method public static G(Landroid/net/Uri;)Lcom/google/android/gm/provider/uiprovider/e;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 509
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 510
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    const-string v0, "contentType"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 514
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 515
    const/4 v0, 0x3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 518
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x5

    if-lt v0, v5, :cond_0

    .line 519
    const/4 v0, 0x4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 520
    const-string v4, "empty"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    sget-object v4, Lcom/android/mail/providers/Attachment;->mW:Ljava/lang/String;

    const-string v5, "Parsed message attachment uri with partId = \"empty\""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-static {v4, v5, v8}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v8, v0

    .line 528
    :goto_0
    const-string v0, "serverMessageId"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 531
    new-instance v0, Lcom/google/android/gm/provider/uiprovider/e;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/provider/uiprovider/e;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 525
    :cond_0
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object v8, v0

    goto :goto_0
.end method
