.class final Lcom/google/android/gm/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aZa:Ljava/lang/Runnable;

.field final synthetic aZb:Lcom/google/android/gm/aw;


# direct methods
.method constructor <init>(Lcom/google/android/gm/aw;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/gm/ax;->aZb:Lcom/google/android/gm/aw;

    iput-object p2, p0, Lcom/google/android/gm/ax;->aZa:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/ax;->aZb:Lcom/google/android/gm/aw;

    invoke-static {v0}, Lcom/google/android/gm/aw;->a(Lcom/google/android/gm/aw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ax;->aZa:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 37
    return-void
.end method
