.class final Lcom/google/android/gm/provider/uiprovider/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bok:Lcom/google/android/gm/provider/uiprovider/b;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/uiprovider/b;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/b;->a(Lcom/google/android/gm/provider/uiprovider/b;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/b;->b(Lcom/google/android/gm/provider/uiprovider/b;)Lcom/google/android/gm/provider/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    new-instance v1, Lcom/google/android/gm/provider/k;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v2}, Lcom/google/android/gm/provider/uiprovider/b;->c(Lcom/google/android/gm/provider/uiprovider/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v3}, Lcom/google/android/gm/provider/uiprovider/b;->d(Lcom/google/android/gm/provider/uiprovider/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v4}, Lcom/google/android/gm/provider/uiprovider/b;->e(Lcom/google/android/gm/provider/uiprovider/b;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v6}, Lcom/google/android/gm/provider/uiprovider/b;->f(Lcom/google/android/gm/provider/uiprovider/b;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/k;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/gm/provider/MailEngine;)V

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/uiprovider/b;->a(Lcom/google/android/gm/provider/uiprovider/b;Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/k;

    .line 131
    :cond_0
    invoke-static {}, Lcom/google/android/gm/provider/uiprovider/b;->HX()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starting attachment loader for conversation %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v4}, Lcom/google/android/gm/provider/uiprovider/b;->e(Lcom/google/android/gm/provider/uiprovider/b;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/b;->b(Lcom/google/android/gm/provider/uiprovider/b;)Lcom/google/android/gm/provider/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/c;->bok:Lcom/google/android/gm/provider/uiprovider/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/k;->a(Lcom/google/android/gm/provider/m;)V

    .line 134
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method
