.class public Lcom/android/mail/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final akN:Ljava/util/concurrent/Executor;

.field private static final akO:Ljava/util/concurrent/Executor;


# instance fields
.field private final GD:Lcom/android/a/a;

.field protected final Hb:Landroid/content/ContentResolver;

.field private final akL:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/mail/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private akM:Lcom/android/mail/b/l;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/b/j;->TAG:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 69
    sput-object v1, Lcom/android/mail/b/j;->akN:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/android/mail/b/j;->akO:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/a/a;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/b/j;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/mail/b/j;->Hb:Landroid/content/ContentResolver;

    .line 79
    iput-object p2, p0, Lcom/android/mail/b/j;->GD:Lcom/android/a/a;

    .line 80
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/b/j;->akL:Ljava/util/LinkedHashSet;

    .line 81
    return-void
.end method

.method static synthetic b(Lcom/android/mail/b/j;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mail/b/j;->oz()V

    return-void
.end method

.method static synthetic oA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/mail/b/j;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private oz()V
    .locals 5

    .prologue
    .line 141
    sget-object v0, Lcom/android/mail/b/j;->TAG:Ljava/lang/String;

    const-string v1, "ContactResolver  > batch   %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/b/j;->akL:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    iget-object v0, p0, Lcom/android/mail/b/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/android/mail/b/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/LinkedHashSet;)Lcom/android/mail/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/mail/b/i;",
            ">;)",
            "Lcom/android/mail/b/l;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/android/mail/b/l;

    iget-object v1, p0, Lcom/android/mail/b/j;->Hb:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mail/b/j;->GD:Lcom/android/a/a;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/mail/b/l;-><init>(Ljava/util/Set;Landroid/content/ContentResolver;Lcom/android/a/a;Lcom/android/mail/b/j;)V

    return-object v0
.end method

.method public final a(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mail/b/j;->akL:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/android/mail/b/i;

    invoke-direct {v1, p1, p2}, Lcom/android/mail/b/i;-><init>(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0}, Lcom/android/mail/b/j;->oz()V

    .line 122
    return-void
.end method

.method public final b(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mail/b/j;->akL:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/android/mail/b/i;

    invoke-direct {v1, p1, p2}, Lcom/android/mail/b/i;-><init>(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public final oy()Lcom/android/a/a;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mail/b/j;->GD:Lcom/android/a/a;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/mail/b/j;->akL:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/mail/b/j;->akM:Lcom/android/mail/b/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/b/j;->akM:Lcom/android/mail/b/l;

    invoke-virtual {v0}, Lcom/android/mail/b/l;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 91
    sget-object v0, Lcom/android/mail/b/j;->TAG:Ljava/lang/String;

    const-string v1, "ContactResolver << batch skip"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "ContactResolver run"

    invoke-static {v0}, Lcom/android/ex/photo/util/f;->beginSection(Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/android/mail/b/j;->TAG:Ljava/lang/String;

    const-string v1, "ContactResolver >> batch start"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/mail/b/j;->akL:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    iget-object v1, p0, Lcom/android/mail/b/j;->akM:Lcom/android/mail/b/l;

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/android/mail/b/j;->akM:Lcom/android/mail/b/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mail/b/l;->cancel(Z)Z

    .line 105
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/mail/b/j;->a(Ljava/util/LinkedHashSet;)Lcom/android/mail/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/b/j;->akM:Lcom/android/mail/b/l;

    .line 106
    iget-object v0, p0, Lcom/android/mail/b/j;->akM:Lcom/android/mail/b/l;

    sget-object v1, Lcom/android/mail/b/j;->akO:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/b/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    invoke-static {}, Lcom/android/ex/photo/util/f;->endSection()V

    goto :goto_0
.end method
