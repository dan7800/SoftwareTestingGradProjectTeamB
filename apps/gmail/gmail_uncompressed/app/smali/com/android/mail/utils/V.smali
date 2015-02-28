.class public final Lcom/android/mail/utils/V;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final aQr:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final aQs:Lcom/android/mail/utils/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/W",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final aQt:I


# direct methods
.method public constructor <init>(Lcom/android/mail/utils/W;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/utils/W",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/V;->aQr:Ljava/util/Deque;

    .line 46
    iput-object p1, p0, Lcom/android/mail/utils/V;->aQs:Lcom/android/mail/utils/W;

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mail/utils/V;->aQt:I

    .line 48
    return-void
.end method


# virtual methods
.method public final V(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/mail/utils/V;->aQr:Ljava/util/Deque;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/utils/V;->aQr:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v2, p0, Lcom/android/mail/utils/V;->aQt:I

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/mail/utils/V;->aQs:Lcom/android/mail/utils/W;

    invoke-interface {v0, p1}, Lcom/android/mail/utils/W;->Q(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/mail/utils/V;->aQr:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/mail/utils/V;->aQr:Ljava/util/Deque;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/utils/V;->aQr:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mail/utils/V;->aQs:Lcom/android/mail/utils/W;

    invoke-interface {v0}, Lcom/android/mail/utils/W;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
