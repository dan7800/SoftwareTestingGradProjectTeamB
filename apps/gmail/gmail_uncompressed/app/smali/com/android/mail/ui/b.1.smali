.class final Lcom/android/mail/ui/b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/mail/ui/b;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 512
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 514
    iget-object v0, p0, Lcom/android/mail/ui/b;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/mail/ui/b;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pj()V

    .line 517
    :cond_0
    return-void
.end method
