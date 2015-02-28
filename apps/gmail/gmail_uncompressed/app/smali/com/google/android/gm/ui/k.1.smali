.class public final Lcom/google/android/gm/ui/k;
.super Lcom/android/mail/ui/ar;
.source "SourceFile"


# instance fields
.field private final Tz:Ljava/lang/String;

.field private final bbm:Lcom/google/android/gms/common/api/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ar;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/google/android/gm/ui/k;->bbm:Lcom/google/android/gms/common/api/n;

    .line 23
    iput-object p3, p0, Lcom/google/android/gm/ui/k;->Tz:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gm/ui/F;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/k;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/k;->bbm:Lcom/google/android/gms/common/api/n;

    iget-object v3, p0, Lcom/google/android/gm/ui/k;->Tz:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/k;->xW()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gm/ui/F;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method
