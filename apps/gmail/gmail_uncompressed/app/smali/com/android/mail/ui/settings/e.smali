.class final Lcom/android/mail/ui/settings/e;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aOU:Lcom/android/mail/ui/settings/d;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/settings/d;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/mail/ui/settings/e;->aOU:Lcom/android/mail/ui/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/settings/d;B)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mail/ui/settings/e;-><init>(Lcom/android/mail/ui/settings/d;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 67
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/mail/ui/settings/e;->aOU:Lcom/android/mail/ui/settings/d;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mail/ui/settings/e;->aOU:Lcom/android/mail/ui/settings/d;

    invoke-static {v0, p2}, Lcom/android/mail/ui/settings/d;->a(Lcom/android/mail/ui/settings/d;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mail/ui/settings/e;->aOU:Lcom/android/mail/ui/settings/d;

    invoke-virtual {v0}, Lcom/android/mail/ui/settings/d;->invalidateHeaders()V

    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mail/ui/settings/e;->aOU:Lcom/android/mail/ui/settings/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/ui/settings/d;->a(Lcom/android/mail/ui/settings/d;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 81
    iget-object v0, p0, Lcom/android/mail/ui/settings/e;->aOU:Lcom/android/mail/ui/settings/d;

    invoke-virtual {v0}, Lcom/android/mail/ui/settings/d;->invalidateHeaders()V

    .line 82
    return-void
.end method
