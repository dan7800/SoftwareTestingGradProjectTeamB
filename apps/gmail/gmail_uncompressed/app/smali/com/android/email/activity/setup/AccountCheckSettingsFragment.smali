.class public final Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private Mf:I

.field private Mg:Z

.field private Mh:Lcom/android/emailcommon/mail/MessagingException;

.field Mi:Lcom/android/email/activity/setup/a;

.field private ao:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->ao:I

    .line 75
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mg:Z

    .line 121
    return-void
.end method

.method private a(ILcom/android/emailcommon/mail/MessagingException;)V
    .locals 3

    .prologue
    .line 219
    iput p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->ao:I

    .line 220
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mh:Lcom/android/emailcommon/mail/MessagingException;

    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mg:Z

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 256
    const-string v1, "CheckProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/aE;

    .line 260
    if-eqz v0, :cond_0

    .line 261
    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->ao:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/aE;->aS(I)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->hl()Lcom/android/email/activity/setup/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/setup/b;->hn()V

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->hl()Lcom/android/email/activity/setup/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/setup/b;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-static {p2}, Lcom/android/email/activity/setup/az;->a(Lcom/android/emailcommon/mail/MessagingException;)I

    move-result v0

    .line 244
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/email/activity/setup/az;->a(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->hl()Lcom/android/email/activity/setup/b;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/email/activity/setup/b;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_3
    check-cast p2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    iget-object v0, p2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 251
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->hl()Lcom/android/email/activity/setup/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/setup/b;->ho()V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->a(ILcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method public static aN(I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 130
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 131
    const-string v2, "mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 133
    return-object v0
.end method

.method protected static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    packed-switch p1, :pswitch_data_0

    .line 514
    :goto_0
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_1
    return-object v0

    .line 504
    :pswitch_0
    const v0, 0x7f09022a

    .line 505
    goto :goto_0

    .line 508
    :pswitch_1
    const v0, 0x7f09022b

    .line 509
    goto :goto_0

    .line 511
    :pswitch_2
    const v0, 0x7f09022c

    goto :goto_0

    .line 517
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hl()Lcom/android/email/activity/setup/b;
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 273
    instance-of v1, v0, Lcom/android/email/activity/setup/b;

    if-eqz v1, :cond_0

    .line 274
    check-cast v0, Lcom/android/email/activity/setup/b;

    .line 278
    :goto_0
    return-object v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 277
    instance-of v1, v0, Lcom/android/email/activity/setup/b;

    if-eqz v1, :cond_1

    .line 278
    check-cast v0, Lcom/android/email/activity/setup/b;

    goto :goto_0

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->g:Z

    .line 159
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mi:Lcom/android/email/activity/setup/a;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bc;

    .line 163
    new-instance v1, Lcom/android/email/activity/setup/a;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mf:I

    invoke-interface {v0}, Lcom/android/email/activity/setup/bc;->hN()Lcom/android/email/activity/setup/SetupDataFragment;

    move-result-object v0

    invoke-direct {v1, v2, p0, v3, v0}, Lcom/android/email/activity/setup/a;-><init>(Landroid/content/Context;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/email/activity/setup/SetupDataFragment;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/a;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mi:Lcom/android/email/activity/setup/a;

    .line 168
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setRetainInstance(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mf:I

    .line 145
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mi:Lcom/android/email/activity/setup/a;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mi:Lcom/android/email/activity/setup/a;

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->a(Landroid/os/AsyncTask;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mi:Lcom/android/email/activity/setup/a;

    .line 200
    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->g:Z

    .line 210
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mg:Z

    .line 187
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mg:Z

    .line 178
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->ao:I

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->ao:I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->Mh:Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->a(ILcom/android/emailcommon/mail/MessagingException;)V

    .line 181
    :cond_0
    return-void
.end method
