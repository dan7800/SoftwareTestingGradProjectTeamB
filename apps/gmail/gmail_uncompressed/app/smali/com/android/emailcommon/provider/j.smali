.class final Lcom/android/emailcommon/provider/j;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field Zg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent;)V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 342
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/j;->Zg:Ljava/lang/ref/WeakReference;

    .line 343
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/emailcommon/provider/j;->Zg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent;

    .line 353
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent;->lH()V

    .line 356
    :cond_0
    return-void
.end method
