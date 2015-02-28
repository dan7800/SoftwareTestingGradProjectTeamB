.class public final Lcom/android/mail/ui/Q;
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
        "Lcom/android/mail/c/b",
        "<",
        "Lcom/android/mail/providers/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final aFe:Lcom/android/mail/ui/R;

.field private final azF:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/ui/R;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/mail/ui/Q;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/mail/ui/Q;->azF:Landroid/net/Uri;

    .line 34
    iput-object p3, p0, Lcom/android/mail/ui/Q;->aFe:Lcom/android/mail/ui/R;

    .line 35
    return-void
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
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/android/mail/providers/Account;->aqh:Lcom/android/mail/c/a;

    .line 41
    new-instance v2, Lcom/android/mail/c/c;

    iget-object v3, p0, Lcom/android/mail/ui/Q;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mail/ui/Q;->azF:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    return-object v2
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 20
    check-cast p2, Lcom/android/mail/c/b;

    iget-object v0, p0, Lcom/android/mail/ui/Q;->aFe:Lcom/android/mail/ui/R;

    invoke-interface {v0, p2}, Lcom/android/mail/ui/R;->c(Lcom/android/mail/c/b;)V

    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method
