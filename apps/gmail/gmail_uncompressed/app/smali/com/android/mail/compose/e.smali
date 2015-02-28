.class public Lcom/android/mail/compose/e;
.super Lcom/android/mail/compose/g;
.source "SourceFile"


# instance fields
.field private avg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mail/compose/g;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/compose/e;->avg:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/mail/compose/g;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/mail/compose/e;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dontSendOrSave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/compose/e;->avg:Z

    .line 64
    iget-boolean v0, p0, Lcom/android/mail/compose/e;->avg:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/mail/compose/e;->c(ZZZ)V

    .line 65
    :cond_0
    return-void
.end method

.method protected final sj()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected final sk()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
