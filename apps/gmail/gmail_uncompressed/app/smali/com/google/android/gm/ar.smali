.class final Lcom/google/android/gm/ar;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aYS:Lcom/google/android/gm/ao;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ao;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/gm/ar;->aYS:Lcom/google/android/gm/ao;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/ar;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ay;->bg(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/ar;->aYS:Lcom/google/android/gm/ao;

    invoke-static {v0}, Lcom/google/android/gm/ao;->c(Lcom/google/android/gm/ao;)V

    return-void
.end method
