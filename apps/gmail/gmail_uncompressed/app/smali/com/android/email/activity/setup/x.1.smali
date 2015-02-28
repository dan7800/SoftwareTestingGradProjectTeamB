.class public abstract Lcom/android/email/activity/setup/x;
.super Lcom/android/email/activity/setup/ab;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected MR:Z

.field protected MS:Lcom/android/emailcommon/provider/HostAuth;

.field protected MT:Lcom/android/emailcommon/provider/HostAuth;

.field private MU:Landroid/view/View;

.field protected MV:Ljava/lang/String;

.field private MW:Z

.field protected Mk:Lcom/android/email/activity/setup/SetupDataFragment;

.field protected Mq:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/setup/ab;-><init>()V

    .line 68
    const-string v0, "protocol"

    iput-object v0, p0, Lcom/android/email/activity/setup/x;->MV:Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/x;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method public static W(Z)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 99
    const-string v1, "AccountServerBaseFragment.settings"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/x;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final X(Z)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->MU:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->MU:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/x;->Z(Z)V

    goto :goto_0
.end method

.method protected final an(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/email/activity/setup/x;->MR:Z

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7f0d009a

    invoke-static {p1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0d009b

    invoke-static {p1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/x;->MU:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->MU:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->MU:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public hA()V
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/setup/y;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/y;-><init>(Lcom/android/email/activity/setup/x;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 284
    return-void
.end method

.method public abstract hB()Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hC()I
.end method

.method public final hD()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->hC()I

    move-result v1

    .line 295
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/A;

    .line 296
    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/A;->aO(I)V

    .line 297
    return-void
.end method

.method public hz()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->hC()I

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 252
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->Mq:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 253
    iget-object v4, p0, Lcom/android/email/activity/setup/x;->MS:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/setup/x;->MS:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v4, v0}, Lcom/android/emailcommon/provider/HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 255
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/x;->Mq:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 256
    iget-object v4, p0, Lcom/android/email/activity/setup/x;->MT:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/setup/x;->MT:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v4, v3}, Lcom/android/emailcommon/provider/HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    .line 258
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 253
    goto :goto_0

    :cond_3
    move v3, v2

    .line 256
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/x;->Mq:Landroid/content/Context;

    .line 141
    iget-boolean v1, p0, Lcom/android/email/activity/setup/x;->MR:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 144
    const-string v1, "AccountServerBaseFragment.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    check-cast v0, Lcom/android/email/activity/setup/bc;

    .line 148
    invoke-interface {v0}, Lcom/android/email/activity/setup/bc;->hN()Lcom/android/email/activity/setup/SetupDataFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/x;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    .line 150
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 186
    const v1, 0x7f0d009a

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->hC()I

    .line 188
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    const v1, 0x7f0d009b

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->hD()V

    goto :goto_0

    .line 192
    :cond_1
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/x;->MR:Z

    .line 114
    if-eqz p1, :cond_1

    .line 115
    const-string v0, "AccountServerBaseFragment.settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/x;->MR:Z

    .line 116
    const-string v0, "AccountServerBaseFragment.saving"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/x;->MW:Z

    .line 117
    const-string v0, "AccountServerBaseFragment.sendAuth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    iput-object v0, p0, Lcom/android/email/activity/setup/x;->MS:Lcom/android/emailcommon/provider/HostAuth;

    .line 118
    const-string v0, "AccountServerBaseFragment.recvAuth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    iput-object v0, p0, Lcom/android/email/activity/setup/x;->MT:Lcom/android/emailcommon/provider/HostAuth;

    .line 122
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/x;->setHasOptionsMenu(Z)V

    .line 123
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccountServerBaseFragment.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/x;->MR:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/email/activity/setup/x;->Mq:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 176
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 177
    invoke-super {p0}, Lcom/android/email/activity/setup/ab;->onPause()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/email/activity/setup/ab;->onResume()V

    .line 156
    iget-boolean v0, p0, Lcom/android/email/activity/setup/x;->MW:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->hA()V

    .line 160
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v1, "AccountServerBaseFragment.title"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "AccountServerBaseFragment.settings"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/x;->MR:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    const-string v0, "AccountServerBaseFragment.sendAuth"

    iget-object v1, p0, Lcom/android/email/activity/setup/x;->MS:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    const-string v0, "AccountServerBaseFragment.recvAuth"

    iget-object v1, p0, Lcom/android/email/activity/setup/x;->MT:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    return-void
.end method
