.class public Lcom/google/android/gm/ao;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private aYR:Lcom/google/android/gm/provider/U;

.field private mAccount:Ljava/lang/String;

.field private yF:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ao;->yF:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ao;Landroid/database/DataSetObserver;)Landroid/database/DataSetObserver;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/gm/ao;->yF:Landroid/database/DataSetObserver;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gm/ao;Lcom/google/android/gm/provider/U;)Lcom/google/android/gm/provider/U;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/gm/ao;->aYR:Lcom/google/android/gm/provider/U;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gm/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gm/ao;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/ao;)Lcom/google/android/gm/provider/U;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gm/ao;->aYR:Lcom/google/android/gm/provider/U;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/ao;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gm/ao;->aYR:Lcom/google/android/gm/provider/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ao;->yF:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ao;->aYR:Lcom/google/android/gm/provider/U;

    iget-object v1, p0, Lcom/google/android/gm/ao;->yF:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/U;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ao;->yF:Landroid/database/DataSetObserver;

    iget-object v0, p0, Lcom/google/android/gm/ao;->aYR:Lcom/google/android/gm/provider/U;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/U;->Fe()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ao;->stopSelf()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gm/ao;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gm/ar;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ar;-><init>(Lcom/google/android/gm/ao;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ar;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic e(Lcom/google/android/gm/ao;)Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gm/ao;->yF:Landroid/database/DataSetObserver;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 35
    const-string v0, "account-name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ao;->mAccount:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ao;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return v3

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/ay;->bi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gm/ao;->stopSelf()V

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcom/google/android/gm/ap;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ap;-><init>(Lcom/google/android/gm/ao;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ap;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
