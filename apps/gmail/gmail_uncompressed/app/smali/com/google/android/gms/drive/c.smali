.class final Lcom/google/android/gms/drive/c;
.super Lcom/google/android/gms/drive/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/d",
        "<",
        "Lcom/google/android/gms/drive/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)Landroid/os/Bundle;
    .locals 1

    check-cast p1, Lcom/google/android/gms/drive/e;

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/e;->LT()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
