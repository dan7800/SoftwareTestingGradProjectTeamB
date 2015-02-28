.class final Lcom/google/android/gms/internal/bS;
.super Lcom/google/android/gms/common/internal/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/bI;",
        ">.com/google/android/gms/common/internal/h<",
        "Lcom/google/android/gms/people/y;",
        ">;"
    }
.end annotation


# instance fields
.field private final bVQ:Ljava/lang/String;

.field final synthetic bWh:Lcom/google/android/gms/internal/bO;

.field private final bWk:I

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/people/y;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bS;->bWh:Lcom/google/android/gms/internal/bO;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bS;->mAccount:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bS;->bVQ:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/bS;->bWk:I

    return-void
.end method


# virtual methods
.method protected final Lf()V
    .locals 0

    return-void
.end method

.method protected final synthetic ac(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/people/y;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->bWh:Lcom/google/android/gms/internal/bO;

    invoke-static {v0}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/internal/bO;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->bWh:Lcom/google/android/gms/internal/bO;

    invoke-static {v0}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/internal/bO;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->mAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->bVQ:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/bS;->bWk:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/people/y;->ei(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
