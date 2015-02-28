.class final Lcom/google/android/gm/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aYk:Lcom/google/android/gm/L;


# direct methods
.method constructor <init>(Lcom/google/android/gm/L;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/google/android/gm/M;->aYk:Lcom/google/android/gm/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/gm/M;->aYk:Lcom/google/android/gm/L;

    iget-object v0, v0, Lcom/google/android/gm/L;->aYj:Lcom/google/android/gm/K;

    invoke-virtual {v0}, Lcom/google/android/gm/K;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/google/android/gm/M;->aYk:Lcom/google/android/gm/L;

    iget-object v0, v0, Lcom/google/android/gm/L;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->h(Lcom/google/android/gm/K;)V

    .line 738
    :cond_0
    return-void
.end method
