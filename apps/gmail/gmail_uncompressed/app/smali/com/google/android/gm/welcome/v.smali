.class public final Lcom/google/android/gm/welcome/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/welcome/WelcomeTourState;",
        ">;"
    }
.end annotation


# instance fields
.field private final bsI:Lcom/google/android/gm/welcome/x;

.field private final bsJ:Lcom/android/mail/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final pe:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/welcome/x;Lcom/android/mail/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gm/welcome/x;",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gm/welcome/v;->pe:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/google/android/gm/welcome/v;->bsI:Lcom/google/android/gm/welcome/x;

    .line 31
    iput-object p3, p0, Lcom/google/android/gm/welcome/v;->bsJ:Lcom/android/mail/c/b;

    .line 32
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/google/android/gm/welcome/x;)Lcom/android/mail/ui/Q;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/gm/welcome/w;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gm/welcome/w;-><init>(Landroid/app/Activity;Lcom/google/android/gm/welcome/x;Landroid/app/LoaderManager;)V

    .line 86
    new-instance v1, Lcom/android/mail/ui/Q;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mail/ui/Q;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/ui/R;)V

    return-object v1
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 42
    const-string v0, "WelcomeTour"

    const-string v1, "Got an id  (%d) that I cannot create"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    new-instance v0, Lcom/google/android/gm/welcome/u;

    iget-object v1, p0, Lcom/google/android/gm/welcome/v;->pe:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/welcome/v;->bsJ:Lcom/android/mail/c/b;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/welcome/u;-><init>(Landroid/content/Context;Lcom/android/mail/c/b;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 17
    check-cast p2, Lcom/google/android/gm/welcome/WelcomeTourState;

    const-string v0, "WelcomeTour"

    const-string v1, "WelcomeTourState finished loading"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/welcome/v;->bsI:Lcom/google/android/gm/welcome/x;

    invoke-interface {v0, p2}, Lcom/google/android/gm/welcome/x;->a(Lcom/google/android/gm/welcome/WelcomeTourState;)V

    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method
