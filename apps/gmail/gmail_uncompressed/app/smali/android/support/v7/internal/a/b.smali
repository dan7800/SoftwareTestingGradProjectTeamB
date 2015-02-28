.class public final Landroid/support/v7/internal/a/b;
.super Landroid/support/v7/app/a;
.source "SourceFile"


# instance fields
.field private of:Landroid/support/v7/internal/a/i;

.field private uo:Landroid/support/v7/widget/Toolbar;

.field private up:Landroid/support/v7/internal/widget/v;

.field private uq:Z

.field private ur:Z

.field private us:Z

.field private ut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/c;",
            ">;"
        }
    .end annotation
.end field

.field private uu:Landroid/view/Window;

.field private uv:Landroid/support/v7/internal/view/menu/g;

.field private final uw:Ljava/lang/Runnable;

.field private final ux:Landroid/support/v7/widget/aa;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Landroid/support/v7/internal/a/i;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->ut:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Landroid/support/v7/internal/a/c;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/c;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->uw:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Landroid/support/v7/internal/a/d;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/d;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->ux:Landroid/support/v7/widget/aa;

    .line 83
    iput-object p1, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    .line 84
    new-instance v0, Landroid/support/v7/internal/widget/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    .line 85
    new-instance v0, Landroid/support/v7/internal/a/h;

    invoke-direct {v0, p0, p4}, Landroid/support/v7/internal/a/h;-><init>(Landroid/support/v7/internal/a/b;Landroid/support/v7/internal/a/i;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->of:Landroid/support/v7/internal/a/i;

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->of:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/v;->a(Landroid/support/v7/internal/a/i;)V

    .line 87
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->ux:Landroid/support/v7/widget/aa;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/aa;)V

    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/widget/v;->j(Ljava/lang/CharSequence;)V

    .line 90
    iput-object p3, p0, Landroid/support/v7/internal/a/b;->uu:Landroid/view/Window;

    .line 91
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->of:Landroid/support/v7/internal/a/i;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/a/b;Landroid/view/Menu;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uv:Landroid/support/v7/internal/view/menu/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uv:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/g;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uv:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/g;->d(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->uq:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/v;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->uq:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/internal/a/b;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uw:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/internal/a/b;)Landroid/view/Menu;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/internal/a/b;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->ur:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/a/e;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/internal/a/e;-><init>(Landroid/support/v7/internal/a/b;B)V

    new-instance v2, Landroid/support/v7/internal/a/f;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/internal/a/f;-><init>(Landroid/support/v7/internal/a/b;B)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->ur:Z

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/internal/a/b;)Landroid/view/Window;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uu:Landroid/view/Window;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->of:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/a/i;->a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v7/app/c;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/g;)V
    .locals 3

    .prologue
    .line 558
    invoke-direct {p0}, Landroid/support/v7/internal/a/b;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 560
    instance-of v1, v0, Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_1

    .line 561
    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    .line 563
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uv:Landroid/support/v7/internal/view/menu/g;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uv:Landroid/support/v7/internal/view/menu/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 566
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uv:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/x;)V

    .line 569
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/a/b;->uv:Landroid/support/v7/internal/view/menu/g;

    .line 571
    if-eqz p1, :cond_1

    .line 572
    new-instance v1, Landroid/support/v7/internal/a/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/a/g;-><init>(Landroid/support/v7/internal/a/b;B)V

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 576
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v7/app/b;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setCustomView(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/d;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    new-instance v1, Landroid/support/v7/internal/a/a;

    invoke-direct {v1, p2}, Landroid/support/v7/internal/a/a;-><init>(Landroid/support/v7/app/d;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v7/internal/widget/v;->a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/internal/widget/q;)V

    .line 212
    return-void
.end method

.method public final cA()V
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/b;->setDisplayOptions(II)V

    .line 280
    return-void
.end method

.method public final cB()V
    .locals 2

    .prologue
    .line 289
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/b;->setDisplayOptions(II)V

    .line 290
    return-void
.end method

.method public final cC()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 294
    invoke-virtual {p0, v0, v0}, Landroid/support/v7/internal/a/b;->setDisplayOptions(II)V

    .line 295
    return-void
.end method

.method public final cD()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final cE()Z
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 438
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->uw:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public final cZ()Landroid/support/v7/internal/a/i;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->of:Landroid/support/v7/internal/a/i;

    return-object v0
.end method

.method public final collapseActionView()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 446
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cx()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    const v1, 0x106000d

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/v;->setIcon(I)V

    .line 117
    return-void
.end method

.method public final cy()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/v;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method public final cz()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/b;->setDisplayOptions(II)V

    .line 275
    return-void
.end method

.method final da()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-direct {p0}, Landroid/support/v7/internal/a/b;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 453
    instance-of v2, v1, Landroid/support/v7/internal/view/menu/i;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    move-object v2, v0

    .line 454
    :goto_0
    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->dO()V

    .line 458
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 459
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->of:Landroid/support/v7/internal/a/i;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/support/v7/internal/a/i;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->of:Landroid/support/v7/internal/a/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/support/v7/internal/a/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_2
    if-eqz v2, :cond_3

    .line 465
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->dP()V

    .line 468
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 453
    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 465
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->dP()V

    :cond_5
    throw v0
.end method

.method public final getDisplayOptions()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getNavigationMode()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public final getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, -0x1

    return v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->j(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public final j(Z)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final k(Z)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->us:Z

    if-ne p1, v0, :cond_1

    .line 496
    :cond_0
    return-void

    .line 490
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/a/b;->us:Z

    .line 492
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 493
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 494
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/c;

    invoke-interface {v0, p1}, Landroid/support/v7/app/c;->onMenuVisibilityChanged(Z)V

    .line 493
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/support/v7/app/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    return-void
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 284
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/b;->setDisplayOptions(II)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDisplayOptions(II)V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getDisplayOptions()I

    move-result v0

    .line 269
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/v;->setDisplayOptions(I)V

    .line 270
    return-void
.end method

.method public final setHomeActionContentDescription(I)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setNavigationContentDescription(I)V

    .line 192
    return-void
.end method

.method public final setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 177
    return-void
.end method

.method public final setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public final setNavigationMode(I)V
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setNavigationMode(I)V

    .line 328
    return-void
.end method

.method public final setSelectedNavigationItem(I)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->am(I)V

    .line 219
    return-void

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/v;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->uo:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 416
    return-void
.end method
