.class final Lcom/google/android/gm/welcome/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/R;


# instance fields
.field final synthetic aWH:Landroid/app/Activity;

.field final synthetic bsK:Lcom/google/android/gm/welcome/x;

.field final synthetic bsL:Landroid/app/LoaderManager;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/welcome/x;Landroid/app/LoaderManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gm/welcome/w;->aWH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gm/welcome/w;->bsK:Lcom/google/android/gm/welcome/x;

    iput-object p3, p0, Lcom/google/android/gm/welcome/w;->bsL:Landroid/app/LoaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/c/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/gm/welcome/v;

    iget-object v1, p0, Lcom/google/android/gm/welcome/w;->aWH:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/welcome/w;->bsK:Lcom/google/android/gm/welcome/x;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gm/welcome/v;-><init>(Landroid/app/Activity;Lcom/google/android/gm/welcome/x;Lcom/android/mail/c/b;)V

    .line 79
    const-string v1, "WelcomeTour"

    const-string v2, "Restarting welcome loaders"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    iget-object v1, p0, Lcom/google/android/gm/welcome/w;->bsL:Landroid/app/LoaderManager;

    const/16 v2, 0x14

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 84
    return-void
.end method
