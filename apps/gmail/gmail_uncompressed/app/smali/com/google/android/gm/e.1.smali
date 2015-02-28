.class final Lcom/google/android/gm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aWI:Lcom/google/android/gm/h;


# direct methods
.method constructor <init>(Lcom/google/android/gm/h;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/gm/e;->aWI:Lcom/google/android/gm/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 350
    .line 352
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 354
    const/4 v0, 0x1

    .line 366
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/e;->aWI:Lcom/google/android/gm/h;

    invoke-interface {v1, v0}, Lcom/google/android/gm/h;->bN(Z)V

    .line 367
    return-void

    .line 356
    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "promptForCredentials(): User Canceled"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 359
    :catch_1
    move-exception v1

    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "promptForCredentials(): IO Error"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 363
    :catch_2
    move-exception v1

    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "promptForCredentials(): Not Authenticated"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
