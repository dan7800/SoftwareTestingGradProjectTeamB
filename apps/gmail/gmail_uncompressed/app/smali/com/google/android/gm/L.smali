.class final Lcom/google/android/gm/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field final synthetic aYj:Lcom/google/android/gm/K;


# direct methods
.method constructor <init>(Lcom/google/android/gm/K;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/google/android/gm/L;->aYj:Lcom/google/android/gm/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(I)V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/android/gm/L;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->i(Lcom/google/android/gm/K;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/M;

    invoke-direct {v1, p0}, Lcom/google/android/gm/M;-><init>(Lcom/google/android/gm/L;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    return-void
.end method
