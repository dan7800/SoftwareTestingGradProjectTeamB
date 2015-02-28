.class final Lcom/google/android/mail/common/base/l;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# instance fields
.field final synthetic coZ:C

.field final synthetic cpa:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    .prologue
    .line 444
    iput-char p1, p0, Lcom/google/android/mail/common/base/l;->coZ:C

    iput-char p2, p0, Lcom/google/android/mail/common/base/l;->cpa:C

    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final VX()Lcom/google/android/mail/common/base/j;
    .locals 0

    .prologue
    .line 453
    return-object p0
.end method

.method protected final a(Lcom/google/android/mail/common/base/y;)V
    .locals 1

    .prologue
    .line 449
    iget-char v0, p0, Lcom/google/android/mail/common/base/l;->coZ:C

    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/y;->j(C)V

    .line 450
    iget-char v0, p0, Lcom/google/android/mail/common/base/l;->cpa:C

    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/y;->j(C)V

    .line 451
    return-void
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 444
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 446
    iget-char v0, p0, Lcom/google/android/mail/common/base/l;->coZ:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/android/mail/common/base/l;->cpa:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
