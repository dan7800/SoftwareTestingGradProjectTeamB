.class public abstract Lcom/android/emailcommon/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final abn:Ljava/util/concurrent/Executor;


# instance fields
.field private final abo:Lcom/android/emailcommon/b/j;

.field private final abp:Lcom/android/emailcommon/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/b/i",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private volatile abq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/emailcommon/b/g;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 43
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/emailcommon/b/g;->abn:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/b/j;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/b/g;->abo:Lcom/android/emailcommon/b/j;

    .line 146
    iget-object v0, p0, Lcom/android/emailcommon/b/g;->abo:Lcom/android/emailcommon/b/j;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/emailcommon/b/g;->abo:Lcom/android/emailcommon/b/j;

    invoke-static {v0, p0}, Lcom/android/emailcommon/b/j;->a(Lcom/android/emailcommon/b/j;Lcom/android/emailcommon/b/g;)V

    .line 149
    :cond_0
    new-instance v0, Lcom/android/emailcommon/b/i;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/b/i;-><init>(Lcom/android/emailcommon/b/g;)V

    iput-object v0, p0, Lcom/android/emailcommon/b/g;->abp:Lcom/android/emailcommon/b/i;

    .line 150
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/b/g",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/android/emailcommon/b/g;->abn:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/android/emailcommon/b/g;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/b/g",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/android/emailcommon/b/h;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/b/h;-><init>(Ljava/lang/Runnable;)V

    .line 254
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/b/g;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/android/emailcommon/b/g;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/android/emailcommon/b/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/android/emailcommon/b/g",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/emailcommon/b/g;->abp:Lcom/android/emailcommon/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/emailcommon/b/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    return-object p0
.end method

.method static synthetic a(Lcom/android/emailcommon/b/g;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/emailcommon/b/g;->abq:Z

    return v0
.end method

.method public static b(Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/b/g",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/android/emailcommon/b/g;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/android/emailcommon/b/g;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;

    move-result-object v0

    return-object v0
.end method

.method protected static md()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method protected static me()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method


# virtual methods
.method protected varargs abstract au()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method final mc()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/emailcommon/b/g;->abo:Lcom/android/emailcommon/b/j;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/emailcommon/b/g;->abo:Lcom/android/emailcommon/b/j;

    invoke-static {v0, p0}, Lcom/android/emailcommon/b/j;->b(Lcom/android/emailcommon/b/j;Lcom/android/emailcommon/b/g;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final varargs mf()Lcom/android/emailcommon/b/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/emailcommon/b/g",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/android/emailcommon/b/g;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/b/g;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/android/emailcommon/b/g;

    move-result-object v0

    return-object v0
.end method
