.class public Landroid/support/v7/internal/a/j;
.super Landroid/support/v7/app/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/l;


# static fields
.field private static final uz:Z

.field static final synthetic vb:Z


# instance fields
.field private aG:Landroid/support/v4/app/k;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private uA:Landroid/content/Context;

.field private uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private uC:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private uD:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private uE:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private uF:Landroid/view/View;

.field private uG:Landroid/support/v7/internal/widget/D;

.field private uH:Landroid/support/v7/internal/a/o;

.field private uI:I

.field private uJ:Z

.field uK:Landroid/support/v7/internal/a/n;

.field uL:Landroid/support/v7/c/a;

.field uM:Landroid/support/v7/c/b;

.field private uN:I

.field private uO:Z

.field private uP:I

.field private uQ:Z

.field private uR:Z

.field private uS:Z

.field private uT:Z

.field private uU:Z

.field private uV:Landroid/support/v7/internal/view/h;

.field private uW:Z

.field uX:Z

.field final uY:Landroid/support/v4/view/bk;

.field final uZ:Landroid/support/v4/view/bk;

.field private up:Landroid/support/v7/internal/widget/v;

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

.field final va:Landroid/support/v4/view/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-class v0, Landroid/support/v7/internal/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/internal/a/j;->vb:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v7/internal/a/j;->uz:Z

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public constructor <init>(Landroid/support/v7/app/g;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->b:Ljava/util/ArrayList;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/a/j;->uI:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->ut:Ljava/util/ArrayList;

    .line 120
    iput v2, p0, Landroid/support/v7/internal/a/j;->uP:I

    .line 122
    iput-boolean v1, p0, Landroid/support/v7/internal/a/j;->uQ:Z

    .line 127
    iput-boolean v1, p0, Landroid/support/v7/internal/a/j;->uU:Z

    .line 135
    new-instance v0, Landroid/support/v7/internal/a/k;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/k;-><init>(Landroid/support/v7/internal/a/j;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uY:Landroid/support/v4/view/bk;

    .line 155
    new-instance v0, Landroid/support/v7/internal/a/l;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/l;-><init>(Landroid/support/v7/internal/a/j;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uZ:Landroid/support/v4/view/bk;

    .line 163
    new-instance v0, Landroid/support/v7/internal/a/m;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/m;-><init>(Landroid/support/v7/internal/a/j;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->va:Landroid/support/v4/view/bm;

    .line 173
    iput-object p1, p0, Landroid/support/v7/internal/a/j;->aG:Landroid/support/v4/app/k;

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/app/g;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 176
    sget v0, Landroid/support/v7/a/g;->qv:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/l;)V

    :cond_0
    sget v0, Landroid/support/v7/a/g;->qm:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/support/v7/internal/widget/v;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/support/v7/internal/widget/v;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    sget v0, Landroid/support/v7/a/g;->qr:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uD:Landroid/support/v7/internal/widget/ActionBarContextView;

    sget v0, Landroid/support/v7/a/g;->qo:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    sget v0, Landroid/support/v7/a/g;->qx:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uD:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v4, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->fS()Landroid/support/v7/internal/widget/v;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    iput v2, p0, Landroid/support/v7/internal/a/j;->uN:I

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iput-boolean v1, p0, Landroid/support/v7/internal/a/j;->uJ:Z

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->f(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dm()Z

    iget-object v4, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dk()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/j;->n(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/a/l;->qP:[I

    sget v6, Landroid/support/v7/a/b;->actionBarStyle:I

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Landroid/support/v7/a/l;->qZ:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->ez()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Landroid/support/v7/internal/a/j;->uX:Z

    iget-object v4, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    :cond_8
    sget v1, Landroid/support/v7/a/l;->qX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_9

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/ad;->f(Landroid/view/View;F)V

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/ad;->f(Landroid/view/View;F)V

    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    if-nez p2, :cond_a

    .line 178
    const v0, 0x1020002

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    .line 180
    :cond_a
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/a/j;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uQ:Z

    return v0
.end method

.method private static a(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 738
    if-eqz p2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/internal/a/j;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(ZZ)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v7/internal/a/j;->a(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/internal/a/j;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/support/v7/internal/a/j;->uN:I

    return v0
.end method

.method static synthetic f(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/internal/a/j;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uR:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v7/internal/a/j;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uS:Z

    return v0
.end method

.method static synthetic j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uD:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/v;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    return-object v0
.end method

.method static synthetic l(Landroid/support/v7/internal/a/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private n(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    iput-boolean p1, p0, Landroid/support/v7/internal/a/j;->uO:Z

    .line 273
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uO:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/v;->b(Landroid/support/v7/internal/widget/D;)V

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/D;)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/a/j;->getNavigationMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 281
    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    if-eqz v3, :cond_0

    .line 282
    if-eqz v0, :cond_3

    .line 283
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    .line 284
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ad;->v(Landroid/view/View;)V

    .line 291
    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    iget-boolean v3, p0, Landroid/support/v7/internal/a/j;->uO:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/internal/widget/v;->D(Z)V

    .line 292
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/internal/a/j;->uO:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->C(Z)V

    .line 293
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/D;)V

    .line 278
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/v;->b(Landroid/support/v7/internal/widget/D;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 280
    goto :goto_1

    .line 288
    :cond_3
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 291
    goto :goto_3

    :cond_5
    move v1, v2

    .line 292
    goto :goto_4
.end method

.method private p(Z)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 749
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uR:Z

    iget-boolean v1, p0, Landroid/support/v7/internal/a/j;->uS:Z

    iget-boolean v2, p0, Landroid/support/v7/internal/a/j;->uT:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/a/j;->a(ZZZ)Z

    move-result v0

    .line 752
    if-eqz v0, :cond_9

    .line 753
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uU:Z

    if-nez v0, :cond_5

    .line 754
    iput-boolean v5, p0, Landroid/support/v7/internal/a/j;->uU:Z

    .line 755
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroid/support/v7/internal/a/j;->uP:I

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/support/v7/internal/a/j;->uz:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uW:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->va:Landroid/support/v4/view/bm;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/aV;->a(Landroid/support/v4/view/bm;)Landroid/support/v4/view/aV;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->e(Landroid/support/v4/view/aV;)Landroid/support/v7/internal/view/h;

    iget-boolean v2, p0, Landroid/support/v7/internal/a/j;->uQ:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->e(Landroid/support/v4/view/aV;)Landroid/support/v7/internal/view/h;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/internal/a/j;->uN:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->e(Landroid/support/v4/view/aV;)Landroid/support/v7/internal/view/h;

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->b(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->du()Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uZ:Landroid/support/v4/view/bk;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->b(Landroid/support/v4/view/bk;)Landroid/support/v7/internal/view/h;

    iput-object v1, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->start()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ad;->v(Landroid/view/View;)V

    .line 763
    :cond_5
    :goto_1
    return-void

    .line 755
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ad;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uQ:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/a/j;->uN:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ad;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uZ:Landroid/support/v4/view/bk;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bk;->B(Landroid/view/View;)V

    goto :goto_0

    .line 758
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uU:Z

    if-eqz v0, :cond_5

    .line 759
    iput-boolean v7, p0, Landroid/support/v7/internal/a/j;->uU:Z

    .line 760
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->cancel()V

    :cond_a
    iget v0, p0, Landroid/support/v7/internal/a/j;->uP:I

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/support/v7/internal/a/j;->uz:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uW:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_f

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ad;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->A(Z)V

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_c

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_c
    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->va:Landroid/support/v4/view/bm;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/aV;->a(Landroid/support/v4/view/bm;)Landroid/support/v4/view/aV;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->e(Landroid/support/v4/view/aV;)Landroid/support/v7/internal/view/h;

    iget-boolean v2, p0, Landroid/support/v7/internal/a/j;->uQ:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uF:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->e(Landroid/support/v4/view/aV;)Landroid/support/v7/internal/view/h;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ad;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->e(Landroid/support/v4/view/aV;)Landroid/support/v7/internal/view/h;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->b(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->du()Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uY:Landroid/support/v4/view/bk;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->b(Landroid/support/v4/view/bk;)Landroid/support/v7/internal/view/h;

    iput-object v1, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->start()V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uY:Landroid/support/v4/view/bk;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bk;->B(Landroid/view/View;)V

    goto/16 :goto_1

    .line 755
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 760
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uK:Landroid/support/v7/internal/a/n;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uK:Landroid/support/v7/internal/a/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/n;->finish()V

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 508
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uD:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->ey()V

    .line 509
    new-instance v0, Landroid/support/v7/internal/a/n;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/a/n;-><init>(Landroid/support/v7/internal/a/j;Landroid/support/v7/c/b;)V

    .line 510
    invoke-virtual {v0}, Landroid/support/v7/internal/a/n;->df()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {v0}, Landroid/support/v7/internal/a/n;->invalidate()V

    .line 512
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uD:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e(Landroid/support/v7/c/a;)V

    .line 513
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/a/j;->q(Z)V

    .line 514
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/internal/a/j;->uN:I

    if-ne v1, v3, :cond_1

    .line 516
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uE:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ad;->v(Landroid/view/View;)V

    .line 523
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uD:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 524
    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uK:Landroid/support/v7/internal/a/n;

    .line 527
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/app/c;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public final a(Landroid/support/v7/app/e;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 614
    invoke-virtual {p0}, Landroid/support/v7/internal/a/j;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 615
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/e;->getPosition()I

    move-result v0

    :cond_0
    iput v0, p0, Landroid/support/v7/internal/a/j;->uI:I

    .line 641
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/v;->eL()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 622
    :goto_1
    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    if-ne v2, p1, :cond_5

    .line 623
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    if-eqz v0, :cond_3

    .line 624
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/o;->dg()Landroid/support/v7/app/f;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    .line 625
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    invoke-virtual {p1}, Landroid/support/v7/app/e;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/D;->ao(I)V

    .line 638
    :cond_3
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/z;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    invoke-virtual {v1}, Landroid/support/v4/app/z;->commit()I

    goto :goto_0

    .line 619
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->aG:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->F()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->H()Landroid/support/v4/app/z;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/z;->a()Landroid/support/v4/app/z;

    move-result-object v1

    goto :goto_1

    .line 628
    :cond_5
    iget-object v2, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/app/e;->getPosition()I

    move-result v0

    :cond_6
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/D;->an(I)V

    .line 629
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    if-eqz v0, :cond_7

    .line 630
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/o;->dg()Landroid/support/v7/app/f;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    .line 632
    :cond_7
    check-cast p1, Landroid/support/v7/internal/a/o;

    iput-object p1, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    .line 633
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/o;->dg()Landroid/support/v7/app/f;

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    goto :goto_2
.end method

.method public final a(Landroid/view/View;Landroid/support/v7/app/b;)V
    .locals 1

    .prologue
    .line 1238
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setCustomView(Landroid/view/View;)V

    .line 1240
    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/d;)V
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    new-instance v1, Landroid/support/v7/internal/a/a;

    invoke-direct {v1, p2}, Landroid/support/v7/internal/a/a;-><init>(Landroid/support/v7/app/d;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v7/internal/widget/v;->a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/internal/widget/q;)V

    .line 1245
    return-void
.end method

.method public final cA()V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/j;->setDisplayOptions(II)V

    .line 379
    return-void
.end method

.method public final cB()V
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/j;->setDisplayOptions(II)V

    .line 389
    return-void
.end method

.method public final cC()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 393
    invoke-virtual {p0, v0, v0}, Landroid/support/v7/internal/a/j;->setDisplayOptions(II)V

    .line 394
    return-void
.end method

.method public final cD()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    .line 399
    return-void
.end method

.method public final collapseActionView()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->collapseActionView()V

    .line 938
    const/4 v0, 0x1

    .line 940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cx()V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    const v1, 0x106000d

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/v;->setIcon(I)V

    .line 1315
    return-void
.end method

.method public final cy()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/v;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1320
    return-void
.end method

.method public final cz()V
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/j;->setDisplayOptions(II)V

    .line 374
    return-void
.end method

.method final db()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uM:Landroid/support/v7/c/b;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uM:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uL:Landroid/support/v7/c/a;

    invoke-interface {v0, v1}, Landroid/support/v7/c/b;->c(Landroid/support/v7/c/a;)V

    .line 322
    iput-object v2, p0, Landroid/support/v7/internal/a/j;->uL:Landroid/support/v7/c/a;

    .line 323
    iput-object v2, p0, Landroid/support/v7/internal/a/j;->uM:Landroid/support/v7/c/b;

    .line 325
    :cond_0
    return-void
.end method

.method public final dc()V
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uS:Z

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/j;->uS:Z

    .line 678
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/j;->p(Z)V

    .line 680
    :cond_0
    return-void
.end method

.method public final dd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 701
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uS:Z

    if-nez v0, :cond_0

    .line 702
    iput-boolean v1, p0, Landroid/support/v7/internal/a/j;->uS:Z

    .line 703
    invoke-direct {p0, v1}, Landroid/support/v7/internal/a/j;->p(Z)V

    .line 705
    :cond_0
    return-void
.end method

.method public final de()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->cancel()V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    .line 928
    :cond_0
    return-void
.end method

.method public final getDisplayOptions()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getNavigationMode()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public final getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1249
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/v;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1255
    :cond_0
    :goto_0
    return v0

    .line 1251
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uH:Landroid/support/v7/internal/a/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/o;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1253
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->eO()I

    move-result v0

    goto :goto_0

    .line 1249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uA:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 884
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 885
    sget v2, Landroid/support/v7/a/b;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 886
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 888
    if-eqz v0, :cond_1

    .line 889
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/internal/a/j;->uA:Landroid/content/Context;

    .line 894
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uA:Landroid/content/Context;

    return-object v0

    .line 891
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uA:Landroid/content/Context;

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uR:Z

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/j;->uR:Z

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/j;->p(Z)V

    .line 688
    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->j(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public final j(Z)V
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uJ:Z

    if-nez v0, :cond_0

    .line 1342
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/a/j;->setDisplayHomeAsUpEnabled(Z)V

    .line 1344
    :cond_0
    return-void
.end method

.method public final k(Z)V
    .locals 1

    .prologue
    .line 339
    iput-boolean p1, p0, Landroid/support/v7/internal/a/j;->uW:Z

    .line 340
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uV:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->cancel()V

    .line 343
    :cond_0
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->us:Z

    if-ne p1, v0, :cond_1

    .line 363
    :cond_0
    return-void

    .line 357
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/a/j;->us:Z

    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 360
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 361
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/c;

    invoke-interface {v0, p1}, Landroid/support/v7/app/c;->onMenuVisibilityChanged(Z)V

    .line 360
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final o(Z)V
    .locals 0

    .prologue
    .line 654
    iput-boolean p1, p0, Landroid/support/v7/internal/a/j;->uQ:Z

    .line 655
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->f(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dk()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/j;->n(Z)V

    .line 268
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 328
    iput p1, p0, Landroid/support/v7/internal/a/j;->uP:I

    .line 329
    return-void
.end method

.method public final q(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 870
    if-eqz p1, :cond_2

    .line 871
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uT:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/j;->uT:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->eA()V

    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/j;->p(Z)V

    .line 876
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/v;->ag(I)V

    .line 877
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uD:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->ag(I)V

    .line 879
    return-void

    .line 873
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uT:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/internal/a/j;->uT:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->eA()V

    :cond_3
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/j;->p(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 876
    goto :goto_1

    :cond_5
    move v2, v1

    .line 877
    goto :goto_2
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 383
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/a/j;->setDisplayOptions(II)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDisplayOptions(II)V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getDisplayOptions()I

    move-result v0

    .line 462
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/a/j;->uJ:Z

    .line 465
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/v;->setDisplayOptions(I)V

    .line 466
    return-void
.end method

.method public final setHomeActionContentDescription(I)V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setNavigationContentDescription(I)V

    .line 920
    return-void
.end method

.method public final setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setNavigationIcon(I)V

    .line 910
    return-void
.end method

.method public final setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 905
    return-void
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1334
    return-void
.end method

.method public final setNavigationMode(I)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 1278
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getNavigationMode()I

    move-result v0

    .line 1279
    packed-switch v0, :pswitch_data_0

    .line 1286
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uO:Z

    if-nez v0, :cond_0

    .line 1287
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ad;->v(Landroid/view/View;)V

    .line 1291
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setNavigationMode(I)V

    .line 1292
    packed-switch p1, :pswitch_data_1

    .line 1302
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    if-ne p1, v4, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uO:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/v;->D(Z)V

    .line 1303
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v4, :cond_7

    iget-boolean v3, p0, Landroid/support/v7/internal/a/j;->uO:Z

    if-nez v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->C(Z)V

    .line 1304
    return-void

    .line 1281
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/internal/a/j;->getSelectedNavigationIndex()I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/a/j;->uI:I

    .line 1282
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/a/j;->a(Landroid/support/v7/app/e;)V

    .line 1283
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    invoke-virtual {v3, v6}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    goto :goto_0

    .line 1294
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v7/internal/widget/D;

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v7/internal/widget/D;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Landroid/support/v7/internal/a/j;->uO:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/v;->b(Landroid/support/v7/internal/widget/D;)V

    :goto_4
    iput-object v0, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    .line 1295
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->uG:Landroid/support/v7/internal/widget/D;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    .line 1296
    iget v0, p0, Landroid/support/v7/internal/a/j;->uI:I

    if-eq v0, v5, :cond_1

    .line 1297
    iget v0, p0, Landroid/support/v7/internal/a/j;->uI:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/j;->setSelectedNavigationItem(I)V

    .line 1298
    iput v5, p0, Landroid/support/v7/internal/a/j;->uI:I

    goto :goto_1

    .line 1294
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/a/j;->getNavigationMode()I

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uB:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ad;->v(Landroid/view/View;)V

    :cond_4
    :goto_5
    iget-object v3, p0, Landroid/support/v7/internal/a/j;->uC:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/D;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    goto :goto_5

    :cond_6
    move v0, v2

    .line 1302
    goto :goto_2

    :cond_7
    move v1, v2

    .line 1303
    goto :goto_3

    .line 1279
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1292
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public final setSelectedNavigationItem(I)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/e;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/j;->a(Landroid/support/v7/app/e;)V

    .line 418
    :goto_0
    return-void

    .line 417
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->am(I)V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/j;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v7/internal/a/j;->up:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 659
    iget-boolean v0, p0, Landroid/support/v7/internal/a/j;->uR:Z

    if-eqz v0, :cond_0

    .line 660
    iput-boolean v1, p0, Landroid/support/v7/internal/a/j;->uR:Z

    .line 661
    invoke-direct {p0, v1}, Landroid/support/v7/internal/a/j;->p(Z)V

    .line 663
    :cond_0
    return-void
.end method
