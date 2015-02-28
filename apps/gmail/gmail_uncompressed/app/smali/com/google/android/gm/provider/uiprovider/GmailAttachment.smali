.class public Lcom/google/android/gm/provider/uiprovider/GmailAttachment;
.super Lcom/android/mail/providers/Attachment;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bku:J

.field public bla:I

.field public bol:J

.field public bom:I

.field private bon:Ljava/lang/String;

.field private boo:Ljava/lang/String;

.field public bop:I

.field public boq:J

.field public bor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/google/android/gm/provider/uiprovider/d;

    invoke-direct {v0}, Lcom/google/android/gm/provider/uiprovider/d;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/mail/providers/Attachment;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/os/Parcel;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->HZ()V

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/mail/providers/Attachment;-><init>()V

    .line 75
    sget-object v2, Lcom/android/mail/providers/E;->aCB:Ljava/util/regex/Pattern;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lt v3, v5, :cond_3

    .line 78
    aget-object v3, v2, v1

    iput-object v3, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    .line 79
    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setName(Ljava/lang/String;)Z

    .line 80
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setContentType(Ljava/lang/String;)V

    .line 82
    const/4 v3, 0x3

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fn(Ljava/lang/String;)V

    .line 87
    const/4 v3, 0x5

    aget-object v3, v2, v3

    const-string v4, "SERVER_ATTACHMENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    .line 88
    aget-object v0, v2, v5

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fo(Ljava/lang/String;)V

    .line 89
    array-length v0, v2

    if-le v0, v6, :cond_1

    .line 90
    aget-object v0, v2, v6

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    .line 92
    :cond_1
    array-length v0, v2

    if-le v0, v7, :cond_2

    .line 94
    const/16 v0, 0x8

    :try_start_1
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->type:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :cond_2
    :goto_1
    return-void

    .line 84
    :catch_0
    move-exception v3

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->type:I

    goto :goto_1

    .line 100
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Joined string %s has less than 6 tokens."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mail/providers/Attachment;-><init>(Lorg/json/JSONObject;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->HZ()V

    .line 72
    return-void
.end method

.method public static K(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 416
    if-nez p0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 421
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->uC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 426
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static bK(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    if-eqz p0, :cond_0

    .line 121
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 124
    new-instance v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_0
    return-object v1
.end method

.method public static ea(I)I
    .locals 1

    .prologue
    .line 397
    invoke-static {p0}, Lcom/google/android/gm/provider/g;->dG(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x3

    .line 407
    :goto_0
    return v0

    .line 399
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/provider/g;->dE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    const/4 v0, 0x2

    goto :goto_0

    .line 401
    :cond_1
    invoke-static {p0}, Lcom/google/android/gm/provider/g;->dF(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/android/gm/provider/g;->dD(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 404
    :cond_3
    invoke-static {p0}, Lcom/google/android/gm/provider/g;->dH(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fp(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    if-eqz p0, :cond_0

    .line 433
    sget-object v0, Lcom/android/mail/providers/E;->aCA:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v3

    .line 435
    array-length v4, v3

    move v0, v1

    .line 436
    :goto_0
    if-ge v0, v4, :cond_0

    .line 437
    aget-object v5, v3, v0

    .line 439
    :try_start_0
    new-instance v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-direct {v6, v5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :catch_0
    move-exception v6

    sget-object v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->mW:Ljava/lang/String;

    const-string v7, "Unable to create attachment from %s. Full string %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v1

    const/4 v5, 0x1

    aput-object p0, v8, v5

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 447
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final HY()V
    .locals 4

    .prologue
    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    :try_start_0
    const-string v1, "partId"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v1, "conversationId"

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 168
    const-string v1, "messageId"

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    const-string v1, "origin"

    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v1, "simpleContentType"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "rendition"

    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v1, "downloadStatus"

    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v1, "downloadId"

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 174
    const-string v1, "cachedFileUri"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayS:Ljava/lang/String;

    .line 180
    return-void

    .line 176
    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->mW:Ljava/lang/String;

    const-string v2, "Failed to deflate to provider data."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final HZ()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 184
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v1, "partId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    .line 186
    const-string v1, "conversationId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    .line 187
    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    .line 188
    const-string v1, "origin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    .line 189
    const-string v1, "simpleContentType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    .line 190
    const-string v1, "rendition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    .line 191
    const-string v1, "downloadStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    .line 192
    const-string v1, "downloadId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    .line 193
    const-string v1, "cachedFileUri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->mW:Ljava/lang/String;

    const-string v1, "Failed to inflate from provider data: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayS:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    iput v5, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    goto :goto_0
.end method

.method public final Ia()Ljava/lang/String;
    .locals 8

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    const-string v5, "_"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    invoke-static {v6}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Ib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->Ia()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final aw(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    if-nez p1, :cond_1

    .line 347
    iput-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 353
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setName(Ljava/lang/String;)Z

    goto :goto_0

    .line 359
    :cond_2
    iput-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    .line 360
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setName(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final dY(I)V
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 370
    :cond_0
    iput p1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    .line 372
    :cond_1
    return-void
.end method

.method public final dZ(I)V
    .locals 1

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_0

    .line 391
    :goto_0
    return-void

    .line 381
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->type:I

    goto :goto_0

    .line 384
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->type:I

    goto :goto_0

    .line 387
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->type:I

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    if-ne p0, p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :cond_3
    invoke-super {p0, p1}, Lcom/android/mail/providers/Attachment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :cond_4
    check-cast p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 215
    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    iget-wide v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_5
    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    iget-wide v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    .line 219
    goto :goto_0

    .line 221
    :cond_6
    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    iget v3, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_7
    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    iget v3, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_8
    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    iget v3, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 228
    goto :goto_0

    .line 230
    :cond_9
    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    iget-wide v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    move v0, v1

    .line 231
    goto :goto_0

    .line 233
    :cond_a
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 235
    goto :goto_0

    .line 233
    :cond_c
    iget-object v2, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 237
    :cond_d
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 239
    goto :goto_0

    .line 237
    :cond_e
    iget-object v2, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final fn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boo:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    .line 291
    :cond_0
    return-void
.end method

.method public final fo(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 307
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 310
    iput v7, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    .line 311
    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    .line 312
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayQ:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayQ:Landroid/net/Uri;

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string v0, "_"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 319
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 320
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 321
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 324
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    .line 325
    iput-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    .line 326
    iput-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    .line 327
    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->mW:Ljava/lang/String;

    const-string v1, "Unknown origin for extras: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 334
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->mW:Ljava/lang/String;

    const-string v1, "Unknown origin for extras: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x20

    .line 247
    invoke-super {p0}, Lcom/android/mail/providers/Attachment;->hashCode()I

    move-result v0

    .line 248
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 249
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    add-int/2addr v0, v2

    .line 251
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    add-int/2addr v0, v2

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 256
    return v0

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boo:Ljava/lang/String;

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uC()Ljava/lang/String;
    .locals 6

    .prologue
    .line 136
    const-string v1, "|"

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bon:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/mail/utils/I;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/mail/utils/I;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boo:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boo:Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    if-nez v0, :cond_4

    const-string v0, "SERVER_ATTACHMENT"

    :goto_3
    aput-object v0, v2, v3

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->Ib()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_4
    aput-object v0, v2, v3

    const/16 v0, 0x8

    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[|\n]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "LOCAL_FILE"

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    goto :goto_4
.end method

.method public final up()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->HY()V

    .line 114
    invoke-super {p0}, Lcom/android/mail/providers/Attachment;->up()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->HY()V

    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/mail/providers/Attachment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    return-void
.end method
