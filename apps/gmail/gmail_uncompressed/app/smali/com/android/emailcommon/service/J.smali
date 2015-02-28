.class final Lcom/android/emailcommon/service/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic aaS:Lcom/android/emailcommon/service/H;


# direct methods
.method private constructor <init>(Lcom/android/emailcommon/service/H;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/emailcommon/service/H;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/emailcommon/service/J;-><init>(Lcom/android/emailcommon/service/H;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/service/H;->b(Landroid/os/IBinder;)V

    .line 111
    new-instance v0, Lcom/android/emailcommon/service/K;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/K;-><init>(Lcom/android/emailcommon/service/J;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/service/K;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
