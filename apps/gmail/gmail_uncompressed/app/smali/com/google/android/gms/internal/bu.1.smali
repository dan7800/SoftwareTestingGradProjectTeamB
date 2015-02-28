.class final Lcom/google/android/gms/internal/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/e/d;


# instance fields
.field private final bHX:Lcom/google/android/gms/common/api/Status;

.field private final bVP:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/bu;->bHX:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/bu;->bVP:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bu;->bHX:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final RQ()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bu;->bVP:Landroid/content/Intent;

    return-object v0
.end method
