.class final Lcom/google/android/gms/b/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bBB:Lcom/google/android/gms/b/g;

.field private final bBC:Lcom/android/ex/chips/r;

.field final synthetic bBD:Lcom/google/android/gms/b/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/b;Lcom/google/android/gms/b/g;Lcom/android/ex/chips/r;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/gms/b/c;->bBD:Lcom/google/android/gms/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/google/android/gms/b/c;->bBB:Lcom/google/android/gms/b/g;

    .line 220
    iput-object p3, p0, Lcom/google/android/gms/b/c;->bBC:Lcom/android/ex/chips/r;

    .line 221
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBD:Lcom/google/android/gms/b/b;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/c;->bBB:Lcom/google/android/gms/b/g;

    invoke-static {v0, v1}, Lcom/google/android/gms/b/b;->b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/g;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 213
    check-cast p1, [B

    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBD:Lcom/google/android/gms/b/b;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->b(Lcom/google/android/gms/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBB:Lcom/google/android/gms/b/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/g;->b([B)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBD:Lcom/google/android/gms/b/b;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->c(Lcom/google/android/gms/b/b;)Landroid/support/v4/f/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/c;->bBB:Lcom/google/android/gms/b/g;

    invoke-virtual {v1}, Lcom/google/android/gms/b/g;->Ki()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/f/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBC:Lcom/android/ex/chips/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBC:Lcom/android/ex/chips/r;

    invoke-interface {v0}, Lcom/android/ex/chips/r;->mt()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBC:Lcom/android/ex/chips/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/c;->bBC:Lcom/android/ex/chips/r;

    invoke-interface {v0}, Lcom/android/ex/chips/r;->mu()V

    goto :goto_0
.end method
