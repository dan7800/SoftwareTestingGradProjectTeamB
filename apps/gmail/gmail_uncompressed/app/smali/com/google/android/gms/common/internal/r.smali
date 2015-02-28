.class final Lcom/google/android/gms/common/internal/r;
.super Ljava/lang/Object;


# instance fields
.field private ao:I

.field private final bFp:Ljava/lang/String;

.field private final bFq:Lcom/google/android/gms/common/internal/s;

.field private final bFr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/common/internal/f",
            "<*>.com/google/android/gms/common/internal/k;>;"
        }
    .end annotation
.end field

.field private bFs:Z

.field private bFt:Landroid/os/IBinder;

.field private bFu:Landroid/content/ComponentName;

.field final synthetic bFv:Lcom/google/android/gms/common/internal/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/q;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/r;->bFv:Lcom/google/android/gms/common/internal/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/r;->bFp:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/internal/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/s;-><init>(Lcom/google/android/gms/common/internal/r;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFq:Lcom/google/android/gms/common/internal/s;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFr:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/r;->ao:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/r;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/r;->ao:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/r;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/r;->bFu:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/r;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/r;->bFt:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/r;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFr:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final Lj()Lcom/google/android/gms/common/internal/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFq:Lcom/google/android/gms/common/internal/s;

    return-object v0
.end method

.method public final Lk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFp:Ljava/lang/String;

    return-object v0
.end method

.method public final Ll()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFr:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/f",
            "<*>.com/google/android/gms/common/internal/k;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFr:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/internal/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/f",
            "<*>.com/google/android/gms/common/internal/k;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFr:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/internal/k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/f",
            "<*>.com/google/android/gms/common/internal/k;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFr:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final cd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/r;->bFs:Z

    return-void
.end method

.method public final getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFt:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->bFu:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/r;->ao:I

    return v0
.end method

.method public final isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/r;->bFs:Z

    return v0
.end method
