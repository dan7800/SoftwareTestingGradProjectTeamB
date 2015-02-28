.class public Lcom/google/android/gm/photo/GmailPhotoViewActivity;
.super Lcom/android/mail/g/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/mail/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final nF()Lcom/android/ex/photo/k;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gm/photo/b;

    invoke-direct {v0, p0}, Lcom/google/android/gm/photo/b;-><init>(Lcom/android/mail/g/e;)V

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 25
    invoke-static {p1}, Lcom/google/android/gm/ay;->dA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/g/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 37
    invoke-static {p1}, Lcom/google/android/gm/ay;->dA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gm/photo/GmailPhotoViewActivity;->openOptionsMenu()V

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/g/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
