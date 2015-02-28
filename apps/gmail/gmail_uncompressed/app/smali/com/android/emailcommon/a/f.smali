.class public Lcom/android/emailcommon/a/f;
.super Lcom/android/emailcommon/mail/Message;
.source "SourceFile"


# static fields
.field private static final Wd:Ljava/util/regex/Pattern;

.field private static final We:Ljava/util/regex/Pattern;

.field private static final Wp:Ljava/util/Random;

.field private static final Wq:Ljava/text/SimpleDateFormat;


# instance fields
.field private Wb:Lcom/android/emailcommon/a/d;

.field private Wc:Lcom/android/emailcommon/mail/c;

.field private Wh:[Lcom/android/emailcommon/mail/Address;

.field private Wi:[Lcom/android/emailcommon/mail/Address;

.field private Wj:[Lcom/android/emailcommon/mail/Address;

.field private Wk:[Lcom/android/emailcommon/mail/Address;

.field private Wl:[Lcom/android/emailcommon/mail/Address;

.field private Wm:Ljava/util/Date;

.field private Wn:Z

.field private Wo:Z

.field protected gO:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/emailcommon/a/f;->Wp:Ljava/util/Random;

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/a/f;->Wq:Ljava/text/SimpleDateFormat;

    .line 85
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/a/f;->Wd:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/a/f;->We:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wn:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wo:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wb:Lcom/android/emailcommon/a/d;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wn:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wo:Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/a/f;->b(Ljava/io/InputStream;)V

    .line 122
    return-void
.end method

.method private X(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kS()Lcom/android/emailcommon/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/a/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aa(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kS()Lcom/android/emailcommon/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/a/d;->aa(Ljava/lang/String;)V

    .line 438
    const-string v0, "Message-ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wn:Z

    .line 441
    :cond_0
    return-void
.end method

.method private kR()Lorg/apache/james/mime4j/h;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kS()Lcom/android/emailcommon/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/a/d;->clear()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wn:Z

    .line 129
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wh:[Lcom/android/emailcommon/mail/Address;

    .line 130
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wi:[Lcom/android/emailcommon/mail/Address;

    .line 131
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wj:[Lcom/android/emailcommon/mail/Address;

    .line 132
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wk:[Lcom/android/emailcommon/mail/Address;

    .line 133
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wl:[Lcom/android/emailcommon/mail/Address;

    .line 134
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wm:Ljava/util/Date;

    .line 135
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wc:Lcom/android/emailcommon/mail/c;

    .line 137
    new-instance v0, Lorg/apache/james/mime4j/h;

    invoke-direct {v0}, Lorg/apache/james/mime4j/h;-><init>()V

    .line 138
    new-instance v1, Lcom/android/emailcommon/a/g;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/a/g;-><init>(Lcom/android/emailcommon/a/f;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/h;->a(Lorg/apache/james/mime4j/c;)V

    .line 139
    return-object v0
.end method

.method private kS()Lcom/android/emailcommon/a/d;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wb:Lcom/android/emailcommon/a/d;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/emailcommon/a/d;

    invoke-direct {v0}, Lcom/android/emailcommon/a/d;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wb:Lcom/android/emailcommon/a/d;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wb:Lcom/android/emailcommon/a/d;

    return-object v0
.end method


# virtual methods
.method public final Y(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kS()Lcom/android/emailcommon/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/a/d;->Y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/emailcommon/mail/Address;)V
    .locals 3

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 335
    const-string v0, "From"

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->lk()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wh:[Lcom/android/emailcommon/mail/Address;

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wh:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public final a(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 273
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xo:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 277
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 278
    :cond_0
    const-string v0, "To"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->aa(Ljava/lang/String;)V

    .line 279
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wi:[Lcom/android/emailcommon/mail/Address;

    .line 298
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v0, "To"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-object p2, p0, Lcom/android/emailcommon/a/f;->Wi:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 284
    :cond_2
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xp:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 285
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    .line 286
    :cond_3
    const-string v0, "CC"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->aa(Ljava/lang/String;)V

    .line 287
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wj:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 289
    :cond_4
    const-string v0, "CC"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput-object p2, p0, Lcom/android/emailcommon/a/f;->Wj:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 292
    :cond_5
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xq:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_8

    .line 293
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_7

    .line 294
    :cond_6
    const-string v0, "BCC"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->aa(Ljava/lang/String;)V

    .line 295
    iput-object v1, p0, Lcom/android/emailcommon/a/f;->Wk:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 297
    :cond_7
    const-string v0, "BCC"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iput-object p2, p0, Lcom/android/emailcommon/a/f;->Wk:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 301
    :cond_8
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/emailcommon/mail/c;)V
    .locals 5

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/emailcommon/a/f;->Wc:Lcom/android/emailcommon/mail/c;

    .line 403
    instance-of v0, p1, Lcom/android/emailcommon/mail/h;

    if-eqz v0, :cond_1

    .line 404
    check-cast p1, Lcom/android/emailcommon/mail/h;

    .line 405
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/mail/h;->c(Lcom/android/emailcommon/mail/j;)V

    .line 406
    const-string v0, "Content-Type"

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/h;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    instance-of v0, p1, Lcom/android/emailcommon/a/k;

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "Content-Type"

    const-string v1, "%s;\n charset=utf-8"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/emailcommon/a/f;->getMimeType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/InputStream;Lorg/apache/james/mime4j/e;)V
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kR()Lorg/apache/james/mime4j/h;

    move-result-object v0

    .line 151
    new-instance v1, Lorg/apache/james/mime4j/d;

    iget v2, p0, Lcom/android/emailcommon/a/f;->gO:I

    invoke-direct {v1, p1, v2, p2}, Lorg/apache/james/mime4j/d;-><init>(Ljava/io/InputStream;ILorg/apache/james/mime4j/e;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/h;->b(Ljava/io/InputStream;)V

    .line 152
    invoke-virtual {v0}, Lorg/apache/james/mime4j/h;->aaF()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wo:Z

    .line 153
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 201
    const-string v0, "Date"

    sget-object v1, Lcom/android/emailcommon/a/f;->Wq:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/android/emailcommon/a/f;->Wm:Ljava/util/Date;

    .line 203
    return-void
.end method

.method public final a([Lcom/android/emailcommon/mail/Address;)V
    .locals 3

    .prologue
    .line 354
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 356
    :cond_0
    const-string v0, "Reply-to"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->aa(Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wl:[Lcom/android/emailcommon/mail/Address;

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v0, "Reply-to"

    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->c([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/android/emailcommon/a/f;->Wl:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public final a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xo:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wi:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_0

    .line 253
    const-string v0, "To"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wi:[Lcom/android/emailcommon/mail/Address;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wi:[Lcom/android/emailcommon/mail/Address;

    .line 265
    :goto_0
    return-object v0

    .line 256
    :cond_1
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xp:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wj:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_2

    .line 258
    const-string v0, "CC"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wj:[Lcom/android/emailcommon/mail/Address;

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wj:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 261
    :cond_3
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xq:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wk:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_4

    .line 263
    const-string v0, "BCC"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wk:[Lcom/android/emailcommon/mail/Address;

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wk:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 267
    :cond_5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ab(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 371
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kS()Lcom/android/emailcommon/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/a/d;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method protected b(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kR()Lorg/apache/james/mime4j/h;

    move-result-object v0

    .line 144
    new-instance v1, Lorg/apache/james/mime4j/d;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/d;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/h;->b(Ljava/io/InputStream;)V

    .line 145
    invoke-virtual {v0}, Lorg/apache/james/mime4j/h;->aaF()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wo:Z

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "Content-Type"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    const-string v0, "text/plain"

    .line 211
    :cond_0
    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/emailcommon/a/f;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/emailcommon/a/f;->gO:I

    return v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string v0, "Subject"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isComplete()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/emailcommon/a/f;->Wo:Z

    return v0
.end method

.method public final kO()Lcom/android/emailcommon/mail/c;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wc:Lcom/android/emailcommon/mail/c;

    return-object v0
.end method

.method public final kP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "Content-Disposition"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final kQ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    const-string v0, "Content-ID"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/emailcommon/a/f;->Wd:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final kT()Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wm:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Date"

    invoke-direct {p0, v1}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/k;->hW(Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/g;

    .line 177
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/g;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wm:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wm:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 187
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Delivery-date"

    invoke-direct {p0, v1}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/k;->hW(Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/g;

    .line 189
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/g;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wm:Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wm:Ljava/util/Date;

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Message missing Date header"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Message also missing Delivery-Date header"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public final kU()[Lcom/android/emailcommon/mail/Address;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wh:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_2

    .line 322
    const-string v0, "From"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 324
    :cond_0
    const-string v0, "Sender"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_1
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wh:[Lcom/android/emailcommon/mail/Address;

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wh:[Lcom/android/emailcommon/mail/Address;

    return-object v0
.end method

.method public final kV()[Lcom/android/emailcommon/mail/Address;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wl:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_0

    .line 347
    const-string v0, "Reply-to"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/a/f;->Wl:[Lcom/android/emailcommon/mail/Address;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wl:[Lcom/android/emailcommon/mail/Address;

    return-object v0
.end method

.method public final kW()Ljava/lang/String;
    .locals 4

    .prologue
    .line 382
    const-string v0, "Message-ID"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/f;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/emailcommon/a/f;->Wn:Z

    if-nez v1, :cond_1

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/emailcommon/a/f;->Wp:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const-string v3, "0123456789abcdefghijklmnopqrstuv"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@email.android.com>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_1
    return-object v0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kS()Lcom/android/emailcommon/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/a/d;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 315
    const-string v0, "Subject"

    const/16 v1, 0x9

    invoke-static {p1, v1}, Lcom/android/emailcommon/a/i;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 521
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 523
    invoke-virtual {p0}, Lcom/android/emailcommon/a/f;->kW()Ljava/lang/String;

    .line 524
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;->kS()Lcom/android/emailcommon/a/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/emailcommon/a/d;->writeTo(Ljava/io/OutputStream;)V

    .line 527
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 529
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wc:Lcom/android/emailcommon/mail/c;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/emailcommon/a/f;->Wc:Lcom/android/emailcommon/mail/c;

    invoke-interface {v0, p1}, Lcom/android/emailcommon/mail/c;->writeTo(Ljava/io/OutputStream;)V

    .line 532
    :cond_0
    return-void
.end method
