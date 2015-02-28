.class public final Lcom/google/android/gm/drive/a;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/drive/d;",
        ">;"
    }
.end annotation


# instance fields
.field private awy:Z

.field private baj:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/a;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lcom/google/android/gm/drive/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/android/gm/drive/a;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/gm/drive/a;

    invoke-direct {v0}, Lcom/google/android/gm/drive/a;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 47
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "recipients"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    const-string v2, "fileIds"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    const-string v2, "showToast"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gm/drive/a;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/drive/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gm/drive/a;->awy:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gm/drive/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/gm/drive/a;->baj:I

    return v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 60
    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/google/android/gm/drive/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gm/drive/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    const-string v2, "fileIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/drive/a;->baj:I

    .line 64
    const-string v2, "showToast"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gm/drive/a;->awy:Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gm/drive/a;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/drive/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/drive/a;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/drive/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/drive/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/gm/drive/c;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gm/drive/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 23
    check-cast p2, Lcom/google/android/gm/drive/d;

    iget-object v0, p0, Lcom/google/android/gm/drive/a;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/drive/b;

    const-string v2, "dismissCheckPermissions"

    invoke-direct {v1, p0, v2, p0, p2}, Lcom/google/android/gm/drive/b;-><init>(Lcom/google/android/gm/drive/a;Ljava/lang/String;Landroid/app/Fragment;Lcom/google/android/gm/drive/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/drive/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    return-void
.end method
