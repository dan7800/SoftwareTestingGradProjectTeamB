.class final Lcom/google/android/mail/common/base/u;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, ""

    return-object v0
.end method

.method public final B(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    goto :goto_0
.end method

.method public final VW()Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/google/android/mail/common/base/u;->coY:Lcom/google/android/mail/common/base/j;

    return-object v0
.end method

.method public final VX()Lcom/google/android/mail/common/base/j;
    .locals 0

    .prologue
    .line 304
    return-object p0
.end method

.method public final a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;
    .locals 0

    .prologue
    .line 297
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 272
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([CC)V

    .line 273
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 278
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 279
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 242
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 251
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 252
    invoke-static {p2, v0}, Lcom/google/android/mail/common/base/G;->ad(II)I

    .line 253
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public final y(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 248
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, ""

    return-object v0
.end method
