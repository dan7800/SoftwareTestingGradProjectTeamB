.class public Lcom/google/android/gm/welcome/SetupAddressesActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f0400b1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/SetupAddressesActivity;->setContentView(I)V

    .line 19
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 24
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 31
    return-void
.end method
