.class final Lcom/google/android/gsf/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic cns:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 67
    iput-object p2, p0, Lcom/google/android/gsf/d;->cns:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gsf/d;->cns:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/c;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gsf/e;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/e;-><init>(Lcom/google/android/gsf/d;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 82
    return-void
.end method
