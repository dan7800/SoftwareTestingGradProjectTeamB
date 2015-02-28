.class final Lcom/google/android/gm/ap;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gm/provider/U;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aYS:Lcom/google/android/gm/ao;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ao;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    iget-object v1, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v1}, Lcom/google/android/gm/ao;->a(Lcom/google/android/gm/ao;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    check-cast p1, Lcom/google/android/gm/provider/U;

    iget-object v0, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0, p1}, Lcom/google/android/gm/ao;->a(Lcom/google/android/gm/ao;Lcom/google/android/gm/provider/U;)Lcom/google/android/gm/provider/U;

    iget-object v0, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->b(Lcom/google/android/gm/ao;)Lcom/google/android/gm/provider/U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/U;->Ff()V

    iget-object v0, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    new-instance v1, Lcom/google/android/gm/aq;

    invoke-direct {v1, p0}, Lcom/google/android/gm/aq;-><init>(Lcom/google/android/gm/ap;)V

    invoke-static {v0, v1}, Lcom/google/android/gm/ao;->a(Lcom/google/android/gm/ao;Landroid/database/DataSetObserver;)Landroid/database/DataSetObserver;

    iget-object v0, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->b(Lcom/google/android/gm/ao;)Lcom/google/android/gm/provider/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v1}, Lcom/google/android/gm/ao;->e(Lcom/google/android/gm/ao;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/U;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->b(Lcom/google/android/gm/ao;)Lcom/google/android/gm/provider/U;

    move-result-object v0

    const-string v1, "^i"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/U;->eB(Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->d(Lcom/google/android/gm/ao;)V

    :cond_0
    return-void
.end method
