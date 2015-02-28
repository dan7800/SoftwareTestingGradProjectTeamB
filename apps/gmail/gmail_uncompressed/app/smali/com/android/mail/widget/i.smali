.class final Lcom/android/mail/widget/i;
.super Lcom/android/mail/utils/i;
.source "SourceFile"


# instance fields
.field final synthetic aRy:Lcom/android/mail/widget/h;


# direct methods
.method public constructor <init>(Lcom/android/mail/widget/h;I)V
    .locals 1

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/mail/widget/i;->aRy:Lcom/android/mail/widget/h;

    .line 610
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/mail/utils/i;-><init>(Landroid/os/Looper;I)V

    .line 611
    return-void
.end method


# virtual methods
.method protected final AQ()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/mail/widget/i;->aRy:Lcom/android/mail/widget/h;

    invoke-static {v0}, Lcom/android/mail/widget/h;->a(Lcom/android/mail/widget/h;)Landroid/content/CursorLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/mail/widget/i;->aRy:Lcom/android/mail/widget/h;

    invoke-static {v0}, Lcom/android/mail/widget/h;->a(Lcom/android/mail/widget/h;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 619
    :cond_0
    return-void
.end method
