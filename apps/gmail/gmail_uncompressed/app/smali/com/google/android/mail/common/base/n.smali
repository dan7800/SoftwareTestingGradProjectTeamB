.class final Lcom/google/android/mail/common/base/n;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# instance fields
.field final synthetic cpc:C

.field final synthetic cpd:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    .prologue
    .line 491
    iput-char p1, p0, Lcom/google/android/mail/common/base/n;->cpc:C

    iput-char p2, p0, Lcom/google/android/mail/common/base/n;->cpd:C

    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final VX()Lcom/google/android/mail/common/base/j;
    .locals 0

    .prologue
    .line 505
    return-object p0
.end method

.method protected final a(Lcom/google/android/mail/common/base/y;)V
    .locals 3

    .prologue
    .line 496
    iget-char v0, p0, Lcom/google/android/mail/common/base/n;->cpc:C

    .line 498
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/y;->j(C)V

    .line 499
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    iget-char v2, p0, Lcom/google/android/mail/common/base/n;->cpd:C

    if-ne v0, v2, :cond_0

    .line 500
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 491
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 493
    iget-char v0, p0, Lcom/google/android/mail/common/base/n;->cpc:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/android/mail/common/base/n;->cpd:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
