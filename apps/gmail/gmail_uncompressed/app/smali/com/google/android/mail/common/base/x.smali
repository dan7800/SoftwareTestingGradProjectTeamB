.class final Lcom/google/android/mail/common/base/x;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# instance fields
.field final synthetic cph:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 414
    iput-char p1, p0, Lcom/google/android/mail/common/base/x;->cph:C

    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final VW()Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 426
    iget-char v0, p0, Lcom/google/android/mail/common/base/x;->cph:C

    invoke-static {v0}, Lcom/google/android/mail/common/base/x;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 423
    iget-char v0, p0, Lcom/google/android/mail/common/base/x;->cph:C

    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/mail/common/base/x;->coX:Lcom/google/android/mail/common/base/j;

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 414
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 416
    iget-char v0, p0, Lcom/google/android/mail/common/base/x;->cph:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
