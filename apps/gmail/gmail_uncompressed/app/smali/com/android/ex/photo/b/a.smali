.class public Lcom/android/ex/photo/b/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/L;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/ex/photo/i;
.implements Lcom/android/ex/photo/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/L",
        "<",
        "Lcom/android/ex/photo/c/c;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/ex/photo/i;",
        "Lcom/android/ex/photo/j;"
    }
.end annotation


# instance fields
.field protected agV:Lcom/android/ex/photo/a/d;

.field protected agW:Z

.field protected agv:Ljava/lang/String;

.field protected agw:Ljava/lang/String;

.field protected ahl:Z

.field protected aih:Lcom/android/ex/photo/h;

.field protected aii:Landroid/content/BroadcastReceiver;

.field protected aij:Lcom/android/ex/photo/views/PhotoView;

.field protected aik:Landroid/widget/ImageView;

.field protected ail:Landroid/widget/TextView;

.field protected aim:Landroid/widget/ImageView;

.field protected ain:Lcom/android/ex/photo/views/e;

.field protected aio:Z

.field protected aip:Z

.field protected aiq:Z

.field protected air:Landroid/view/View;

.field protected ais:Z

.field protected ait:Z

.field protected mIntent:Landroid/content/Intent;

.field protected vk:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->aiq:Z

    .line 136
    return-void
.end method

.method public static a(Landroid/content/Intent;IZ)Lcom/android/ex/photo/b/a;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/android/ex/photo/b/a;

    invoke-direct {v0}, Lcom/android/ex/photo/b/a;-><init>()V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg-intent"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "arg-position"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "arg-show-spinner"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/b/a;->setArguments(Landroid/os/Bundle;)V

    .line 148
    return-object v0
.end method

.method private al(Z)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/ex/photo/views/PhotoView;->al(Z)V

    .line 432
    return-void
.end method

.method private nZ()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->ol()V

    .line 485
    :cond_0
    return-void
.end method

.method private ob()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 519
    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->agW:Z

    .line 520
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0, p0}, Lcom/android/ex/photo/h;->g(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/j",
            "<",
            "Lcom/android/ex/photo/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-boolean v1, p0, Lcom/android/ex/photo/b/a;->aip:Z

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    return-object v0

    .line 326
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 334
    :goto_1
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v1, p1, v0}, Lcom/android/ex/photo/h;->e(ILjava/lang/String;)Landroid/support/v4/content/j;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->agw:Ljava/lang/String;

    goto :goto_1

    .line 331
    :pswitch_1
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->agv:Ljava/lang/String;

    goto :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    sget v0, Lcom/android/ex/photo/E;->ahV:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 220
    sget v0, Lcom/android/ex/photo/C;->ahQ:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/views/PhotoView;

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    const-string v3, "max_scale"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/views/PhotoView;->t(F)V

    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    iget-boolean v1, p0, Lcom/android/ex/photo/b/a;->agW:Z

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/views/PhotoView;->am(Z)V

    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, v5}, Lcom/android/ex/photo/views/PhotoView;->al(Z)V

    sget v0, Lcom/android/ex/photo/C;->ahO:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->air:Landroid/view/View;

    sget v0, Lcom/android/ex/photo/C;->ahP:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->aik:Landroid/widget/ImageView;

    iput-boolean v5, p0, Lcom/android/ex/photo/b/a;->ais:Z

    sget v0, Lcom/android/ex/photo/C;->ahK:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sget v1, Lcom/android/ex/photo/C;->ahI:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/ex/photo/views/e;

    invoke-direct {v3, v1, v0}, Lcom/android/ex/photo/views/e;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    iput-object v3, p0, Lcom/android/ex/photo/b/a;->ain:Lcom/android/ex/photo/views/e;

    sget v0, Lcom/android/ex/photo/C;->ahJ:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->ail:Landroid/widget/TextView;

    sget v0, Lcom/android/ex/photo/C;->ahS:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->aim:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/ex/photo/b/a;->ob()V

    .line 221
    return-object v2
.end method

.method public final a(Landroid/support/v4/content/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/j",
            "<",
            "Lcom/android/ex/photo/c/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/j;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    check-cast p2, Lcom/android/ex/photo/c/c;

    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/ex/photo/c/c;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/content/j;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-boolean v1, p0, Lcom/android/ex/photo/b/a;->aiq:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->ain:Lcom/android/ex/photo/views/e;

    invoke-virtual {v1, v5}, Lcom/android/ex/photo/views/e;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    iget v1, p0, Lcom/android/ex/photo/b/a;->vk:I

    invoke-interface {v0, v1}, Lcom/android/ex/photo/h;->bF(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/ex/photo/b/a;->ob()V

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/ex/photo/b/a;->ahl:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->oa()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aik:Landroid/widget/ImageView;

    sget v2, Lcom/android/ex/photo/B;->ahH:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/ex/photo/b/a;->ais:Z

    :goto_2
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aik:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/ex/photo/y;->ahB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aik:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/ex/photo/b/a;->al(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aik:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v4, p0, Lcom/android/ex/photo/b/a;->ais:Z

    goto :goto_2

    :cond_6
    :pswitch_1
    iget v1, p2, Lcom/android/ex/photo/c/c;->status:I

    if-ne v1, v4, :cond_7

    iput-boolean v3, p0, Lcom/android/ex/photo/b/a;->aiq:Z

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->ail:Landroid/widget/TextView;

    sget v2, Lcom/android/ex/photo/F;->ahW:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->ail:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v1, p0, v3}, Lcom/android/ex/photo/h;->a(Lcom/android/ex/photo/b/a;Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/ex/photo/c/c;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v2, v1}, Lcom/android/ex/photo/views/PhotoView;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    invoke-direct {p0, v4}, Lcom/android/ex/photo/b/a;->al(Z)V

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->air:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/android/ex/photo/b/a;->aiq:Z

    :cond_9
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v1, p0, v4}, Lcom/android/ex/photo/h;->a(Lcom/android/ex/photo/b/a;Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->agV:Lcom/android/ex/photo/a/d;

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget v0, p0, Lcom/android/ex/photo/b/a;->vk:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->oa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0, p0, p1}, Lcom/android/ex/photo/h;->a(Lcom/android/ex/photo/b/a;Landroid/database/Cursor;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->h()Landroid/support/v4/app/K;

    move-result-object v1

    .line 546
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/support/v4/app/K;->g(I)Landroid/support/v4/content/j;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_2

    .line 549
    check-cast v0, Lcom/android/ex/photo/c/b;

    .line 550
    iget-object v2, p0, Lcom/android/ex/photo/b/a;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v2, p1}, Lcom/android/ex/photo/a/d;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/photo/b/a;->agv:Ljava/lang/String;

    .line 551
    iget-object v2, p0, Lcom/android/ex/photo/b/a;->agv:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/ex/photo/c/b;->aV(Ljava/lang/String;)V

    .line 552
    invoke-interface {v0}, Lcom/android/ex/photo/c/b;->forceLoad()V

    .line 555
    :cond_2
    iget-boolean v0, p0, Lcom/android/ex/photo/b/a;->ais:Z

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/K;->g(I)Landroid/support/v4/content/j;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    .line 559
    check-cast v0, Lcom/android/ex/photo/c/b;

    .line 560
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v1, p1}, Lcom/android/ex/photo/a/d;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/photo/b/a;->agw:Ljava/lang/String;

    .line 561
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->agw:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/ex/photo/c/b;->aV(Ljava/lang/String;)V

    .line 562
    invoke-interface {v0}, Lcom/android/ex/photo/c/b;->forceLoad()V

    goto :goto_0
.end method

.method public final nK()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/ex/photo/b/a;->ob()V

    .line 456
    return-void
.end method

.method public final nL()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0, p0}, Lcom/android/ex/photo/h;->f(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/android/ex/photo/b/a;->nZ()V

    .line 476
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->oa()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->h()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/K;->a(ILandroid/support/v4/app/L;)Landroid/support/v4/content/j;

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0, p0}, Lcom/android/ex/photo/h;->a(Lcom/android/ex/photo/b/a;)V

    goto :goto_0
.end method

.method public final nM()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/ex/photo/b/a;->nZ()V

    .line 461
    return-void
.end method

.method public final nN()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 489
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v1, p0}, Lcom/android/ex/photo/h;->f(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v1}, Lcom/android/ex/photo/views/PhotoView;->oi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final nO()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v1, p0}, Lcom/android/ex/photo/h;->f(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v1}, Lcom/android/ex/photo/views/PhotoView;->oj()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final nY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->agv:Ljava/lang/String;

    return-object v0
.end method

.method public final oa()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->oa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final oc()Lcom/android/ex/photo/views/e;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->ain:Lcom/android/ex/photo/views/e;

    return-object v0
.end method

.method public final od()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->ail:Landroid/widget/TextView;

    return-object v0
.end method

.method public final oe()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aim:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final of()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/ex/photo/b/a;->aiq:Z

    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->f()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->nG()Lcom/android/ex/photo/k;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    .line 164
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be a derived class of PhotoViewActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0}, Lcom/android/ex/photo/h;->nJ()Lcom/android/ex/photo/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->agV:Lcom/android/ex/photo/a/d;

    .line 169
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->agV:Lcom/android/ex/photo/a/d;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback reported null adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/photo/b/a;->ob()V

    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0}, Lcom/android/ex/photo/h;->nI()V

    .line 451
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 191
    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v0, "arg-intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    const-string v2, "display_thumbs_fullscreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->ahl:Z

    .line 198
    const-string v0, "arg-position"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/b/a;->vk:I

    .line 199
    const-string v0, "arg-show-spinner"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->aip:Z

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->aiq:Z

    .line 202
    if-eqz p1, :cond_2

    .line 203
    const-string v0, "com.android.mail.photo.fragments.PhotoViewFragment.INTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    const-string v1, "resolved_photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->agv:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    const-string v1, "thumbnail_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->agw:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    const-string v1, "watch_network"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->aio:Z

    goto :goto_0
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->clear()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    .line 304
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 305
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    .line 183
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 184
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/ex/photo/b/a;->aio:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->f()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aii:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0, p0}, Lcom/android/ex/photo/h;->b(Lcom/android/ex/photo/i;)V

    .line 292
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    iget v1, p0, Lcom/android/ex/photo/b/a;->vk:I

    invoke-interface {v0, v1}, Lcom/android/ex/photo/h;->bE(I)V

    .line 293
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aij:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->ok()V

    .line 294
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 295
    return-void
.end method

.method public final onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 248
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 249
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    iget v1, p0, Lcom/android/ex/photo/b/a;->vk:I

    invoke-interface {v0, v1, p0}, Lcom/android/ex/photo/h;->a(ILcom/android/ex/photo/j;)V

    .line 250
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aih:Lcom/android/ex/photo/h;

    invoke-interface {v0, p0}, Lcom/android/ex/photo/h;->a(Lcom/android/ex/photo/i;)V

    .line 252
    iget-boolean v0, p0, Lcom/android/ex/photo/b/a;->aio:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->aii:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/ex/photo/b/b;

    invoke-direct {v0, p0, v4}, Lcom/android/ex/photo/b/b;-><init>(Lcom/android/ex/photo/b/a;B)V

    iput-object v0, p0, Lcom/android/ex/photo/b/a;->aii:Landroid/content/BroadcastReceiver;

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->f()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->aii:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/k;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->f()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 260
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->ait:Z

    .line 270
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->oa()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/b/a;->aiq:Z

    .line 272
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->air:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->h()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    .line 280
    invoke-virtual {p0}, Lcom/android/ex/photo/b/a;->h()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    .line 283
    :cond_2
    return-void

    .line 266
    :cond_3
    iput-boolean v4, p0, Lcom/android/ex/photo/b/a;->ait:Z

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "com.android.mail.photo.fragments.PhotoViewFragment.INTENT"

    iget-object v1, p0, Lcom/android/ex/photo/b/a;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 318
    :cond_0
    return-void
.end method
