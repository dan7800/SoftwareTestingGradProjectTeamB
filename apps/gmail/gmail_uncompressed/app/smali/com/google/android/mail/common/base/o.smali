.class final Lcom/google/android/mail/common/base/o;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# instance fields
.field final synthetic cpe:Lcom/google/android/mail/common/base/j;

.field final synthetic cpf:Lcom/google/android/mail/common/base/j;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/j;Lcom/google/android/mail/common/base/j;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/mail/common/base/o;->cpf:Lcom/google/android/mail/common/base/j;

    iput-object p2, p0, Lcom/google/android/mail/common/base/o;->cpe:Lcom/google/android/mail/common/base/j;

    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final VW()Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/mail/common/base/o;->cpe:Lcom/google/android/mail/common/base/j;

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 543
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/mail/common/base/o;->cpe:Lcom/google/android/mail/common/base/j;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
