.class final Lcom/android/mail/ui/bS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/O;


# instance fields
.field final synthetic aKn:Lcom/android/mail/ui/bR;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bR;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mail/ui/bS;->aKn:Lcom/android/mail/ui/bR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mail/ui/bS;->aKn:Lcom/android/mail/ui/bR;

    invoke-static {v0}, Lcom/android/mail/ui/bR;->b(Lcom/android/mail/ui/bR;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 134
    return-void
.end method

.method public final d(Lcom/android/mail/providers/p;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final e(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final f(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final g(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final h(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final i(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mail/ui/bS;->aKn:Lcom/android/mail/ui/bR;

    invoke-static {v0}, Lcom/android/mail/ui/bR;->b(Lcom/android/mail/ui/bR;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public final j(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/mail/ui/bS;->aKn:Lcom/android/mail/ui/bR;

    invoke-static {v0}, Lcom/android/mail/ui/bR;->b(Lcom/android/mail/ui/bR;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public final m(Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/android/mail/ui/bR;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderSelectionActivity.switchToDefaultInboxOrChangeAccount() called when NOT expected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    return-void
.end method

.method public final oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mail/ui/bS;->aKn:Lcom/android/mail/ui/bR;

    invoke-static {v0}, Lcom/android/mail/ui/bR;->a(Lcom/android/mail/ui/bR;)Lcom/android/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public final uo()[Lcom/android/mail/providers/Account;
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/mail/providers/Account;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mail/ui/bS;->aKn:Lcom/android/mail/ui/bR;

    invoke-static {v2}, Lcom/android/mail/ui/bR;->a(Lcom/android/mail/ui/bR;)Lcom/android/mail/providers/Account;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final wD()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final wz()Lcom/android/mail/utils/aj;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public final xh()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method
