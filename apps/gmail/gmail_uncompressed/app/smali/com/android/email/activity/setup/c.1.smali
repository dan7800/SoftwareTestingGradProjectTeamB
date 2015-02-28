.class public final Lcom/android/email/activity/setup/c;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private Mp:I

.field private Mq:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/c;->Mp:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/c;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/c;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/android/email/activity/setup/c;->Mp:I

    return p1
.end method

.method static synthetic a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/setup/c;->Mq:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Lcom/android/emailcommon/provider/Account;ZZZZ)Lcom/android/email/activity/setup/c;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 82
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string v1, "calendar"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v1, "contacts"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v1, "notifications"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    new-instance v1, Lcom/android/email/activity/setup/c;

    invoke-direct {v1}, Lcom/android/email/activity/setup/c;-><init>()V

    .line 89
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/c;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v1
.end method

.method static synthetic b(Lcom/android/email/activity/setup/c;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/email/activity/setup/c;->hp()V

    return-void
.end method

.method static synthetic c(Lcom/android/email/activity/setup/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/setup/c;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/android/email/activity/setup/c;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/email/activity/setup/c;->hq()V

    return-void
.end method

.method private hp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/setup/c;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 147
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/c;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/k;

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/k;-><init>(Lcom/android/email/activity/setup/c;B)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 150
    return-void
.end method

.method private hq()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/email/activity/setup/c;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 157
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/c;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/d;

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/d;-><init>(Lcom/android/email/activity/setup/c;B)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 159
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/setup/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/c;->Mq:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/setup/c;->Mp:I

    .line 349
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/c;->setRetainInstance(Z)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v0, "AccountCreationFragment.stage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/c;->Mp:I

    .line 100
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 118
    iget v0, p0, Lcom/android/email/activity/setup/c;->Mp:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return-void

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/c;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/c;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/g;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/g;-><init>(Lcom/android/email/activity/setup/c;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/c;->hp()V

    goto :goto_0

    .line 129
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/c;->hq()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "AccountCreationFragment.stage"

    iget v1, p0, Lcom/android/email/activity/setup/c;->Mp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    return-void
.end method
