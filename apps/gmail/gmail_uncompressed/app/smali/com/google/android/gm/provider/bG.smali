.class public final Lcom/google/android/gm/provider/bG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bnn:Ljava/net/URI;

.field private bno:Lcom/google/android/gm/provider/a;

.field private mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gm/provider/a;)V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/gm/provider/bG;->mAccount:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/google/android/gm/provider/bG;->fi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gm/provider/bG;->fj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://mail.google.com/a/%domain%/g/"

    const-string v2, "%domain%"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/bG;->bnn:Ljava/net/URI;

    .line 97
    iput-object p2, p0, Lcom/google/android/gm/provider/bG;->bno:Lcom/google/android/gm/provider/a;

    .line 98
    return-void

    .line 96
    :cond_0
    const-string v0, "https://mail.google.com/mail/g/"

    goto :goto_0
.end method

.method private static HS()Lcom/google/common/a/a/a;
    .locals 3

    .prologue
    .line 526
    new-instance v0, Lcom/google/common/a/a/a;

    sget-object v1, Lcom/google/android/gm/provider/a/a;->bnw:Lcom/google/common/a/a/b;

    invoke-direct {v0, v1}, Lcom/google/common/a/a/a;-><init>(Lcom/google/common/a/a/b;)V

    .line 530
    const/16 v1, 0xa

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 531
    return-object v0
.end method

.method private J(Ljava/util/List;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    .line 580
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/google/android/gm/provider/bG;->bnn:Ljava/net/URI;

    .line 584
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gm/provider/bG;->bnn:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method private static ad(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 4

    .prologue
    .line 197
    invoke-static {p0}, Lcom/google/android/gm/provider/bG;->fi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gm/provider/bG;->fj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    const-string v0, "GXAS_SEC"

    .line 210
    :goto_0
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "google.com"

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 212
    return-object v2

    .line 206
    :cond_0
    const-string v1, ""

    .line 207
    const-string v0, "GX"

    goto :goto_0
.end method

.method public static ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/bG;->ad(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v2

    .line 224
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, "/"

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v0, "google.com"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "version"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "clientVersion"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "allowAnyVersion"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 598
    array-length v1, p1

    .line 599
    new-instance v2, Ljava/util/ArrayList;

    div-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 600
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 601
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v4, p1, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 605
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_1
    :goto_1
    const-string v1, "UTF-8"

    invoke-static {v2, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 606
    :cond_2
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 607
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static fh(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    invoke-static {p0}, Lcom/google/android/gm/provider/bG;->fi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gm/provider/bG;->fj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const-string v1, "https://mail.google.com/a/%domain%/g/"

    const-string v2, "%domain%"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 124
    :cond_0
    const-string v0, "https://mail.google.com/mail/g/"

    goto :goto_0
.end method

.method private static fi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    const-string v0, ""

    .line 183
    if-eqz p0, :cond_0

    .line 184
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 186
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 187
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method private static fj(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gmail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "googlemail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public final HT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/gm/provider/bG;->bnn:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/aX;)Lcom/google/common/a/a/a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "JJJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/bj;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/aX;",
            ")",
            "Lcom/google/common/a/a/a;"
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {}, Lcom/google/android/gm/provider/bG;->HS()Lcom/google/common/a/a/a;

    move-result-object v4

    .line 416
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v6

    .line 417
    const/4 v2, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v6, v2, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 419
    const/4 v2, 0x2

    move-wide/from16 v0, p4

    invoke-virtual {v6, v2, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 421
    const/4 v2, 0x3

    const/16 v3, 0xc8

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 422
    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 424
    move-object/from16 v0, p11

    iget-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkG:Z

    if-eqz v2, :cond_3

    .line 425
    const/16 v2, 0x10

    const/4 v3, 0x2

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 432
    :goto_0
    move-object/from16 v0, p11

    iget-object v2, v0, Lcom/google/android/gm/provider/aX;->bkI:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 433
    const/16 v2, 0x11

    move-object/from16 v0, p11

    iget-object v3, v0, Lcom/google/android/gm/provider/aX;->bkI:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v2, v8, v9}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 437
    :cond_0
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 438
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 439
    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 441
    const/4 v2, 0x7

    const-string v3, "gmail_compression_type"

    const/4 v5, 0x3

    invoke-static {p1, v3, v5}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 445
    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 447
    const/16 v2, 0xb

    const-string v3, "gmail_main_sync_max_conversion_headers"

    const/4 v5, 0x0

    invoke-static {p1, v3, v5}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 451
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 452
    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 455
    iget-object v2, p0, Lcom/google/android/gm/provider/bG;->bno:Lcom/google/android/gm/provider/a;

    const/16 v3, 0x9

    invoke-virtual {v4, v3}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/a;->a(Lcom/google/common/a/a/a;)V

    .line 457
    const/4 v2, 0x7

    invoke-virtual {v4, v2}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v2

    .line 458
    const/4 v3, 0x2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 460
    const-string v2, "Gmail"

    const-string v3, "MainSyncRequestProto: lowestBkwdConvoId: %d, highestHandledServerOp: %d, normalSync: %b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    move-object/from16 v0, p11

    iget-boolean v8, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 464
    const/4 v3, 0x0

    .line 465
    const/4 v2, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v2

    :goto_1
    if-ge v5, v7, :cond_5

    .line 466
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/bj;

    .line 467
    if-nez v3, :cond_1

    .line 468
    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v3

    .line 470
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/google/common/a/a/a;->fv(I)Lcom/google/common/a/a/a;

    move-result-object v8

    .line 472
    const/4 v9, 0x1

    iget-wide v10, v2, Lcom/google/android/gm/provider/bj;->id:J

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 474
    const/4 v9, 0x2

    iget-wide v10, v2, Lcom/google/android/gm/provider/bj;->blH:J

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 484
    iget-wide v8, v2, Lcom/google/android/gm/provider/bj;->blH:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 485
    const/4 v8, 0x4

    iget-wide v10, v2, Lcom/google/android/gm/provider/bj;->id:J

    invoke-virtual {v3, v8, v10, v11}, Lcom/google/common/a/a/a;->c(IJ)V

    .line 488
    :cond_2
    const-string v8, "Gmail"

    const-string v9, "MainSyncRequestProto: fetchConversation: ConvoId: %d, HighestMessageIdOnClient: %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, v2, Lcom/google/android/gm/provider/bj;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-wide v12, v2, Lcom/google/android/gm/provider/bj;->blH:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 465
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 426
    :cond_3
    move-object/from16 v0, p11

    iget-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkH:Z

    if-eqz v2, :cond_4

    .line 427
    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    goto/16 :goto_0

    .line 429
    :cond_4
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    goto/16 :goto_0

    .line 492
    :cond_5
    const/4 v2, 0x0

    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v2

    :goto_2
    if-ge v5, v7, :cond_6

    .line 493
    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 494
    if-nez v3, :cond_a

    .line 495
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v2

    .line 497
    :goto_3
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v8, v9}, Lcom/google/common/a/a/a;->c(IJ)V

    .line 498
    const-string v3, "Gmail"

    const-string v10, "MainSyncRequestProto: ConversationSyncDirtyConversationId: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-static {v3, v10, v11}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 492
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_2

    .line 501
    :cond_6
    move-object/from16 v0, p11

    iget-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-nez v2, :cond_7

    .line 502
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/google/common/a/a/a;->setInt(II)V

    move-object v2, v4

    .line 522
    :goto_4
    return-object v2

    .line 506
    :cond_7
    const/4 v2, 0x5

    const-string v5, "gmail_main_sync_max_forward_sync_items_limit"

    const/16 v7, 0x3e8

    invoke-static {p1, v5, v7}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v2, v5}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 513
    const/4 v2, 0x0

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v2

    :goto_5
    if-ge v5, v6, :cond_8

    .line 514
    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 515
    if-nez v3, :cond_9

    .line 516
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v2

    .line 518
    :goto_6
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v8, v9}, Lcom/google/common/a/a/a;->c(IJ)V

    .line 519
    const-string v3, "Gmail"

    const-string v7, "MainSyncRequestProto: ConversationSyncMessageId: %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v3, v7, v10}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 513
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_5

    :cond_8
    move-object v2, v4

    .line 522
    goto :goto_4

    :cond_9
    move-object v2, v3

    goto :goto_6

    :cond_a
    move-object v2, v3

    goto :goto_3
.end method

.method public final a(IJLjava/lang/String;Z)Ljava/net/URI;
    .locals 6

    .prologue
    const/16 v4, 0x100

    .line 564
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 565
    invoke-static {p1, v1}, Lcom/google/android/gm/provider/bG;->b(ILjava/util/List;)V

    .line 566
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "view"

    const-string v3, "att"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "messageId"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "partId"

    invoke-direct {v0, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "maxWidth"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "maxHeight"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "showOriginal"

    if-eqz p5, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/bG;->J(Ljava/util/List;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 571
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;IJLcom/google/common/a/a/a;Z)Lorg/apache/http/client/methods/HttpPost;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 135
    const/16 v0, 0x19

    if-ge p2, v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot make a proto request for version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p5, v2, p3, p4}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 142
    const-string v0, "Gmail"

    const-string v1, "ProtoRequest: clientid: %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 146
    invoke-static {p2, v0}, Lcom/google/android/gm/provider/bG;->b(ILjava/util/List;)V

    .line 147
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/bG;->J(Ljava/util/List;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 149
    if-eqz p6, :cond_2

    .line 150
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p5, v2}, Lcom/google/common/a/a/a;->g(Ljava/io/OutputStream;)V

    const-string v0, "gmail_max_gzip_size_bytes"

    const v3, 0x3d090

    invoke-static {p1, v0, v3}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-gt v3, v0, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 153
    :cond_2
    return-object v1

    .line 150
    :cond_3
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not get IO errors while writing to ram"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/content/ContentResolver;I)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8

    .prologue
    .line 259
    const/16 v0, 0x19

    if-lt p2, v0, :cond_0

    .line 260
    invoke-static {}, Lcom/google/android/gm/provider/bG;->HS()Lcom/google/common/a/a/a;

    move-result-object v6

    .line 264
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    .line 265
    const-string v0, "Gmail"

    const-string v1, "getSyncConfigSuggestion: GetConfigInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJLcom/google/common/a/a/a;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 269
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 270
    invoke-static {p2, v1}, Lcom/google/android/gm/provider/bG;->b(ILjava/util/List;)V

    .line 271
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "view"

    const-string v3, "configInfo"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "max_message_count"

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "always_download_label_limit"

    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "unread_fraction_limit"

    const-wide v4, 0x3fe999999999999aL    # 0.8

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "recent_label_duration_days"

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/bG;->J(Ljava/util/List;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;IJJJJJ)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 11

    .prologue
    .line 351
    const/16 v2, 0x19

    if-lt p2, v2, :cond_0

    .line 352
    invoke-static {}, Lcom/google/android/gm/provider/bG;->HS()Lcom/google/common/a/a/a;

    move-result-object v8

    .line 353
    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v2

    .line 354
    const/4 v3, 0x1

    move-wide/from16 v0, p5

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 356
    const/4 v3, 0x2

    move-wide/from16 v0, p7

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 358
    const/4 v3, 0x3

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 360
    const/4 v3, 0x4

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 362
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 363
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 364
    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 367
    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 369
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 372
    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 375
    iget-object v2, p0, Lcom/google/android/gm/provider/bG;->bno:Lcom/google/android/gm/provider/a;

    const/16 v3, 0x9

    invoke-virtual {v8, v3}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/a;->a(Lcom/google/common/a/a/a;)V

    .line 378
    const-string v2, "Gmail"

    const-string v3, "getStartSyncRequest: handledServerOpId: %d, upperFetchedConvoId: %d, lowerFetchedConvoId: %d, ackedClientOp: %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 381
    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJLcom/google/common/a/a/a;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 397
    :goto_0
    return-object v2

    .line 384
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 385
    invoke-static {p2, v3}, Lcom/google/android/gm/provider/bG;->b(ILjava/util/List;)V

    .line 386
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "view"

    const-string v5, "start"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "client"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "acked_client_op"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "server_op"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "upper_message"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "lower_message"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/bG;->J(Ljava/util/List;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;IJLjava/util/Set;Ljava/util/Set;JJ)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "IJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .prologue
    .line 307
    const/16 v2, 0x19

    if-lt p2, v2, :cond_2

    .line 308
    invoke-static {}, Lcom/google/android/gm/provider/bG;->HS()Lcom/google/common/a/a/a;

    move-result-object v8

    .line 309
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v3

    .line 310
    const/4 v2, 0x1

    move-wide/from16 v0, p7

    long-to-int v4, v0

    invoke-virtual {v3, v2, v4}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 311
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Lcom/google/common/a/a/a;->i(ILjava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v2}, Lcom/google/common/a/a/a;->i(ILjava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_1
    const-string v2, "Gmail"

    const-string v3, "getSyncConfigRequest: conversationAgeDays: %d, labelsIncluded: %s, labelsPartial: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    aput-object p6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJLcom/google/common/a/a/a;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 342
    :goto_2
    return-object v2

    .line 325
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 326
    invoke-static {p2, v3}, Lcom/google/android/gm/provider/bG;->b(ILjava/util/List;)V

    .line 327
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "view"

    const-string v5, "config"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "client"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "labelsIncluded"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 332
    :cond_3
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "labelsInDuration"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 335
    :cond_4
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "age"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "attach_size"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "includeInDuration"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "notificationMethod"

    const-string v5, "syncServer"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/bG;->J(Ljava/util/List;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/ContentResolver;ILjava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8

    .prologue
    .line 537
    const/16 v0, 0x19

    if-lt p2, v0, :cond_0

    .line 538
    invoke-static {}, Lcom/google/android/gm/provider/bG;->HS()Lcom/google/common/a/a/a;

    move-result-object v6

    .line 539
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 540
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 541
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 542
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p6}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 543
    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 544
    const-string v0, "Gmail"

    const-string v1, "getConversationListUrl: query: %s, highestMessageId: %d, maxResults = %d, maxSenders %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 547
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/provider/bG;->a(Landroid/content/ContentResolver;IJLcom/google/common/a/a/a;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 550
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 551
    invoke-static {p2, v1}, Lcom/google/android/gm/provider/bG;->b(ILjava/util/List;)V

    .line 552
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "view"

    const-string v3, "query"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "query"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "highestMessageId"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "maxResults"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "maxSenders"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/bG;->J(Ljava/util/List;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/protocol/HttpContext;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 102
    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/gm/provider/bG;->mAccount:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gm/provider/bG;->ad(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 104
    return-object v0
.end method
