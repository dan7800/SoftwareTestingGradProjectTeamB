.class final Lcom/google/android/mail/common/html/parser/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cuL:Ljava/lang/String;

.field private final cun:Ljava/lang/String;

.field private cux:I

.field private cuy:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput v0, p0, Lcom/google/android/mail/common/html/parser/p;->cux:I

    .line 390
    iput v0, p0, Lcom/google/android/mail/common/html/parser/p;->cuy:I

    .line 393
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/p;->cun:Ljava/lang/String;

    .line 394
    return-void
.end method


# virtual methods
.method public final ag(II)I
    .locals 3

    .prologue
    .line 404
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 405
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/p;->cun:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 408
    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    if-le v0, p1, :cond_1

    .line 413
    iput p1, p0, Lcom/google/android/mail/common/html/parser/p;->cux:I

    .line 414
    iput v0, p0, Lcom/google/android/mail/common/html/parser/p;->cuy:I

    .line 416
    :cond_1
    return v0
.end method

.method public final getTagName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 423
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/p;->cuL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/p;->cux:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/p;->cuy:I

    if-eq v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/p;->cun:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/mail/common/html/parser/p;->cux:I

    iget v2, p0, Lcom/google/android/mail/common/html/parser/p;->cuy:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/p;->cuL:Ljava/lang/String;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/p;->cuL:Ljava/lang/String;

    return-object v0
.end method
