.class public final Lcom/android/ex/chips/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/q;


# instance fields
.field private final acO:Landroid/support/v4/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/g",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/ex/chips/j;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    new-instance v0, Landroid/support/v4/f/g;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/f/g;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/chips/j;->acO:Landroid/support/v4/f/g;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/android/ex/chips/j;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ex/chips/j;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic b(Lcom/android/ex/chips/j;)Landroid/support/v4/f/g;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ex/chips/j;->acO:Landroid/support/v4/f/g;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->nb()Landroid/net/Uri;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/ex/chips/j;->acO:Landroid/support/v4/f/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/ae;->b([B)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-interface {p2}, Lcom/android/ex/chips/r;->ms()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Lcom/android/ex/chips/k;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/ex/chips/k;-><init>(Lcom/android/ex/chips/j;Landroid/net/Uri;Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 80
    :cond_2
    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Lcom/android/ex/chips/r;->mu()V

    goto :goto_0
.end method
