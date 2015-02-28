.class final Lcom/google/android/gm/preference/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field final synthetic bbY:Lcom/google/android/gm/preference/q;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/q;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/gm/preference/t;->bbY:Lcom/google/android/gm/preference/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(I)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/gm/preference/t;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->d(Lcom/google/android/gm/preference/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/preference/u;

    invoke-direct {v1, p0}, Lcom/google/android/gm/preference/u;-><init>(Lcom/google/android/gm/preference/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method
