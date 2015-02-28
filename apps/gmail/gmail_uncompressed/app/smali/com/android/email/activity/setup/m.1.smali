.class public final Lcom/android/email/activity/setup/m;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private Mq:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/m;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/m;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/activity/setup/m;->Mq:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/android/email/activity/setup/m;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/activity/setup/m;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static f(Lcom/android/emailcommon/provider/Account;)Lcom/android/email/activity/setup/m;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/android/email/activity/setup/m;

    invoke-direct {v0}, Lcom/android/email/activity/setup/m;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 51
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/m;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/email/activity/setup/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/m;->Mq:Landroid/content/Context;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/m;->setRetainInstance(Z)V

    .line 63
    return-void
.end method

.method public final onResume()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/android/email/activity/setup/m;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/m;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/n;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/n;-><init>(Lcom/android/email/activity/setup/m;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 97
    return-void
.end method
