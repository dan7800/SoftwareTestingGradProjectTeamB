.class final Lcom/google/android/mail/common/base/v;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final VW()Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/google/android/mail/common/base/v;->coX:Lcom/google/android/mail/common/base/j;

    return-object v0
.end method

.method public final VX()Lcom/google/android/mail/common/base/j;
    .locals 0

    .prologue
    .line 370
    return-object p0
.end method

.method public final a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 362
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/base/j;

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-static {p2}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/mail/common/base/y;)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 309
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 319
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 320
    invoke-static {p2, v0}, Lcom/google/android/mail/common/base/G;->ad(II)I

    .line 321
    const/4 v0, -0x1

    return v0
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public final y(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/4 v0, -0x1

    return v0
.end method

.method public final z(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
