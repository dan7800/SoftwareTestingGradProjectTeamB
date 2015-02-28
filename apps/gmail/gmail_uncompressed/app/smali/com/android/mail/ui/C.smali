.class final Lcom/android/mail/ui/C;
.super Landroid/database/Observable;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/k;
.implements Lcom/android/mail/ui/bs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/support/v4/widget/k;",
        ">;",
        "Landroid/support/v4/widget/k;",
        "Lcom/android/mail/ui/bs;"
    }
.end annotation


# instance fields
.field private aEB:F

.field final synthetic aEa:Lcom/android/mail/ui/a;

.field private kW:I


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 1

    .prologue
    .line 4201
    iput-object p1, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    .line 4202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/C;->kW:I

    .line 4203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/C;->aEB:F

    .line 4204
    return-void
.end method

.method private wM()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4353
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iput-boolean v1, v0, Lcom/android/mail/ui/a;->aDT:Z

    .line 4354
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->L(I)V

    .line 4355
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 4356
    if-eqz v0, :cond_0

    .line 4357
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->clear()V

    .line 4359
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->t(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4360
    return-void
.end method


# virtual methods
.method public final P(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4321
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "AAC onDrawerStateChanged %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4322
    iput p1, p0, Lcom/android/mail/ui/C;->kW:I

    .line 4323
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    iget v1, p0, Lcom/android/mail/ui/C;->kW:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->P(I)V

    .line 4325
    iget-object v0, p0, Lcom/android/mail/ui/C;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 4326
    invoke-interface {v0, p1}, Landroid/support/v4/widget/k;->P(I)V

    goto :goto_0

    .line 4329
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4345
    :cond_1
    :goto_1
    return-void

    .line 4332
    :cond_2
    iget v0, p0, Lcom/android/mail/ui/C;->kW:I

    if-nez v0, :cond_1

    .line 4333
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-boolean v0, v0, Lcom/android/mail/ui/a;->aDT:Z

    if-eqz v0, :cond_3

    .line 4334
    invoke-direct {p0}, Lcom/android/mail/ui/C;->wM()V

    .line 4336
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->r(Lcom/android/mail/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4337
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0, v4}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Z)Z

    .line 4338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4339
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4340
    const-string v1, "folder"

    iget-object v2, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4341
    iget-object v1, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v3}, Lcom/android/mail/ui/a;->s(Lcom/android/mail/ui/a;)Lcom/android/mail/ui/w;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method public final Q(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/t;->Q(Landroid/view/View;)V

    .line 4240
    iget-object v0, p0, Lcom/android/mail/ui/C;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 4241
    invoke-interface {v0, p1}, Landroid/support/v4/widget/k;->Q(Landroid/view/View;)V

    goto :goto_0

    .line 4243
    :cond_0
    return-void
.end method

.method public final R(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/t;->R(Landroid/view/View;)V

    .line 4248
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-boolean v0, v0, Lcom/android/mail/ui/a;->aDT:Z

    if-eqz v0, :cond_0

    .line 4249
    invoke-direct {p0}, Lcom/android/mail/ui/C;->wM()V

    .line 4253
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 4254
    iget-object v1, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v1}, Lcom/android/mail/providers/Folder;->g(Lcom/android/mail/providers/Folder;)Z

    move-result v1

    .line 4255
    iget-object v2, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v2, v0, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;IZ)V

    .line 4257
    iget-object v0, p0, Lcom/android/mail/ui/C;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 4258
    invoke-interface {v0, p1}, Landroid/support/v4/widget/k;->R(Landroid/view/View;)V

    goto :goto_0

    .line 4260
    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v4/widget/k;)V
    .locals 0

    .prologue
    .line 4213
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/C;->registerObserver(Ljava/lang/Object;)V

    .line 4214
    return-void
.end method

.method public final c(Landroid/support/v4/widget/k;)V
    .locals 0

    .prologue
    .line 4218
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/C;->unregisterObserver(Ljava/lang/Object;)V

    .line 4219
    return-void
.end method

.method public final i(Landroid/view/View;F)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4269
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/t;->i(Landroid/view/View;F)V

    .line 4270
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-boolean v0, v0, Lcom/android/mail/ui/a;->aDT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDS:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 4271
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDS:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setAlpha(F)V

    .line 4285
    :cond_0
    iget v0, p0, Lcom/android/mail/ui/C;->kW:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4286
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->q(Lcom/android/mail/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3e19999a    # 0.15f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/mail/ui/C;->aEB:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_2

    .line 4287
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0, v3}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;Z)Z

    .line 4288
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->D()V

    .line 4289
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wt()V

    .line 4307
    :cond_1
    :goto_0
    iput p2, p0, Lcom/android/mail/ui/C;->aEB:F

    .line 4309
    iget-object v0, p0, Lcom/android/mail/ui/C;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 4310
    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/k;->i(Landroid/view/View;F)V

    goto :goto_1

    .line 4290
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->q(Lcom/android/mail/ui/a;)Z

    move-result v0

    if-nez v0, :cond_1

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mail/ui/C;->aEB:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 4291
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0, v4}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;Z)Z

    .line 4292
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->D()V

    .line 4293
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wr()V

    goto :goto_0

    .line 4296
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->q(Lcom/android/mail/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4

    .line 4297
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0, v3}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;Z)Z

    .line 4298
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->D()V

    .line 4299
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wt()V

    goto :goto_0

    .line 4300
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->q(Lcom/android/mail/ui/a;)Z

    move-result v0

    if-nez v0, :cond_1

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 4301
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0, v4}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;Z)Z

    .line 4302
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->D()V

    .line 4303
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wr()V

    goto :goto_0

    .line 4312
    :cond_5
    return-void
.end method

.method public final wL()Z
    .locals 1

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/android/mail/ui/C;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    return v0
.end method

.method public final wN()I
    .locals 1

    .prologue
    .line 4370
    iget v0, p0, Lcom/android/mail/ui/C;->kW:I

    return v0
.end method
