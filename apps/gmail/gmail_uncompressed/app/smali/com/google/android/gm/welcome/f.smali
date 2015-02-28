.class final Lcom/google/android/gm/welcome/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/gm/welcome/f;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/welcome/ChangeAddressActivity;Lcom/google/android/gm/welcome/d;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/f;-><init>(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V

    return-void
.end method


# virtual methods
.method public final notifyAddressChangeCancelled()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/gm/welcome/f;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->b(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V

    .line 326
    const-string v0, "WelcomeTour"

    const-string v1, "Account Central reported address change cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 327
    return-void
.end method

.method public final notifyAddressChangedSuccess(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gm/welcome/f;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v0, p1}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->b(Lcom/google/android/gm/welcome/ChangeAddressActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    const-string v0, "WelcomeTour"

    const-string v1, "Successful address change reported by Account Central: %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/welcome/f;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v4}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->e(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/welcome/f;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v4}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->h(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 318
    new-instance v0, Lcom/google/android/gm/welcome/g;

    iget-object v1, p0, Lcom/google/android/gm/welcome/f;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/welcome/f;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v2}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->e(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/welcome/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method
