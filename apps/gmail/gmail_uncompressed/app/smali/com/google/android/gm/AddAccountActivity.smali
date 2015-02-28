.class public Lcom/google/android/gm/AddAccountActivity;
.super Lcom/google/android/gm/y;
.source "SourceFile"


# instance fields
.field private aWN:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gm/y;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AddAccountActivity;->aWN:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/AddAccountActivity;)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/AddAccountActivity;->aWN:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AddAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gm/AddAccountActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/AddAccountActivity;)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AddAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gm/AddAccountActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gm/y;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/google/android/gm/y;->onResume()V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gm/AddAccountActivity;->aWN:Z

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/google/android/gm/a;

    invoke-direct {v0, p0}, Lcom/google/android/gm/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gm/k;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gm/k;-><init>(Lcom/google/android/gm/AddAccountActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/a;->a(Lcom/google/android/gm/f;)V

    .line 27
    :cond_0
    return-void
.end method
