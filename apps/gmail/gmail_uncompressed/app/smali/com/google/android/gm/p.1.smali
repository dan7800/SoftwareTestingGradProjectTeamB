.class final Lcom/google/android/gm/p;
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
.field final synthetic aXa:Lcom/google/android/gm/o;


# direct methods
.method constructor <init>(Lcom/google/android/gm/o;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    iget-object v0, v0, Lcom/google/android/gm/o;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v1, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    invoke-static {v1}, Lcom/google/android/gm/o;->a(Lcom/google/android/gm/o;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->y(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    iget-object v0, v0, Lcom/google/android/gm/o;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v1, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    invoke-static {v1}, Lcom/google/android/gm/o;->b(Lcom/google/android/gm/o;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->z(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    iget-object v0, v0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    iget-object v1, v1, Lcom/google/android/gm/o;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v2, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    iget-object v2, v2, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v2}, Lcom/google/android/gm/Z;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    iget-object v0, v0, Lcom/google/android/gm/o;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/p;->aXa:Lcom/google/android/gm/o;

    iget-object v1, v1, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/preference/A;->O(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
