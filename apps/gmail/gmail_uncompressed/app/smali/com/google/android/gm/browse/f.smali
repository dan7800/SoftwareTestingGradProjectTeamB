.class public final Lcom/google/android/gm/browse/f;
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
        "Lcom/google/android/gm/browse/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final bab:[J


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gm/browse/f;->bab:[J

    return-void

    :array_0
    .array-data 8
        0x64
        0xfa
        0x1f4
        0x3e8
        0x7d0
        0xbb8
        0x1388
        0x2710
        0x4e20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/browse/f;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Attachment;)Lcom/google/android/gm/browse/f;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/gm/browse/f;

    invoke-direct {v0}, Lcom/google/android/gm/browse/f;-><init>()V

    .line 94
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 95
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string v2, "attachment"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/gm/browse/f;->setArguments(Landroid/os/Bundle;)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/browse/f;->setCancelable(Z)V

    .line 100
    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 105
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/gm/browse/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 107
    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/browse/f;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gm/browse/f;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/browse/f;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/browse/f;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/browse/f;->getArguments()Landroid/os/Bundle;

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
            "Lcom/google/android/gm/browse/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/gm/browse/h;

    invoke-virtual {p0}, Lcom/google/android/gm/browse/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gm/browse/h;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 78
    check-cast p2, Lcom/google/android/gm/browse/i;

    iget-object v0, p0, Lcom/google/android/gm/browse/f;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/browse/g;

    const-string v2, "dismissSaveToDrive"

    invoke-direct {v1, p0, v2, p0}, Lcom/google/android/gm/browse/g;-><init>(Lcom/google/android/gm/browse/f;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p2, Lcom/google/android/gm/browse/i;->bad:Lcom/google/api/a/a/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/google/android/gm/browse/i;->bae:J

    sub-long v4, v0, v2

    sget-object v0, Lcom/google/android/gm/browse/f;->bab:[J

    invoke-static {v4, v5, v0}, Lcom/android/mail/utils/ag;->a(J[J)J

    move-result-wide v8

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "save_to_drive"

    if-eqz v6, :cond_1

    const-string v2, "success"

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gm/browse/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v6, :cond_2

    const v0, 0x7f0903a8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gm/browse/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    const-string v2, "fail"

    goto :goto_1

    :cond_2
    const v0, 0x7f0903a7

    goto :goto_2
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/browse/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method
