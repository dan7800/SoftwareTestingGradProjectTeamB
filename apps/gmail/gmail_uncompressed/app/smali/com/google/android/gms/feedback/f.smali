.class public final Lcom/google/android/gms/feedback/f;
.super Ljava/lang/Object;


# instance fields
.field private bKa:Landroid/os/Bundle;

.field private bKf:Ljava/lang/String;

.field private bKj:Landroid/graphics/Bitmap;

.field private bKk:Ljava/lang/String;

.field private bKl:Ljava/lang/String;

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/feedback/f;->bKa:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final Mn()Lcom/google/android/gms/feedback/e;
    .locals 2

    new-instance v0, Lcom/google/android/gms/feedback/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/feedback/e;-><init>(B)V

    iget-object v1, p0, Lcom/google/android/gms/feedback/f;->bKj:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/e;->a(Lcom/google/android/gms/feedback/e;Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/f;->bKk:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/e;->a(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/f;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/e;->b(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/f;->bKa:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/e;->a(Lcom/google/android/gms/feedback/e;Landroid/os/Bundle;)Lcom/google/android/gms/feedback/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/f;->bKl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/e;->c(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/f;->bKf:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/e;->d(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/f;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/f;->bKj:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final y(Landroid/os/Bundle;)Lcom/google/android/gms/feedback/f;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/feedback/f;->bKa:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method
