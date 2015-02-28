.class final Lcom/android/mail/ui/bE;
.super Lcom/android/mail/providers/e;
.source "SourceFile"


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bB;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-direct {p0}, Lcom/android/mail/providers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final un()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->a(Lcom/android/mail/ui/bB;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->c(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/O;->d(Lcom/android/mail/providers/p;)V

    .line 395
    iget-object v0, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->d(Lcom/android/mail/ui/bB;)Z

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->c(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mail/ui/bE;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/p;->a([Lcom/android/mail/providers/Account;)V

    .line 398
    iget-object v0, p0, Lcom/android/mail/ui/bE;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zl()V

    .line 399
    return-void
.end method
