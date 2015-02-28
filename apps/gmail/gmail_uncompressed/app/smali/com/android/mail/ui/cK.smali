.class public final Lcom/android/mail/ui/cK;
.super Lcom/android/mail/ui/a;
.source "SourceFile"


# instance fields
.field private aME:Z

.field private aMF:I

.field private aMG:I

.field private aMH:Z

.field private final aMI:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/dD;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/a;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/dD;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/cK;->aME:Z

    .line 61
    iput v1, p0, Lcom/android/mail/ui/cK;->aMF:I

    .line 62
    iput v1, p0, Lcom/android/mail/ui/cK;->aMG:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/cK;->aMH:Z

    .line 71
    new-instance v0, Lcom/android/mail/ui/cL;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/cL;-><init>(Lcom/android/mail/ui/cK;)V

    iput-object v0, p0, Lcom/android/mail/ui/cK;->aMI:Landroid/animation/AnimatorListenerAdapter;

    .line 101
    return-void
.end method

.method private a(Landroid/app/Fragment;ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 360
    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 361
    const v2, 0x7f0d01bb

    invoke-virtual {v1, v2, p1, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 362
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v1

    .line 363
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 364
    return v1
.end method

.method private static a(Lcom/android/mail/providers/Account;Lcom/android/mail/c;)Z
    .locals 1

    .prologue
    .line 150
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/mail/c;->a(Lcom/android/mail/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-static {v0, p0}, Lcom/android/mail/ui/cK;->a(Lcom/android/mail/utils/p;Lcom/android/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/android/mail/utils/p;Lcom/android/mail/providers/Account;)Z
    .locals 1

    .prologue
    .line 139
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zV()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 447
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 448
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->ws()V

    .line 449
    iput-boolean v2, p0, Lcom/android/mail/ui/cK;->aME:Z

    .line 450
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AE()V

    .line 456
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/cK;->aqp:Lcom/android/mail/providers/Folder;

    .line 457
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/android/mail/ui/cK;->a(Lcom/android/mail/providers/Folder;Z)V

    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cK;->bn(Z)V

    .line 460
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/cK;->bm(Z)V

    .line 461
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCQ:Lcom/android/mail/providers/Folder;

    goto :goto_1
.end method


# virtual methods
.method protected final a(Lcom/android/mail/ui/MailActivity;)Lcom/android/mail/ui/ActionableToastBar;
    .locals 2

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/MailActivity;)Lcom/android/mail/ui/ActionableToastBar;

    move-result-object v0

    .line 194
    const v1, 0x7f0d01a9

    invoke-virtual {p1, v1}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ActionableToastBar;->aw(Landroid/view/View;)V

    .line 195
    return-object v0
.end method

.method public final a(Landroid/app/Fragment;I)V
    .locals 2

    .prologue
    .line 531
    const/16 v0, 0x1001

    const-string v1, "tag-custom-fragment"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/ui/cK;->a(Landroid/app/Fragment;ILjava/lang/String;)I

    .line 533
    return-void
.end method

.method protected final a(Lcom/android/mail/providers/Conversation;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 276
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Conversation;Z)V

    .line 278
    iput-boolean v6, p0, Lcom/android/mail/ui/cK;->aME:Z

    .line 279
    if-nez p1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/mail/ui/cK;->zV()V

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->wr()V

    .line 284
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCV:Lcom/android/mail/c;

    invoke-static {v0}, Lcom/android/mail/c;->a(Lcom/android/mail/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AF()V

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDz:Lcom/android/mail/browse/Z;

    iget-object v1, p0, Lcom/android/mail/ui/cK;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, p0, Lcom/android/mail/ui/cK;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/android/mail/ui/cK;->aMI:Landroid/animation/AnimatorListenerAdapter;

    :goto_2
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/Z;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;ZLandroid/animation/AnimatorListenerAdapter;)V

    .line 292
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/cK;->bn(Z)V

    .line 293
    invoke-virtual {p0, v6}, Lcom/android/mail/ui/cK;->bm(Z)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AD()V

    goto :goto_1

    .line 290
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 7

    .prologue
    const v3, 0x7f090103

    const/4 v4, 0x1

    .line 470
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cK;->Nc:Lcom/android/mail/providers/Account;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 472
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->vN()Lcom/android/mail/ui/aw;

    move-result-object v1

    .line 473
    packed-switch v0, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/cK;->b(Lcom/android/mail/ui/ae;)Lcom/android/mail/ui/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/mail/ui/ToastBarOperation;->au(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v5, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ab;Ljava/lang/CharSequence;IZZLcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 487
    :pswitch_1
    if-eqz v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/cK;->b(Lcom/android/mail/ui/ae;)Lcom/android/mail/ui/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/mail/ui/ToastBarOperation;->au(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v5, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ab;Ljava/lang/CharSequence;IZZLcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/MailActivity;->b(Lcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/mail/ui/dy;)V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;Z)Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Lcom/android/mail/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->ws()V

    .line 233
    iput-boolean v4, p0, Lcom/android/mail/ui/cK;->aME:Z

    .line 234
    invoke-static {p1}, Lcom/android/mail/c;->a(Lcom/android/mail/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AE()V

    .line 239
    :goto_0
    iget-boolean v0, p0, Lcom/android/mail/ui/cK;->aMH:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x1003

    .line 242
    :goto_1
    invoke-static {p1}, Lcom/android/mail/ui/aw;->c(Lcom/android/mail/c;)Lcom/android/mail/ui/aw;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/android/mail/ui/cK;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v2, p1}, Lcom/android/mail/ui/cK;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/c;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 248
    const-string v2, "tag-conversation-list"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mail/ui/cK;->a(Landroid/app/Fragment;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/cK;->aMF:I

    .line 261
    :goto_2
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 263
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/cK;->bn(Z)V

    .line 264
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/cK;->bm(Z)V

    .line 265
    iput-boolean v3, p0, Lcom/android/mail/ui/cK;->aMH:Z

    .line 266
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    goto :goto_0

    .line 239
    :cond_1
    const/16 v0, 0x1001

    goto :goto_1

    .line 252
    :cond_2
    iget-object v2, p1, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    iput-object v2, p0, Lcom/android/mail/ui/cK;->aCQ:Lcom/android/mail/providers/Folder;

    .line 253
    const-string v2, "tag-conversation-list"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mail/ui/cK;->a(Landroid/app/Fragment;ILjava/lang/String;)I

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/cK;->aMF:I

    goto :goto_2
.end method

.method protected final c(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 226
    const-string v0, " lastConvListTransId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget v0, p0, Lcom/android/mail/ui/cK;->aMF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method public final cH(I)Z
    .locals 1

    .prologue
    .line 328
    const v0, 0x7f0d0276

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0277

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0278

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0279

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d027a

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d027f

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0280

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0281

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0284

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0285

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d0286

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d028c

    if-eq p1, v0, :cond_0

    const v0, 0x7f0d027d

    if-ne p1, v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final cI(I)V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->cI(I)V

    .line 209
    invoke-static {p1}, Lcom/android/mail/ui/dD;->dk(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDz:Lcom/android/mail/browse/Z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/Z;->aB(Z)V

    .line 213
    :cond_0
    invoke-static {p1}, Lcom/android/mail/ui/dD;->do(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cK;->bm(Z)V

    .line 219
    :cond_1
    invoke-static {p1}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cK;->k(Lcom/android/mail/providers/Conversation;)V

    .line 222
    :cond_2
    return-void
.end method

.method public final cM(I)Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/android/mail/providers/Folder;Z)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 507
    packed-switch v0, :pswitch_data_0

    .line 511
    :goto_0
    return-void

    .line 510
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/cK;->b(Lcom/android/mail/providers/Folder;Z)V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/android/mail/providers/Folder;)V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    const-string v1, "extra-folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/ui/MailActivity;->setResult(ILandroid/content/Intent;)V

    .line 407
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/cK;->k(Lcom/android/mail/providers/Folder;)V

    .line 411
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->h(Lcom/android/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public final n(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->n(Lcom/android/mail/providers/Account;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/cK;->aMH:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->vX()V

    .line 164
    return-void
.end method

.method public final o(Lcom/android/mail/providers/Conversation;)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    const v1, 0x7f0d01d9

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/mail/ui/cK;->aDP:Landroid/support/v4/widget/DrawerLayout;

    .line 174
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bI()V

    .line 177
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    const v1, 0x7f0901bd

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/mail/ui/cK;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/cK;->aDQ:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDQ:Landroid/view/View;

    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    const v1, 0x7f0d0173

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 105
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 106
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "conversation-list-transaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/cK;->aMF:I

    .line 111
    const-string v0, "conversation-transaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/cK;->aMG:I

    .line 112
    const-string v0, "conversation-list-visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/cK;->aME:Z

    .line 113
    const-string v0, "conversation-list-never-shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/cK;->aMH:Z

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/mail/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "conversation-list-transaction"

    iget v1, p0, Lcom/android/mail/ui/cK;->aMF:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v0, "conversation-transaction"

    iget v1, p0, Lcom/android/mail/ui/cK;->aMG:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v0, "conversation-list-visible"

    iget-boolean v1, p0, Lcom/android/mail/ui/cK;->aME:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "conversation-list-never-shown"

    iget-boolean v1, p0, Lcom/android/mail/ui/cK;->aMH:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method protected final vP()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/mail/ui/cK;->aME:Z

    return v0
.end method

.method public final wL()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public final wb()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 385
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 386
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cK;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/ui/cK;->aCV:Lcom/android/mail/c;

    invoke-static {v0, v1}, Lcom/android/mail/ui/cK;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->wF()V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/mail/ui/ActionableToastBar;->f(ZZ)V

    .line 395
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AJ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/ui/cK;->zV()V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    goto :goto_0
.end method

.method public final wc()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 424
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 425
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    .line 443
    :cond_0
    :goto_0
    return v2

    .line 428
    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->g(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    .line 432
    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->wa()V

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->wF()V

    goto :goto_0

    .line 438
    :cond_4
    if-eq v0, v2, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 441
    :cond_5
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->wb()Z

    goto :goto_0
.end method

.method public final wf()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected final wi()V
    .locals 3

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/mail/ui/a;->wi()V

    .line 304
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->sF()Lcom/android/mail/ui/dF;

    move-result-object v0

    const/16 v1, 0x1001

    const-string v2, "wait-fragment"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mail/ui/cK;->a(Landroid/app/Fragment;ILjava/lang/String;)I

    .line 306
    return-void
.end method

.method protected final wj()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCQ:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCQ:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, p0, Lcom/android/mail/ui/cK;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/android/mail/ui/cK;->a(Lcom/android/mail/utils/p;Lcom/android/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/cK;->vS()V

    .line 311
    :goto_0
    invoke-super {p0}, Lcom/android/mail/ui/a;->wj()V

    .line 312
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aCQ:Lcom/android/mail/providers/Folder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/cK;->a(Lcom/android/mail/providers/Folder;Z)V

    goto :goto_0
.end method

.method public final xh()I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public final xq()Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public final xr()I
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f04009e

    return v0
.end method

.method public final xs()Z
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zB()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method
