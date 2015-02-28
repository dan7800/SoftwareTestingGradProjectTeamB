.class final Lcom/android/ex/chips/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic acm:Lcom/android/ex/chips/a;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/a;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/ex/chips/d;->acm:Lcom/android/ex/chips/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/a;B)V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/android/ex/chips/d;-><init>(Lcom/android/ex/chips/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/ex/chips/d;->acm:Lcom/android/ex/chips/a;

    invoke-static {v0}, Lcom/android/ex/chips/a;->c(Lcom/android/ex/chips/a;)I

    move-result v0

    if-lez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/ex/chips/d;->acm:Lcom/android/ex/chips/a;

    iget-object v1, p0, Lcom/android/ex/chips/d;->acm:Lcom/android/ex/chips/a;

    invoke-virtual {v1}, Lcom/android/ex/chips/a;->mo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/a;->h(Ljava/util/List;)V

    .line 506
    :cond_0
    return-void
.end method

.method public final mv()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 509
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/ex/chips/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/ex/chips/d;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 511
    return-void
.end method

.method public final mw()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/d;->removeMessages(I)V

    .line 515
    return-void
.end method
