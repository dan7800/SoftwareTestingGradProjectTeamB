.class final Lcom/google/android/gm/provider/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field private bjy:Z

.field private bjz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 572
    iput-object p1, p0, Lcom/google/android/gm/provider/ak;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-boolean v0, p0, Lcom/google/android/gm/provider/ak;->bjy:Z

    .line 574
    iput-boolean v0, p0, Lcom/google/android/gm/provider/ak;->bjz:Z

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/google/android/gm/provider/ak;->bjy:Z

    iget-object v1, p0, Lcom/google/android/gm/provider/ak;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/D;->Ef()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/provider/ak;->bjz:Z

    iget-object v1, p0, Lcom/google/android/gm/provider/ak;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 580
    :goto_0
    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/google/android/gm/provider/ak;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ak;->bjz:Z

    .line 582
    iget-object v0, p0, Lcom/google/android/gm/provider/ak;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Ef()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ak;->bjy:Z

    .line 584
    iget-object v0, p0, Lcom/google/android/gm/provider/ak;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->d(Lcom/google/android/gm/provider/MailEngine;)V

    .line 586
    :cond_1
    return-void

    .line 577
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
