.class public Lcom/android/mail/utils/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/mail/utils/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private Hb:Landroid/content/ContentResolver;

.field private Tv:Ljava/lang/String;

.field private aOY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/e;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 128
    return-void
.end method


# virtual methods
.method protected final varargs AO()Lcom/android/mail/utils/f;
    .locals 4

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/utils/e;->Hb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mail/utils/e;->Tv:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/utils/e;->aOY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/f;->a([Landroid/content/ContentProviderResult;)Lcom/android/mail/utils/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/android/mail/utils/e;->mW:Ljava/lang/String;

    const-string v2, "exception executing ContentProviderOperationsTask"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    invoke-static {v0}, Lcom/android/mail/utils/f;->b(Ljava/lang/Exception;)Lcom/android/mail/utils/f;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mail/utils/e;->Hb:Landroid/content/ContentResolver;

    .line 97
    iput-object p2, p0, Lcom/android/mail/utils/e;->Tv:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/android/mail/utils/e;->aOY:Ljava/util/ArrayList;

    .line 99
    sget-object v0, Lcom/android/mail/utils/e;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/utils/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/mail/utils/e;->AO()Lcom/android/mail/utils/f;

    move-result-object v0

    return-object v0
.end method
