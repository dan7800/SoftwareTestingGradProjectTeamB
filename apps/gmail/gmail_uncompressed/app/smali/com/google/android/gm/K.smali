.class public final Lcom/google/android/gm/K;
.super Landroid/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/gm/X;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/U;",
        ">;",
        "Lcom/google/android/gm/X;"
    }
.end annotation


# instance fields
.field private Mf:I

.field private aJn:Landroid/widget/ListView;

.field private aXJ:Lcom/google/android/gm/aw;

.field private aXZ:Ljava/lang/String;

.field private aYa:I

.field private aYb:Lcom/google/android/gm/P;

.field private aYc:Landroid/os/Parcelable;

.field private aYd:Z

.field private aYe:Ljava/lang/Object;

.field private aYf:Lcom/google/android/gm/N;

.field private aYg:Lcom/google/android/gm/W;

.field private final aYh:Lcom/google/android/gm/S;

.field private final aYi:Landroid/content/SyncStatusObserver;

.field private lR:Landroid/content/res/Resources;

.field private mAccount:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private wC:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 93
    iput-boolean v1, p0, Lcom/google/android/gm/K;->aYd:Z

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/K;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/google/android/gm/S;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/S;-><init>(Lcom/google/android/gm/K;B)V

    iput-object v0, p0, Lcom/google/android/gm/K;->aYh:Lcom/google/android/gm/S;

    .line 727
    new-instance v0, Lcom/google/android/gm/L;

    invoke-direct {v0, p0}, Lcom/google/android/gm/L;-><init>(Lcom/google/android/gm/K;)V

    iput-object v0, p0, Lcom/google/android/gm/K;->aYi:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method private CQ()V
    .locals 4

    .prologue
    .line 695
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 696
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v2, "gmail-ls"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 699
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 702
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gm/K;->aYd:Z

    if-eq v0, v1, :cond_1

    .line 704
    iput-boolean v0, p0, Lcom/google/android/gm/K;->aYd:Z

    .line 705
    iget-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    invoke-virtual {v0}, Lcom/google/android/gm/P;->notifyDataSetChanged()V

    .line 707
    :cond_1
    return-void

    .line 699
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CR()V
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/preference/g;->dN(Ljava/lang/String;)Lcom/google/android/gm/preference/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/K;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EnableAccountSyncDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/g;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/K;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gm/K;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gm/K;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/K;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/K;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gm/K;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    new-instance v3, Lcom/google/android/gm/preference/j;

    iget-object v4, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    invoke-virtual {v3}, Lcom/android/mail/i/e;->to()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/K;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v1}, Lcom/google/android/gm/W;->Cu()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/K;->lR:Landroid/content/res/Resources;

    const v3, 0x7f090379

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/K;->lR:Landroid/content/res/Resources;

    const v3, 0x7f090392

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    invoke-static {v2, v5, p1}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/K;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v1}, Lcom/google/android/gm/W;->Cv()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    const v3, 0x7f110019

    iget-object v4, p0, Lcom/google/android/gm/K;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v4}, Lcom/google/android/gm/W;->Cw()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    move v6, v0

    move-object v0, v1

    move v1, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/K;->lR:Landroid/content/res/Resources;

    const v1, 0x7f090391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gm/K;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/gm/K;

    invoke-direct {v0}, Lcom/google/android/gm/K;-><init>()V

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "label"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v2, "options"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gm/K;->setArguments(Landroid/os/Bundle;)V

    .line 142
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/K;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gm/K;->aYd:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gm/K;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/K;->CR()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmail-ls"

    invoke-static {v0, v1}, Lcom/android/mail/ui/dp;->b(Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/mail/ui/dp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/K;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "auto sync"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/dp;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gm/K;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/K;->wC:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/K;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gm/K;)Lcom/google/android/gm/aw;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/K;->aXJ:Lcom/google/android/gm/aw;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gm/K;)Lcom/google/android/gm/P;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gm/K;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gm/K;->CQ()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/gm/K;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/K;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method final CP()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 283
    iget v1, p0, Lcom/google/android/gm/K;->Mf:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gm/K;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 182
    iput-object v1, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/K;->wC:Landroid/view/LayoutInflater;

    .line 184
    iget-object v0, p0, Lcom/google/android/gm/K;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/K;->lR:Landroid/content/res/Resources;

    move-object v0, v1

    .line 185
    check-cast v0, Lcom/google/android/gm/N;

    iput-object v0, p0, Lcom/google/android/gm/K;->aYf:Lcom/google/android/gm/N;

    .line 186
    instance-of v0, v1, Lcom/google/android/gm/W;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 187
    check-cast v0, Lcom/google/android/gm/W;

    iput-object v0, p0, Lcom/google/android/gm/K;->aYg:Lcom/google/android/gm/W;

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/K;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v0, p0}, Lcom/google/android/gm/W;->a(Lcom/google/android/gm/X;)V

    .line 190
    :cond_0
    check-cast v1, Lcom/google/android/gm/an;

    invoke-interface {v1}, Lcom/google/android/gm/an;->CK()Lcom/google/android/gm/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/K;->aXJ:Lcom/google/android/gm/aw;

    .line 191
    new-instance v0, Lcom/google/android/gm/P;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gm/P;-><init>(Lcom/google/android/gm/K;B)V

    iput-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    .line 192
    iget-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/K;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gm/K;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 195
    iget v0, p0, Lcom/google/android/gm/K;->aYa:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gm/K;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gm/K;->aYh:Lcom/google/android/gm/S;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 198
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 195
    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 262
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "gmail-ls"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 271
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/google/android/gm/K;->CR()V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onChanged()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    invoke-virtual {v0}, Lcom/google/android/gm/P;->notifyDataSetChanged()V

    .line 684
    invoke-direct {p0}, Lcom/google/android/gm/K;->CQ()V

    .line 685
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gm/K;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    .line 151
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    .line 152
    if-eqz p1, :cond_0

    const-string v1, "label"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "label"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    .line 155
    :cond_0
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/K;->Mf:I

    .line 156
    const-string v1, "options"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/K;->aYa:I

    .line 158
    if-eqz p1, :cond_1

    .line 159
    const-string v0, "list-state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/K;->aYc:Landroid/os/Parcelable;

    .line 161
    :cond_1
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/U;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Lcom/google/android/gm/provider/X;

    invoke-virtual {p0}, Lcom/google/android/gm/K;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/K;->mAccount:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/X;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    const v0, 0x7f040089

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    .line 171
    iget-object v0, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 174
    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/gm/K;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gm/W;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/gm/K;->aYg:Lcom/google/android/gm/W;

    invoke-interface {v0, p0}, Lcom/google/android/gm/W;->b(Lcom/google/android/gm/X;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    invoke-virtual {v0}, Lcom/google/android/gm/P;->stopListening()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    .line 241
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 242
    return-void
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/O;

    .line 247
    invoke-virtual {v0}, Lcom/google/android/gm/O;->CT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, v0, Lcom/google/android/gm/O;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/google/android/gm/K;->aYf:Lcom/google/android/gm/N;

    invoke-interface {v1, v0}, Lcom/google/android/gm/N;->dx(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 253
    iput-object v0, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    goto :goto_0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 52
    check-cast p2, Lcom/google/android/gm/provider/U;

    iget-object v0, p0, Lcom/google/android/gm/K;->aYb:Lcom/google/android/gm/P;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/P;->a(Lcom/google/android/gm/provider/U;)V

    iget-object v0, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/gm/K;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0d009d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gm/K;->aYc:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/gm/K;->aYc:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/K;->aYc:Landroid/os/Parcelable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/K;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/O;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gm/O;->CT()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v0, v0, Lcom/google/android/gm/O;->aYm:Lcom/google/android/gm/provider/T;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/K;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p0}, Lcom/google/android/gm/K;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/U;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/K;->aYe:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 203
    iget-object v0, p0, Lcom/google/android/gm/K;->aYf:Lcom/google/android/gm/N;

    invoke-interface {v0, p0}, Lcom/google/android/gm/N;->j(Lcom/google/android/gm/K;)V

    .line 205
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gm/K;->aYi:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/K;->aYe:Ljava/lang/Object;

    .line 207
    invoke-direct {p0}, Lcom/google/android/gm/K;->CQ()V

    .line 208
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/android/gm/K;->aXZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "list-state"

    iget-object v1, p0, Lcom/google/android/gm/K;->aJn:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    :cond_1
    return-void
.end method
