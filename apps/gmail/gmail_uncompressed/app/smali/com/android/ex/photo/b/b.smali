.class final Lcom/android/ex/photo/b/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic aiu:Lcom/android/ex/photo/b/a;


# direct methods
.method private constructor <init>(Lcom/android/ex/photo/b/a;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/photo/b/a;B)V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/android/ex/photo/b/b;-><init>(Lcom/android/ex/photo/b/a;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 593
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 595
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    iput-boolean v3, v0, Lcom/android/ex/photo/b/a;->ait:Z

    .line 610
    :cond_1
    :goto_0
    return-void

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    iget-boolean v0, v0, Lcom/android/ex/photo/b/a;->ait:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    invoke-virtual {v0}, Lcom/android/ex/photo/b/a;->oa()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    iget-boolean v0, v0, Lcom/android/ex/photo/b/a;->ais:Z

    if-nez v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    invoke-virtual {v0}, Lcom/android/ex/photo/b/a;->h()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/K;->a(ILandroid/support/v4/app/L;)Landroid/support/v4/content/j;

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    invoke-virtual {v0}, Lcom/android/ex/photo/b/a;->h()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/K;->a(ILandroid/support/v4/app/L;)Landroid/support/v4/content/j;

    .line 607
    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/ex/photo/b/a;->ait:Z

    .line 608
    iget-object v0, p0, Lcom/android/ex/photo/b/b;->aiu:Lcom/android/ex/photo/b/a;

    iget-object v0, v0, Lcom/android/ex/photo/b/a;->ain:Lcom/android/ex/photo/views/e;

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/views/e;->setVisibility(I)V

    goto :goto_0
.end method
