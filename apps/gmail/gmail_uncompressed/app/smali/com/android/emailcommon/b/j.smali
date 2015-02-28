.class public final Lcom/android/emailcommon/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final abt:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/emailcommon/b/g",
            "<***>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/android/emailcommon/b/j;Lcom/android/emailcommon/b/g;)V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/emailcommon/b/j;->abt:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/b/j;->abt:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/android/emailcommon/b/j;Lcom/android/emailcommon/b/g;)V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/emailcommon/b/j;->abt:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/b/j;->abt:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
