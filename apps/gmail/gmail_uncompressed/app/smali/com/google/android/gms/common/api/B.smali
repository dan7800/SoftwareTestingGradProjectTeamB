.class final Lcom/google/android/gms/common/api/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/q;


# instance fields
.field final synthetic bDd:Lcom/google/android/gms/common/api/x;

.field final synthetic bDe:Lcom/google/android/gms/common/api/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/api/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    iput-object p2, p0, Lcom/google/android/gms/common/api/B;->bDe:Lcom/google/android/gms/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 2

    const v1, 0x7fffffff

    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->i(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDe:Lcom/google/android/gms/common/api/g;

    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->j(Lcom/google/android/gms/common/api/x;)I

    move-result v0

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    iget-object v1, p0, Lcom/google/android/gms/common/api/B;->bDe:Lcom/google/android/gms/common/api/g;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/x;->c(Lcom/google/android/gms/common/api/x;I)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->d(Lcom/google/android/gms/common/api/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/B;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
