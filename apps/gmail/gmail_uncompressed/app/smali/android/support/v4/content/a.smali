.class public abstract Landroid/support/v4/content/a;
.super Landroid/support/v4/content/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/j",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile eE:Landroid/support/v4/content/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/a",
            "<TD;>.android/support/v4/content/b;"
        }
    .end annotation
.end field

.field volatile eF:Landroid/support/v4/content/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/a",
            "<TD;>.android/support/v4/content/b;"
        }
    .end annotation
.end field

.field eG:J

.field eH:J

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v4/content/j;-><init>(Landroid/content/Context;)V

    .line 88
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/content/a;->eH:J

    .line 93
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v4/content/b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/a",
            "<TD;>.android/support/v4/content/b;TD;)V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0, p2}, Landroid/support/v4/content/a;->onCanceled(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    if-ne v0, p1, :cond_1

    .line 203
    iget-boolean v0, p0, Landroid/support/v4/content/j;->eX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/j;->eW:Z

    .line 204
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/a;->eH:J

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    .line 206
    invoke-virtual {p0}, Landroid/support/v4/content/a;->at()V

    .line 208
    :cond_1
    return-void
.end method

.method final at()V
    .locals 6

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iget-boolean v0, v0, Landroid/support/v4/content/b;->eI:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/content/b;->eI:Z

    .line 180
    iget-object v0, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    iget-wide v0, p0, Landroid/support/v4/content/a;->eG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    iget-wide v2, p0, Landroid/support/v4/content/a;->eH:J

    iget-wide v4, p0, Landroid/support/v4/content/a;->eG:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 189
    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/content/b;->eI:Z

    .line 190
    iget-object v0, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iget-wide v2, p0, Landroid/support/v4/content/a;->eH:J

    iget-wide v4, p0, Landroid/support/v4/content/a;->eG:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/b;->a(Ljava/util/concurrent/Executor;)Landroid/support/v4/content/ModernAsyncTask;

    goto :goto_0
.end method

.method public final cancelLoad()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iget-boolean v1, v1, Landroid/support/v4/content/b;->eI:Z

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iput-boolean v0, v1, Landroid/support/v4/content/b;->eI:Z

    .line 144
    iget-object v1, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    iput-object v3, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    .line 166
    :cond_1
    :goto_0
    return v0

    .line 148
    :cond_2
    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iget-boolean v1, v1, Landroid/support/v4/content/b;->eI:Z

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iput-boolean v0, v1, Landroid/support/v4/content/b;->eI:Z

    .line 153
    iget-object v1, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-object v3, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    invoke-virtual {v0}, Landroid/support/v4/content/b;->aw()Z

    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    iget-object v1, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iput-object v1, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    .line 162
    :cond_4
    iput-object v3, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/j;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 271
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    iget-boolean v0, v0, Landroid/support/v4/content/b;->eI:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 275
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/a;->eF:Landroid/support/v4/content/b;

    iget-boolean v0, v0, Landroid/support/v4/content/b;->eI:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 277
    :cond_1
    iget-wide v0, p0, Landroid/support/v4/content/a;->eG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide v0, p0, Landroid/support/v4/content/a;->eG:J

    invoke-static {v0, v1, p3}, Landroid/support/v4/f/p;->b(JLjava/io/PrintWriter;)V

    .line 280
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-wide v0, p0, Landroid/support/v4/content/a;->eH:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/f/p;->a(JJLjava/io/PrintWriter;)V

    .line 283
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 285
    :cond_2
    return-void
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method protected final onForceLoad()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/content/j;->onForceLoad()V

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/content/a;->cancelLoad()Z

    .line 113
    new-instance v0, Landroid/support/v4/content/b;

    invoke-direct {v0, p0}, Landroid/support/v4/content/b;-><init>(Landroid/support/v4/content/a;)V

    iput-object v0, p0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    .line 115
    invoke-virtual {p0}, Landroid/support/v4/content/a;->at()V

    .line 116
    return-void
.end method
