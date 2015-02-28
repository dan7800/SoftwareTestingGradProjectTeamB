.class final Lcom/google/android/mail/common/base/w;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# instance fields
.field final synthetic cph:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 380
    iput-char p1, p0, Lcom/google/android/mail/common/base/w;->cph:C

    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final VW()Lcom/google/android/mail/common/base/j;
    .locals 2

    .prologue
    .line 396
    iget-char v0, p0, Lcom/google/android/mail/common/base/w;->cph:C

    new-instance v1, Lcom/google/android/mail/common/base/x;

    invoke-direct {v1, v0}, Lcom/google/android/mail/common/base/x;-><init>(C)V

    return-object v1
.end method

.method public final VX()Lcom/google/android/mail/common/base/j;
    .locals 0

    .prologue
    .line 402
    return-object p0
.end method

.method public final a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 393
    iget-char v0, p0, Lcom/google/android/mail/common/base/w;->cph:C

    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/android/mail/common/base/w;->cph:C

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/mail/common/base/y;)V
    .locals 1

    .prologue
    .line 399
    iget-char v0, p0, Lcom/google/android/mail/common/base/w;->cph:C

    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/y;->j(C)V

    .line 400
    return-void
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 380
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 382
    iget-char v0, p0, Lcom/google/android/mail/common/base/w;->cph:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
