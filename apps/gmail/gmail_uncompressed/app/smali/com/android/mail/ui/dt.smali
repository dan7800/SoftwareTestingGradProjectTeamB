.class public final Lcom/android/mail/ui/dt;
.super Lcom/android/mail/ui/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/bd;


# instance fields
.field private aNQ:Lcom/android/mail/ui/TwoPaneLayout;

.field private aNR:Landroid/widget/ImageView;

.field private aNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/dy;",
            ">;"
        }
    .end annotation
.end field

.field private aNT:Z

.field private aNU:Lcom/android/mail/providers/Conversation;

.field private aNV:Lcom/android/mail/ui/dv;

.field private final aNW:Ljava/lang/Runnable;

.field private aNX:Z

.field private aNY:Z

.field private aNZ:I


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/dD;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/a;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/dD;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/dt;->aNS:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/android/mail/ui/du;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/du;-><init>(Lcom/android/mail/ui/dt;)V

    iput-object v0, p0, Lcom/android/mail/ui/dt;->aNW:Ljava/lang/Runnable;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/dt;->aNX:Z

    .line 889
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/dt;->aNZ:I

    .line 118
    return-void
.end method

.method private Ap()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AJ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->Az()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Ar()I
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x102000a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d01b1

    goto :goto_0
.end method

.method private As()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 484
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDz:Lcom/android/mail/browse/Z;

    iget-object v1, p0, Lcom/android/mail/ui/dt;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, p0, Lcom/android/mail/ui/dt;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v3, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    iget-object v3, v3, Lcom/android/mail/ui/dv;->amQ:Lcom/android/mail/providers/Conversation;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/Z;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;ZLandroid/animation/AnimatorListenerAdapter;)V

    .line 487
    iput-object v5, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    .line 489
    :cond_0
    return-void
.end method

.method private At()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->Ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wr()V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->ws()V

    goto :goto_0
.end method

.method private Au()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AJ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 609
    :goto_0
    if-eqz v0, :cond_0

    .line 610
    iput-boolean v1, p0, Lcom/android/mail/ui/dt;->aNT:Z

    .line 611
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/dt;->h(Lcom/android/mail/providers/Conversation;)Z

    .line 613
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 608
    goto :goto_0
.end method

.method private a(Lcom/android/mail/providers/Conversation;ZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 557
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mail/ui/dt;->Au()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "peek->normal: marking current CV seen. conv=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iput-boolean p2, p0, Lcom/android/mail/ui/dt;->aNT:Z

    .line 567
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/providers/Conversation;Z)V

    .line 572
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    if-eqz v0, :cond_0

    .line 575
    if-nez p1, :cond_2

    .line 576
    invoke-direct {p0, v5}, Lcom/android/mail/ui/dt;->bC(Z)Z

    goto :goto_0

    .line 583
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->At()V

    .line 587
    new-instance v0, Lcom/android/mail/ui/dv;

    invoke-direct {v0, p1, p3}, Lcom/android/mail/ui/dv;-><init>(Lcom/android/mail/providers/Conversation;Z)V

    iput-object v0, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    .line 589
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 590
    sget-object v1, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v2, "IN TPC.showConv, oldMode=%s conv=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    iget-object v4, v4, Lcom/android/mail/ui/dv;->amQ:Lcom/android/mail/providers/Conversation;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 591
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AF()V

    .line 597
    :goto_1
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->Ay()Z

    move-result v0

    if-nez v0, :cond_5

    .line 598
    invoke-virtual {p0, v5}, Lcom/android/mail/ui/dt;->bn(Z)V

    goto :goto_0

    .line 594
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AD()V

    goto :goto_1

    .line 600
    :cond_5
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "TPC.showConversation will wait for TPL.animationEnd to show!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/dt;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->As()V

    return-void
.end method

.method private bA(Z)V
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vO()Lcom/android/mail/ui/bB;

    move-result-object v0

    .line 362
    if-nez v0, :cond_1

    .line 363
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "no drawer to toggle open/closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/bB;->bw(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/TwoPaneLayout;->bD(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wf()V

    .line 371
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->Ar()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/aw;->cS(I)V

    .line 375
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    if-eqz p1, :cond_2

    .line 378
    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->Ai()V

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->Ah()V

    goto :goto_0
.end method

.method private bC(Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 759
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v1, v1}, Lcom/android/mail/ui/ActionableToastBar;->f(ZZ)V

    .line 760
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wa()V

    .line 765
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->AM()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    iget-boolean v1, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AE()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vO()Lcom/android/mail/ui/bB;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->g(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wF()V

    goto :goto_0

    :cond_7
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public final Aq()Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vO()Lcom/android/mail/ui/bB;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zj()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Av()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/dy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNS:Ljava/util/List;

    return-object v0
.end method

.method public final a(Landroid/app/Fragment;I)V
    .locals 4

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 896
    const-string v1, "tag-custom-fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 897
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 898
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 899
    const v2, 0x7f0d0236

    const-string v3, "tag-custom-fragment"

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 900
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/dt;->aNZ:I

    .line 901
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 904
    :cond_0
    if-ltz p2, :cond_1

    .line 905
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/mail/ui/aw;->i(IZ)V

    .line 907
    :cond_1
    return-void
.end method

.method public final a(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 524
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/ConversationCheckedSet;)V

    .line 526
    iget-object v1, p0, Lcom/android/mail/ui/dt;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aBS:I

    if-ne v1, v0, :cond_1

    .line 528
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yq()V

    .line 531
    :cond_0
    return-void

    .line 526
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 852
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 853
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vN()Lcom/android/mail/ui/aw;

    move-result-object v1

    .line 855
    packed-switch v0, :pswitch_data_0

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 860
    :pswitch_0
    if-eqz v1, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/dt;->b(Lcom/android/mail/ui/ae;)Lcom/android/mail/ui/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/mail/ui/ToastBarOperation;->au(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090103

    move v5, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ab;Ljava/lang/CharSequence;IZZLcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/mail/ui/dy;)V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    return-void
.end method

.method protected final a(Ljava/util/Collection;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 682
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 683
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;I)V

    .line 693
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDv:Lcom/android/mail/ui/aI;

    invoke-virtual {v0, v4, p1}, Lcom/android/mail/ui/aI;->a(ILjava/util/Collection;)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 691
    sget-object v1, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v2, "showNextConversation(2P-land): showing %s next."

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 692
    invoke-direct {p0, v0, v4, v5}, Lcom/android/mail/ui/dt;->a(Lcom/android/mail/providers/Conversation;ZZ)V

    goto :goto_0
.end method

.method public final a(Landroid/view/KeyEvent;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 934
    if-eqz p2, :cond_1

    .line 935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vN()Lcom/android/mail/ui/aw;

    move-result-object v1

    .line 937
    if-eqz v1, :cond_0

    .line 938
    invoke-virtual {v1}, Lcom/android/mail/ui/aw;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->requestFocus()Z

    .line 943
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/android/mail/c;)V
    .locals 4

    .prologue
    .line 199
    const-string v0, "android.intent.action.SEARCH"

    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wh()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AF()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCV:Lcom/android/mail/c;

    invoke-static {v1}, Lcom/android/mail/ui/aw;->c(Lcom/android/mail/c;)Lcom/android/mail/ui/aw;

    move-result-object v1

    const v2, 0x7f0d0232

    const-string v3, "tag-conversation-list"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-direct {p0}, Lcom/android/mail/ui/dt;->Ar()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/aw;->cS(I)V

    .line 200
    :cond_1
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AE()V

    goto :goto_0
.end method

.method protected final b(Lcom/android/mail/providers/Conversation;Z)V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/dt;->a(Lcom/android/mail/providers/Conversation;ZZ)V

    .line 547
    return-void
.end method

.method protected final bB(Z)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/mail/ui/dt;->bA(Z)V

    .line 410
    return-void
.end method

.method public final bm(Z)V
    .locals 0

    .prologue
    .line 493
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->bm(Z)V

    .line 494
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->At()V

    .line 495
    return-void
.end method

.method public final bn(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->bn(Z)V

    .line 466
    if-nez p1, :cond_3

    .line 467
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/Z;->aB(Z)V

    .line 478
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aNR:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    :cond_2
    return-void

    .line 468
    :cond_3
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    iget-boolean v1, v1, Lcom/android/mail/ui/dv;->aOb:Z

    if-eqz v1, :cond_4

    .line 470
    iget-object v1, p0, Lcom/android/mail/ui/dt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mail/ui/dt;->aNW:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 471
    iget-object v1, p0, Lcom/android/mail/ui/dt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mail/ui/dt;->aNW:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 473
    :cond_4
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->As()V

    goto :goto_0
.end method

.method public final c(Lcom/android/mail/providers/Conversation;Z)V
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wa()V

    .line 622
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/a;->c(Lcom/android/mail/providers/Conversation;Z)V

    .line 623
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0}, Lcom/android/mail/browse/Z;->qB()V

    .line 627
    :cond_1
    return-void
.end method

.method protected final c(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 122
    const-string v0, " mPeeking="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, " mSavedPeekConv="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNU:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    if-eqz v0, :cond_0

    .line 127
    const-string v0, " mToShow.conv="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    iget-object v0, v0, Lcom/android/mail/ui/dv;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    const-string v0, " mToShow.dueToKeyboard="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNV:Lcom/android/mail/ui/dv;

    iget-boolean v0, v0, Lcom/android/mail/ui/dv;->aOb:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    const-string v0, " mLayout="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    return-void
.end method

.method public final c(Lcom/android/mail/providers/Folder;Z)Z
    .locals 2

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v0, :cond_1

    .line 977
    if-nez p2, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNR:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 982
    :goto_0
    const/4 v0, 0x1

    .line 984
    :goto_1
    return v0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNR:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/mail/utils/o;->a(Landroid/widget/ImageView;Lcom/android/mail/providers/Folder;)V

    goto :goto_0

    .line 984
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final cH(I)Z
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f0d026c

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d010f

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d026d

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0010

    if-ne p1, v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cI(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 435
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNX:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/dt;->aNZ:I

    if-ltz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 437
    iget v1, p0, Lcom/android/mail/ui/dt;->aNZ:I

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 439
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/dt;->aNZ:I

    .line 441
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/dt;->aNX:Z

    .line 443
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->cI(I)V

    .line 444
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wj()V

    .line 453
    :cond_1
    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    invoke-static {p1}, Lcom/android/mail/ui/dD;->do(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->At()V

    .line 457
    :cond_3
    return-void
.end method

.method public final cM(I)Z
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/android/mail/providers/Folder;Z)V
    .locals 0

    .prologue
    .line 874
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/dt;->b(Lcom/android/mail/providers/Folder;Z)V

    .line 875
    return-void
.end method

.method public final h(Lcom/android/mail/providers/Folder;)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    const-string v1, "extra-folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/ui/MailActivity;->setResult(ILandroid/content/Intent;)V

    .line 334
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    .line 340
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/dt;->k(Lcom/android/mail/providers/Folder;)V

    .line 341
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->h(Lcom/android/mail/providers/Folder;)V

    goto :goto_0
.end method

.method protected final i(Lcom/android/mail/providers/Conversation;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "restoring peek to port orientation"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 289
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDz:Lcom/android/mail/browse/Z;

    iget-object v1, p0, Lcom/android/mail/ui/dt;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, p0, Lcom/android/mail/ui/dt;->aqp:Lcom/android/mail/providers/Folder;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/Z;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;ZLandroid/animation/AnimatorListenerAdapter;)V

    .line 291
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0}, Lcom/android/mail/browse/Z;->qz()V

    .line 292
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/Z;->aB(Z)V

    .line 296
    iput-object p1, p0, Lcom/android/mail/ui/dt;->aNU:Lcom/android/mail/providers/Conversation;

    .line 298
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v0, :cond_1

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v4}, Lcom/android/mail/ui/dt;->a(Lcom/android/mail/providers/Conversation;ZZ)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/providers/Conversation;)V

    goto :goto_0
.end method

.method public final k(Lcom/android/mail/providers/Conversation;)V
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    iget-wide v6, v0, Lcom/android/mail/providers/Conversation;->id:J

    .line 641
    :goto_0
    if-eqz p1, :cond_0

    iget-wide v4, p1, Lcom/android/mail/providers/Conversation;->id:J

    .line 642
    :cond_0
    cmp-long v0, v6, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 644
    :goto_1
    if-eqz v0, :cond_1

    .line 645
    sget-object v3, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v4, "TPC.setCurrentConv w/ new conv. new=%s old=%s newPeek=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    iget-object v2, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    aput-object v2, v5, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/mail/ui/dt;->aNT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 650
    :cond_1
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->k(Lcom/android/mail/providers/Conversation;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vN()Lcom/android/mail/ui/aw;

    move-result-object v1

    .line 653
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 654
    iget-boolean v2, p0, Lcom/android/mail/ui/dt;->aNT:Z

    if-eqz v2, :cond_5

    .line 655
    invoke-virtual {v1}, Lcom/android/mail/ui/aw;->ys()V

    .line 656
    invoke-virtual {v1, p1}, Lcom/android/mail/ui/aw;->p(Lcom/android/mail/providers/Conversation;)V

    .line 661
    :cond_2
    :goto_2
    return-void

    :cond_3
    move-wide v6, v4

    .line 640
    goto :goto_0

    :cond_4
    move v0, v2

    .line 642
    goto :goto_1

    .line 658
    :cond_5
    invoke-virtual {v1, p1, v0}, Lcom/android/mail/ui/aw;->d(Lcom/android/mail/providers/Conversation;Z)V

    goto :goto_2
.end method

.method public final l(Lcom/android/mail/providers/Conversation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 671
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-static {p1, v0}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "CPA reported a page change. resetting peek to false. new conv=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 674
    iput-boolean v3, p0, Lcom/android/mail/ui/dt;->aNT:Z

    .line 676
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->l(Lcom/android/mail/providers/Conversation;)V

    .line 677
    return-void
.end method

.method public final m(Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    const-string v1, "extra-account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/ui/MailActivity;->setResult(ILandroid/content/Intent;)V

    .line 315
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    .line 321
    :cond_1
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->m(Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method

.method public final o(Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 631
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0, p1, v1, v1}, Lcom/android/mail/ui/dt;->a(Lcom/android/mail/providers/Conversation;ZZ)V

    .line 634
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    const v1, 0x7f0d022f

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/TwoPaneLayout;

    iput-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    .line 210
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    const v1, 0x7f0d0235

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/dt;->aNR:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    if-nez v0, :cond_1

    .line 213
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "mLayout is null!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/TwoPaneLayout;->b(Lcom/android/mail/ui/dt;)V

    .line 217
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vO()Lcom/android/mail/ui/bB;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zi()V

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bB;->bv(Z)V

    .line 224
    if-eqz p1, :cond_2

    .line 225
    const-string v0, "saved-miscellaneous-view"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/dt;->aNX:Z

    .line 226
    const-string v0, "saved-miscellaneous-view-transaction-id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/dt;->aNZ:I

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    iget-object v1, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dD;->a(Lcom/android/mail/ui/dE;)V

    .line 235
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 238
    if-eqz p1, :cond_0

    .line 239
    const-string v0, "saved-peeking"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    .line 241
    const-string v0, "saved-peeking-conv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    iput-object v0, p0, Lcom/android/mail/ui/dt;->aNU:Lcom/android/mail/providers/Conversation;

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/mail/ui/a;->onDestroy()V

    .line 249
    iget-object v0, p0, Lcom/android/mail/ui/dt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/dt;->aNW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const v2, 0x7f0d028b

    const/4 v0, 0x0

    .line 420
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 421
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    if-eqz v1, :cond_1

    .line 422
    iget-boolean v1, p0, Lcom/android/mail/ui/dt;->aNT:Z

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/android/mail/providers/Conversation;->aza:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, v2, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    .line 424
    const v0, 0x7f0d027b

    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/android/mail/providers/Conversation;->aza:Z

    invoke-static {p1, v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    invoke-static {p1, v2, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v1, "saved-miscellaneous-view"

    iget v0, p0, Lcom/android/mail/ui/dt;->aNZ:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v0, "saved-miscellaneous-view-transaction-id"

    iget v1, p0, Lcom/android/mail/ui/dt;->aNZ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v0, "saved-peeking"

    iget-boolean v1, p0, Lcom/android/mail/ui/dt;->aNT:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string v0, "saved-peeking-conv"

    iget-object v1, p0, Lcom/android/mail/ui/dt;->aNU:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 264
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->Ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/dt;->bl(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public final pC()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 535
    invoke-super {p0}, Lcom/android/mail/ui/a;->pC()V

    .line 537
    iget-object v1, p0, Lcom/android/mail/ui/dt;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aBS:I

    if-ne v1, v0, :cond_1

    .line 539
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yr()V

    .line 542
    :cond_0
    return-void

    .line 537
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final vP()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->Ax()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final wB()Z
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    return v0
.end method

.method public final wL()Z
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method protected final wa()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vO()Lcom/android/mail/ui/bB;

    move-result-object v1

    .line 352
    if-nez v1, :cond_0

    .line 353
    sget-object v1, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v2, "no drawer to toggle open/closed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {v1}, Lcom/android/mail/ui/bB;->zj()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mail/ui/dt;->bA(Z)V

    goto :goto_0
.end method

.method public final wb()Z
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dt;->bC(Z)Z

    move-result v0

    return v0
.end method

.method public final wc()Z
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->Ap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dt;->bC(Z)Z

    .line 749
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->g(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    .line 741
    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wa()V

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wF()V

    goto :goto_0
.end method

.method protected final wd()V
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    .line 816
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->D()V

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-super {p0}, Lcom/android/mail/ui/a;->wd()V

    goto :goto_0
.end method

.method public final wf()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->cF()Landroid/support/v7/app/a;

    move-result-object v2

    .line 500
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 501
    :goto_0
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->Ap()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    .line 502
    :cond_0
    const v0, 0x7f02007b

    invoke-virtual {v2, v0}, Landroid/support/v7/app/a;->setHomeAsUpIndicator(I)V

    move-object v0, v2

    .line 506
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setHomeActionContentDescription(I)V

    .line 509
    return-void

    :cond_1
    move v0, v1

    .line 500
    goto :goto_0

    .line 505
    :cond_2
    const v0, 0x7f0200d7

    invoke-virtual {v2, v0}, Landroid/support/v7/app/a;->setHomeAsUpIndicator(I)V

    .line 506
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x7f09018e

    move-object v0, v2

    goto :goto_1

    :cond_3
    const v1, 0x7f09018d

    move-object v0, v2

    goto :goto_1
.end method

.method protected final wi()V
    .locals 4

    .prologue
    .line 697
    invoke-super {p0}, Lcom/android/mail/ui/a;->wi()V

    .line 699
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 700
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 701
    const v1, 0x7f0d0232

    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->sF()Lcom/android/mail/ui/dF;

    move-result-object v2

    const-string v3, "wait-fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 702
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 703
    return-void
.end method

.method protected final wj()V
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->sF()Lcom/android/mail/ui/dF;

    move-result-object v0

    .line 708
    if-nez v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 715
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 716
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 717
    invoke-super {p0}, Lcom/android/mail/ui/a;->wj()V

    .line 718
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vS()V

    goto :goto_0
.end method

.method public final wn()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    return v0
.end method

.method protected final wv()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 824
    invoke-super {p0}, Lcom/android/mail/ui/a;->wv()V

    .line 825
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AM()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 830
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNU:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNU:Lcom/android/mail/providers/Conversation;

    .line 832
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mail/ui/dt;->aNU:Lcom/android/mail/providers/Conversation;

    .line 833
    sget-object v1, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v2, "peeking at saved conv=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 841
    :goto_0
    invoke-direct {p0, v0, v5, v4}, Lcom/android/mail/ui/dt;->a(Lcom/android/mail/providers/Conversation;ZZ)V

    .line 843
    :cond_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    .line 836
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 837
    iput v4, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 838
    sget-object v1, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v2, "peeking at default/zeroth conv=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected final x(F)V
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vO()Lcom/android/mail/ui/bB;

    move-result-object v0

    .line 399
    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "no drawer to toggle open/closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/bB;->x(F)V

    goto :goto_0
.end method

.method public final xh()I
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x1

    return v0
.end method

.method public final xq()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/mail/ui/dt;->aNQ:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->Az()Z

    move-result v0

    return v0
.end method

.method public final xr()I
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f0400c1

    return v0
.end method

.method public final xs()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 959
    iget-object v1, p0, Lcom/android/mail/ui/dt;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v1

    .line 960
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mail/ui/dt;->aNY:Z

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yY()Z
    .locals 1

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    return v0
.end method

.method public final yZ()V
    .locals 1

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->wa()V

    .line 920
    :cond_0
    return-void
.end method

.method public final zB()Z
    .locals 1

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/android/mail/ui/dt;->aNY:Z

    return v0
.end method

.method public final za()V
    .locals 5

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/mail/ui/dt;->Au()Z

    move-result v0

    .line 925
    if-eqz v0, :cond_0

    .line 926
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "TPC: tap on CV triggered peek->normal, marking seen. conv=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/dt;->aCW:Lcom/android/mail/providers/Conversation;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 929
    :cond_0
    return-void
.end method

.method protected final zk()V
    .locals 3

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/mail/ui/dt;->vO()Lcom/android/mail/ui/bB;

    move-result-object v0

    .line 389
    if-nez v0, :cond_0

    .line 390
    sget-object v0, Lcom/android/mail/ui/dt;->mW:Ljava/lang/String;

    const-string v1, "no drawer to toggle open/closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zk()V

    goto :goto_0
.end method
