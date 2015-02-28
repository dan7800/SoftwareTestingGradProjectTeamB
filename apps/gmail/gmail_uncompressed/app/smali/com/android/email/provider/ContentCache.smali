.class public final Lcom/android/email/provider/ContentCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static RA:I

.field private static final RB:Lcom/android/email/provider/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/ContentCache;",
            ">;"
        }
    .end annotation
.end field

.field static final RE:Lcom/android/email/provider/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/d",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final RC:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field RF:Lcom/android/email/provider/ContentCache$TokenList;

.field private final RG:Lcom/android/email/provider/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    sput v1, Lcom/android/email/provider/ContentCache;->RA:I

    .line 89
    new-instance v0, Lcom/android/email/provider/d;

    invoke-direct {v0, v1}, Lcom/android/email/provider/d;-><init>(B)V

    sput-object v0, Lcom/android/email/provider/ContentCache;->RB:Lcom/android/email/provider/d;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCache;->RD:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/android/email/provider/d;

    invoke-direct {v0}, Lcom/android/email/provider/d;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCache;->RE:Lcom/android/email/provider/d;

    return-void
.end method

.method private declared-synchronized invalidate()V
    .locals 1

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/provider/ContentCache;->jZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit p0

    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized jZ()V
    .locals 1

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->RG:Lcom/android/email/provider/e;

    invoke-static {v0}, Lcom/android/email/provider/e;->a(Lcom/android/email/provider/e;)I

    .line 684
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->RC:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 686
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->RF:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache$TokenList;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static ka()V
    .locals 2

    .prologue
    .line 720
    sget-object v0, Lcom/android/email/provider/ContentCache;->RD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/ContentCache;

    .line 721
    invoke-direct {v0}, Lcom/android/email/provider/ContentCache;->invalidate()V

    goto :goto_0

    .line 723
    :cond_0
    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->RC:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method
