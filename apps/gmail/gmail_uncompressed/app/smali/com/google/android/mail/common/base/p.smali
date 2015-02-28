.class final Lcom/google/android/mail/common/base/p;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# instance fields
.field final synthetic cpf:Lcom/google/android/mail/common/base/j;

.field final synthetic cpg:Lcom/google/android/mail/common/base/y;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/j;Lcom/google/android/mail/common/base/y;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/android/mail/common/base/p;->cpf:Lcom/google/android/mail/common/base/j;

    iput-object p2, p0, Lcom/google/android/mail/common/base/p;->cpg:Lcom/google/android/mail/common/base/y;

    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final VX()Lcom/google/android/mail/common/base/j;
    .locals 0

    .prologue
    .line 670
    return-object p0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 662
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final i(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 664
    iget-object v1, p0, Lcom/google/android/mail/common/base/p;->cpg:Lcom/google/android/mail/common/base/y;

    iget-object v1, v1, Lcom/google/android/mail/common/base/y;->cpi:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
