.class final Lcom/google/android/gm/aq;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aYT:Lcom/google/android/gm/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ap;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/gm/aq;->aYT:Lcom/google/android/gm/ap;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/aq;->aYT:Lcom/google/android/gm/ap;

    iget-object v0, v0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ay;->bi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/gm/aq;->aYT:Lcom/google/android/gm/ap;

    iget-object v0, v0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->c(Lcom/google/android/gm/ao;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/aq;->aYT:Lcom/google/android/gm/ap;

    iget-object v0, v0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->b(Lcom/google/android/gm/ao;)Lcom/google/android/gm/provider/U;

    move-result-object v0

    const-string v1, "^i"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/U;->eB(Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/gm/aq;->aYT:Lcom/google/android/gm/ap;

    iget-object v0, v0, Lcom/google/android/gm/ap;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->d(Lcom/google/android/gm/ao;)V

    goto :goto_0
.end method
