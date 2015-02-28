.class public final Lcom/google/android/gms/common/api/G;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/support/v4/app/L;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Landroid/support/v4/app/L",
        "<",
        "Lcom/google/android/gms/common/a;",
        ">;"
    }
.end annotation


# instance fields
.field private bDg:Z

.field private bDh:I

.field private bDi:Lcom/google/android/gms/common/a;

.field private final bDj:Landroid/os/Handler;

.field private final bDk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/common/api/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/G;->bDj:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    return-void
.end method

.method private KF()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/G;->bDg:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    iput-object v4, p0, Lcom/google/android/gms/common/api/G;->bDi:Lcom/google/android/gms/common/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->h()Landroid/support/v4/app/K;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/G;->ew(I)Lcom/google/android/gms/common/api/H;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/H;->KG()V

    :cond_0
    invoke-virtual {v1, v2, v4, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ILcom/google/android/gms/common/a;)V
    .locals 2

    const-string v0, "GmsSupportLifecycleFragment"

    const-string v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/I;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->h()Landroid/support/v4/app/K;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/K;->destroyLoader(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/I;->bDo:Lcom/google/android/gms/common/api/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/google/android/gms/common/api/q;->a(Lcom/google/android/gms/common/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/G;->KF()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/G;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/G;->KF()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/G;ILcom/google/android/gms/common/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/G;->a(ILcom/google/android/gms/common/a;)V

    return-void
.end method

.method public static b(Landroid/support/v4/app/k;)Lcom/google/android/gms/common/api/G;
    .locals 4

    const-string v0, "Must be called from main thread of process"

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/k;->F()Landroid/support/v4/app/p;

    move-result-object v1

    :try_start_0
    const-string v0, "GmsSupportLifecycleFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/G;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/G;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/G;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/G;-><init>()V

    invoke-virtual {v1}, Landroid/support/v4/app/p;->H()Landroid/support/v4/app/z;

    move-result-object v2

    const-string v3, "GmsSupportLifecycleFragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/z;->commit()I

    invoke-virtual {v1}, Landroid/support/v4/app/p;->executePendingTransactions()Z

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ew(I)Lcom/google/android/gms/common/api/H;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->h()Landroid/support/v4/app/K;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/K;->g(I)Landroid/support/v4/content/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/H;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown loader in SupportLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/j",
            "<",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/common/api/H;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->f()Landroid/support/v4/app/k;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/I;

    iget-object v0, v0, Lcom/google/android/gms/common/api/I;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/H;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;)V

    return-object v1
.end method

.method public final a(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/G;->KF()V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->f()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/f;->cf(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :pswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDi:Lcom/google/android/gms/common/a;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/G;->a(ILcom/google/android/gms/common/a;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/q;)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already managing a GoogleApiClient with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/I;

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/common/api/I;-><init>(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/q;B)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->f()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->h()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/content/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/j",
            "<",
            "Lcom/google/android/gms/common/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/content/j;->getId()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/G;->KF()V

    :cond_0
    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/j;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/google/android/gms/common/a;

    invoke-virtual {p2}, Lcom/google/android/gms/common/a;->Kk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/content/j;->getId()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/G;->KF()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/content/j;->getId()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/G;->bDg:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/G;->bDg:Z

    iput v0, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    iput-object p2, p0, Lcom/google/android/gms/common/api/G;->bDi:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDj:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/api/J;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/common/api/J;-><init>(Lcom/google/android/gms/common/api/G;ILcom/google/android/gms/common/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final ev(I)Lcom/google/android/gms/common/api/n;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->f()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/G;->ew(I)Lcom/google/android/gms/common/api/H;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/G;->ew(I)Lcom/google/android/gms/common/api/H;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/I;

    iget-object v0, v0, Lcom/google/android/gms/common/api/I;->bDl:Lcom/google/android/gms/common/api/n;

    iget-object v3, v3, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->h()Landroid/support/v4/app/K;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/support/v4/app/K;->a(ILandroid/support/v4/app/L;)Landroid/support/v4/content/j;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->h()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDi:Lcom/google/android/gms/common/a;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/G;->a(ILcom/google/android/gms/common/a;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/G;->bDg:Z

    const-string v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    iget v0, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    if-ltz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/a;

    const-string v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/G;->bDi:Lcom/google/android/gms/common/a;

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "resolving_error"

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/G;->bDg:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    if-ltz v0, :cond_0

    const-string v0, "failed_client_id"

    iget v1, p0, Lcom/google/android/gms/common/api/G;->bDh:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_status"

    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDi:Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_resolution"

    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDi:Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->Kl()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/G;->bDg:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/G;->h()Landroid/support/v4/app/K;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/G;->bDk:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
