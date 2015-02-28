.class public final Lcom/google/android/gms/internal/cK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/d;
.implements Lcom/google/android/gms/common/e;


# instance fields
.field private final bXk:Lcom/google/android/gms/f/b;

.field private bXl:Lcom/google/android/gms/internal/cM;

.field private bXm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/f/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cK;->bXk:Lcom/google/android/gms/f/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cK;->bXl:Lcom/google/android/gms/internal/cM;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cK;->bXm:Z

    return-void
.end method


# virtual methods
.method public final Jf()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXl:Lcom/google/android/gms/internal/cM;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cM;->cj(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cK;->bXm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXk:Lcom/google/android/gms/f/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXk:Lcom/google/android/gms/f/b;

    invoke-interface {v0}, Lcom/google/android/gms/f/b;->Df()V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/cK;->bXm:Z

    return-void
.end method

.method public final Sd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cK;->bXm:Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXl:Lcom/google/android/gms/internal/cM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cM;->cj(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cK;->bXm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXk:Lcom/google/android/gms/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->Kj()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXk:Lcom/google/android/gms/f/b;

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->Kl()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/f/b;->c(Landroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cK;->bXm:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXk:Lcom/google/android/gms/f/b;

    invoke-interface {v0}, Lcom/google/android/gms/f/b;->De()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/cM;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cK;->bXl:Lcom/google/android/gms/internal/cM;

    return-void
.end method

.method public final onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cK;->bXl:Lcom/google/android/gms/internal/cM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cM;->cj(Z)V

    return-void
.end method
