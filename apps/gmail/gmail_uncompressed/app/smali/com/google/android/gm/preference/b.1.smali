.class final Lcom/google/android/gm/preference/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gm/provider/U;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bbt:Lcom/google/android/gm/preference/a;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/a;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/gm/preference/b;->bbt:Lcom/google/android/gm/preference/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/gm/preference/b;->bbt:Lcom/google/android/gm/preference/a;

    invoke-virtual {v0}, Lcom/google/android/gm/preference/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/b;->bbt:Lcom/google/android/gm/preference/a;

    invoke-static {v1}, Lcom/google/android/gm/preference/a;->a(Lcom/google/android/gm/preference/a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 346
    check-cast p1, Lcom/google/android/gm/provider/U;

    iget-object v0, p0, Lcom/google/android/gm/preference/b;->bbt:Lcom/google/android/gm/preference/a;

    invoke-static {v0, p1}, Lcom/google/android/gm/preference/a;->a(Lcom/google/android/gm/preference/a;Lcom/google/android/gm/provider/U;)V

    return-void
.end method
