.class final Lcom/google/android/gm/Q;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aYp:Lcom/google/android/gm/P;


# direct methods
.method constructor <init>(Lcom/google/android/gm/P;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/gm/Q;->aYp:Lcom/google/android/gm/P;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/gm/Q;->aYp:Lcom/google/android/gm/P;

    invoke-static {v0}, Lcom/google/android/gm/P;->a(Lcom/google/android/gm/P;)Lcom/google/android/gm/provider/U;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/android/gm/Q;->aYp:Lcom/google/android/gm/P;

    invoke-static {v0}, Lcom/google/android/gm/P;->b(Lcom/google/android/gm/P;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/gm/Q;->aYp:Lcom/google/android/gm/P;

    invoke-virtual {v0}, Lcom/google/android/gm/P;->notifyDataSetChanged()V

    .line 363
    :cond_0
    return-void
.end method
