.class public final Lcom/android/emailcommon/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Ww:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/a/i;->Ww:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "quoted-printable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    new-instance v0, Lorg/apache/james/mime4j/a/d;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/a/d;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 334
    :cond_0
    :goto_0
    return-object p0

    .line 330
    :cond_1
    const-string v1, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->cDP:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0, p1}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/android/emailcommon/mail/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/j;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/j;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 373
    :goto_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kP()Ljava/lang/String;

    move-result-object v0

    .line 374
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "inline"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 379
    :goto_1
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v4

    instance-of v4, v4, Lcom/android/emailcommon/mail/h;

    if-eqz v4, :cond_5

    .line 385
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/a/h;

    .line 387
    invoke-virtual {v0}, Lcom/android/emailcommon/a/h;->lg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alternative"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    .line 388
    :goto_2
    invoke-virtual {v0}, Lcom/android/emailcommon/a/h;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 389
    invoke-virtual {v0, v3}, Lcom/android/emailcommon/a/h;->bg(I)Lcom/android/emailcommon/mail/d;

    move-result-object v4

    const-string v5, "text/html"

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/d;->Z(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 395
    :goto_3
    invoke-virtual {v0}, Lcom/android/emailcommon/a/h;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 397
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/a/h;->bg(I)Lcom/android/emailcommon/mail/d;

    move-result-object v3

    .line 399
    if-eqz v2, :cond_1

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/d;->Z(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 400
    :cond_1
    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/a/i;->a(Lcom/android/emailcommon/mail/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 395
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    .line 376
    goto :goto_1

    .line 388
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 404
    :cond_5
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v4

    instance-of v4, v4, Lcom/android/emailcommon/mail/Message;

    if-eqz v4, :cond_6

    .line 407
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Message;

    move-object p0, v0

    .line 408
    goto :goto_0

    .line 409
    :cond_6
    if-eqz v0, :cond_9

    const-string v0, "text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "image"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 411
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_8
    :goto_4
    return-void

    .line 414
    :cond_9
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move v2, v1

    goto :goto_3
.end method

.method public static af(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 p0, 0x0

    .line 65
    :cond_0
    :goto_0
    return-object p0

    .line 60
    :cond_1
    sget-object v0, Lcom/android/emailcommon/a/i;->Ww:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 63
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static ag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/a/c;->hV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/c;
    .locals 3

    .prologue
    .line 345
    invoke-static {p0, p1}, Lcom/android/emailcommon/a/i;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 346
    new-instance v1, Lcom/android/emailcommon/a/a;

    invoke-direct {v1}, Lcom/android/emailcommon/a/a;-><init>()V

    .line 347
    invoke-virtual {v1}, Lcom/android/emailcommon/a/a;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 349
    :try_start_0
    invoke-static {v0, v2}, Lorg/apache/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 357
    :goto_0
    return-object v1

    .line 355
    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public static b(Lcom/android/emailcommon/mail/j;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/mail/c;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 229
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_2

    const-string v2, "text/*"

    invoke-static {v1, v2}, Lcom/android/emailcommon/a/i;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    invoke-static {v0, v1}, Lorg/apache/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 237
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 238
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "charset"

    invoke-static {v0, v2}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 248
    invoke-static {v0}, Lorg/apache/james/mime4j/b/a;->ie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    if-nez v0, :cond_1

    .line 254
    const-string v0, "ASCII"

    .line 259
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 271
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to getTextFromPart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 278
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to getTextFromPart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x4c

    const/4 v6, 0x0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 133
    add-int v0, p1, v3

    if-gt v0, v7, :cond_0

    .line 143
    :goto_0
    return-object p0

    .line 136
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    neg-int v1, p1

    .line 139
    invoke-static {p0, v6}, Lcom/android/emailcommon/a/i;->c(Ljava/lang/String;I)I

    move-result v0

    .line 141
    :goto_1
    if-ne v0, v3, :cond_1

    .line 142
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 146
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Lcom/android/emailcommon/a/i;->c(Ljava/lang/String;I)I

    move-result v2

    .line 148
    sub-int v5, v2, v1

    if-le v5, v7, :cond_2

    .line 149
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "\r\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v0

    move v0, v2

    .line 155
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 308
    invoke-static {p0, v3}, Lcom/android/emailcommon/a/i;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    const/4 v0, 0x1

    .line 312
    :cond_0
    return v0

    .line 307
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v0, p1

    .line 166
    :goto_0
    if-ge v0, v1, :cond_2

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 168
    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 171
    :cond_0
    :goto_1
    return v0

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 171
    goto :goto_1
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 193
    if-nez p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-static {p0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 197
    if-nez p1, :cond_2

    .line 198
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 201
    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    .line 202
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    const-string v1, "="

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 204
    array-length v2, v1

    if-lt v2, v8, :cond_0

    .line 207
    aget-object v0, v1, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 292
    const-string v0, "\\*"

    const-string v1, "\\.\\*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
