.class final Lcom/google/android/gm/provider/W;
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
.field final synthetic bhc:Lcom/google/android/gm/provider/V;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/V;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-static {v0}, Lcom/google/android/gm/provider/V;->a(Lcom/google/android/gm/provider/V;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-static {v1}, Lcom/google/android/gm/provider/V;->b(Lcom/google/android/gm/provider/V;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-static {v2}, Lcom/google/android/gm/provider/V;->c(Lcom/google/android/gm/provider/V;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 262
    check-cast p1, Lcom/google/android/gm/provider/U;

    iget-object v0, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/V;->a(Lcom/google/android/gm/provider/V;Lcom/google/android/gm/provider/U;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-static {v0}, Lcom/google/android/gm/provider/V;->d(Lcom/google/android/gm/provider/V;)Lcom/google/android/gm/provider/W;

    iget-object v0, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-static {v0}, Lcom/google/android/gm/provider/V;->e(Lcom/google/android/gm/provider/V;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/W;->bhc:Lcom/google/android/gm/provider/V;

    invoke-static {v0}, Lcom/google/android/gm/provider/V;->f(Lcom/google/android/gm/provider/V;)V

    :cond_0
    return-void
.end method
