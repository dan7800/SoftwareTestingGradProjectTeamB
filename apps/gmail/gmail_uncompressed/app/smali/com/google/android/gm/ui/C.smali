.class public final Lcom/google/android/gm/ui/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/model/d;


# instance fields
.field private final Nc:Lcom/android/mail/providers/Account;

.field private final aAz:I

.field private final bqq:Lcom/google/android/gms/people/model/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/model/d;Lcom/android/mail/providers/Account;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    .line 19
    iput-object p2, p0, Lcom/google/android/gm/ui/C;->Nc:Lcom/android/mail/providers/Account;

    .line 20
    iput p3, p0, Lcom/google/android/gm/ui/C;->aAz:I

    .line 21
    return-void
.end method


# virtual methods
.method public final FP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/C;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final It()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/gm/ui/C;->aAz:I

    return v0
.end method

.method public final Iu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final Iv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Iv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Iw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Iw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final Ix()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Ix()I

    move-result v0

    return v0
.end method

.method public final Iy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Iy()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/C;->bqq:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ui/C;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/ui/C;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method
