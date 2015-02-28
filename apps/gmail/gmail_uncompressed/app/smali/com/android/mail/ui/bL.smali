.class final Lcom/android/mail/ui/bL;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/bB;)V
    .locals 0

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/bB;B)V
    .locals 0

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bL;-><init>(Lcom/android/mail/ui/bB;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->n(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->o(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bV;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->n(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/bV;->h(Lcom/android/mail/providers/Folder;)V

    .line 1608
    iget-object v0, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->p(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->q(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1612
    iget-object v0, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->q(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/O;->m(Lcom/android/mail/providers/Account;)V

    .line 1613
    iget-object v0, p0, Lcom/android/mail/ui/bL;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->r(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Account;

    .line 1615
    :cond_1
    return-void
.end method
