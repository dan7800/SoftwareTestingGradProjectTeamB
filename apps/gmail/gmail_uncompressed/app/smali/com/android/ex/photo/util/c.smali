.class final Lcom/android/ex/photo/util/c;
.super Lcom/android/ex/photo/util/b;
.source "SourceFile"


# instance fields
.field private Rb:[B


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/ex/photo/util/b;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 248
    return-void
.end method

.method private static i(Landroid/net/Uri;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 264
    :try_start_0
    const-string v2, "base64,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    invoke-static {}, Lcom/android/ex/photo/util/ImageUtils;->oh()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const-string v2, "base64,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mailformed data URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final fW()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/ex/photo/util/c;->Rb:[B

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/ex/photo/util/c;->eM:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/ex/photo/util/c;->i(Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/util/c;->Rb:[B

    .line 254
    iget-object v0, p0, Lcom/android/ex/photo/util/c;->Rb:[B

    if-nez v0, :cond_0

    .line 255
    invoke-super {p0}, Lcom/android/ex/photo/util/b;->fW()Ljava/io/InputStream;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/ex/photo/util/c;->Rb:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method
