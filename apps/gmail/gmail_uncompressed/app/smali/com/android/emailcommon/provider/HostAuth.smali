.class public Lcom/android/emailcommon/provider/HostAuth;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            ">;"
        }
    .end annotation
.end field

.field public static final XO:[Ljava/lang/String;


# instance fields
.field public GZ:Ljava/lang/String;

.field public Qd:Ljava/lang/String;

.field public WA:Ljava/lang/String;

.field public Zh:Ljava/lang/String;

.field public Zi:I

.field public Zj:Ljava/lang/String;

.field public Zk:Ljava/lang/String;

.field public Zl:[B

.field public Zm:J

.field public transient Zn:Lcom/android/emailcommon/provider/Credential;

.field public dM:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "domain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "certAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "credentialKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->XO:[Ljava/lang/String;

    .line 415
    new-instance v0, Lcom/android/emailcommon/provider/k;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/k;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B

    .line 98
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->XU:Landroid/net/Uri;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B

    .line 461
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->XU:Landroid/net/Uri;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 471
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    .line 477
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/Credential;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 478
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    sget-object v1, Lcom/android/emailcommon/provider/Credential;->XQ:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Credential;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 373
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v2, v2, -0xc

    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 374
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v3, p4, 0x1b

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 376
    and-int/lit8 v2, p4, 0x3

    if-eqz v2, :cond_0

    move v2, v0

    .line 377
    :goto_0
    if-nez v2, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use client alias on non-secure connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 376
    goto :goto_0

    .line 381
    :cond_1
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    .line 382
    iput p3, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 383
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 384
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 385
    :goto_1
    const-string v1, "smtp"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    if-eqz v0, :cond_4

    const/16 v0, 0x1d1

    :goto_2
    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 390
    :cond_2
    iput-object p5, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 391
    return-void

    :cond_3
    move v0, v1

    .line 384
    goto :goto_1

    .line 386
    :cond_4
    const/16 v0, 0x24b

    goto :goto_2
.end method

.method public static aA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v1, "\\+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 569
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected static c(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 4

    .prologue
    .line 279
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 280
    const-string v1, "protocol"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 281
    const-string v1, "address"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    .line 282
    const-string v1, "port"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 283
    const-string v1, "flags"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 284
    const-string v1, "login"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    .line 285
    const-string v1, "password"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 286
    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    .line 287
    const-string v1, "certAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 288
    const-string v1, "credential"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_0

    .line 290
    invoke-static {v1}, Lcom/android/emailcommon/provider/Credential;->b(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Exception while deserializing HostAuth"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lO()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method public static u(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
    .locals 7

    .prologue
    .line 110
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->XO:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 355
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 356
    return-void
.end method

.method public final af(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    if-nez v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 121
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Credential;->n(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    return-object v0
.end method

.method public final ag(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;
    .locals 4

    .prologue
    .line 138
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 139
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    if-nez v0, :cond_0

    .line 140
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 141
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Credential;->n(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    return-object v0

    .line 143
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Credential;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    goto :goto_0
.end method

.method public final ah(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/HostAuth;->af(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    .line 305
    return-void
.end method

.method public final ay(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    goto :goto_0
.end method

.method public final az(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 530
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 535
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_0
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    .line 538
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ":"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v7

    array-length v2, v0

    if-le v2, v4, :cond_6

    aget-object v0, v0, v4

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/provider/HostAuth;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v3

    const-string v1, "\\+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v7

    const-string v9, "\\+"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    if-lt v0, v6, :cond_5

    aget-object v0, v9, v4

    const-string v10, "ssl"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v0, v4

    :goto_2
    array-length v4, v9

    if-lt v4, v11, :cond_3

    aget-object v4, v9, v6

    const-string v7, "trustallcerts"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    or-int/lit8 v0, v0, 0x8

    move v4, v0

    :goto_3
    array-length v0, v8

    if-le v0, v11, :cond_2

    aget-object v5, v8, v11

    :cond_0
    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 542
    return-void

    .line 541
    :cond_1
    const-string v4, "tls"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_2

    :cond_2
    array-length v0, v8

    if-le v0, v6, :cond_0

    const-string v0, "trustallcerts"

    aget-object v7, v8, v6

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v8, v6

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move v4, v0

    goto :goto_3

    :cond_4
    move v0, v7

    goto :goto_2

    :cond_5
    move v4, v7

    goto :goto_3

    :cond_6
    move-object v0, v5

    goto :goto_1

    :cond_7
    move-object v0, v5

    move-object v1, v5

    goto :goto_1

    :cond_8
    move-object v0, v5

    goto/16 :goto_0
.end method

.method public final b(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 223
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->XU:Landroid/net/Uri;

    .line 224
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    .line 225
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 226
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    .line 227
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 228
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 229
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    .line 230
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 231
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    .line 232
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 233
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    .line 234
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 235
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 237
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 488
    instance-of v1, p1, Lcom/android/emailcommon/provider/HostAuth;

    if-nez v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    check-cast p1, Lcom/android/emailcommon/provider/HostAuth;

    .line 492
    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    iget v2, p1, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    iget-wide v4, p1, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    iget v2, p1, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 510
    const/16 v0, 0x1d

    .line 511
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1d

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 517
    :cond_1
    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final lB()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 242
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "port"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "login"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "certAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "credentialKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    const-string v1, "accountKey"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    return-object v0
.end method

.method protected final lC()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 258
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 259
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v1, "port"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string v1, "login"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v1, "certAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "credential"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Credential;->lC()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Exception while serializing HostAuth"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lP()V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    .line 155
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 156
    return-void
.end method

.method public final lQ()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    aput-object v2, v1, v0

    return-object v1

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[protocol "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 435
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 448
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zm:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 449
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    if-nez v0, :cond_1

    .line 450
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->XQ:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/Credential;->writeToParcel(Landroid/os/Parcel;I)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/Credential;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
