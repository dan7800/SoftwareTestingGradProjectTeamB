.class public final Landroid/support/v7/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/k;


# instance fields
.field private final oW:Landroid/support/v7/app/u;

.field private final oX:Landroid/support/v4/widget/DrawerLayout;

.field private oY:Landroid/support/v7/app/x;

.field private oZ:Landroid/graphics/drawable/Drawable;

.field private pa:Z

.field private pb:Z

.field private final pc:I

.field private final pd:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2

    .prologue
    .line 150
    const v0, 0x7f09018d

    const v1, 0x7f09018e

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/app/t;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    .line 152
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/x;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/t;->pa:Z

    .line 194
    instance-of v0, p1, Landroid/support/v7/app/v;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 207
    check-cast v0, Landroid/support/v7/app/v;

    invoke-interface {v0}, Landroid/support/v7/app/v;->cW()Landroid/support/v7/app/u;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    .line 218
    :goto_0
    iput-object p2, p0, Landroid/support/v7/app/t;->oX:Landroid/support/v4/widget/DrawerLayout;

    .line 219
    const v0, 0x7f09018d

    iput v0, p0, Landroid/support/v7/app/t;->pc:I

    .line 220
    const v0, 0x7f09018e

    iput v0, p0, Landroid/support/v7/app/t;->pd:I

    .line 221
    new-instance v0, Landroid/support/v7/app/w;

    iget-object v1, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    invoke-interface {v1}, Landroid/support/v7/app/u;->cO()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/w;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/t;->oY:Landroid/support/v7/app/x;

    .line 225
    invoke-direct {p0}, Landroid/support/v7/app/t;->cQ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/t;->oZ:Landroid/graphics/drawable/Drawable;

    .line 229
    return-void

    .line 208
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/B;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 209
    check-cast v0, Landroid/support/v7/app/B;

    invoke-interface {v0}, Landroid/support/v7/app/B;->cH()Landroid/support/v7/app/u;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    goto :goto_0

    .line 210
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 211
    new-instance v0, Landroid/support/v7/app/A;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/A;-><init>(Landroid/app/Activity;B)V

    iput-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    goto :goto_0

    .line 212
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 213
    new-instance v0, Landroid/support/v7/app/z;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/z;-><init>(Landroid/app/Activity;B)V

    iput-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    goto :goto_0

    .line 215
    :cond_3
    new-instance v0, Landroid/support/v7/app/y;

    invoke-direct {v0, p1}, Landroid/support/v7/app/y;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    goto :goto_0
.end method

.method private Z(I)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    invoke-interface {v0, p1}, Landroid/support/v7/app/u;->Z(I)V

    .line 457
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/u;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 453
    return-void
.end method

.method private cQ()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/app/t;->oW:Landroid/support/v7/app/u;

    invoke-interface {v0}, Landroid/support/v7/app/u;->cQ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final P(I)V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public final Q(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v7/app/t;->oY:Landroid/support/v7/app/x;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/x;->p(F)V

    .line 393
    iget-boolean v0, p0, Landroid/support/v7/app/t;->pa:Z

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Landroid/support/v7/app/t;->pd:I

    invoke-direct {p0, v0}, Landroid/support/v7/app/t;->Z(I)V

    .line 396
    :cond_0
    return-void
.end method

.method public final R(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/v7/app/t;->oY:Landroid/support/v7/app/x;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/x;->p(F)V

    .line 408
    iget-boolean v0, p0, Landroid/support/v7/app/t;->pa:Z

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Landroid/support/v7/app/t;->pc:I

    invoke-direct {p0, v0}, Landroid/support/v7/app/t;->Z(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public final cT()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/app/t;->oX:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Landroid/support/v7/app/t;->oY:Landroid/support/v7/app/x;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/x;->p(F)V

    .line 246
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/t;->pa:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/v7/app/t;->oY:Landroid/support/v7/app/x;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/t;->oX:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->bM()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/t;->pd:I

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/t;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 251
    :cond_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/t;->oY:Landroid/support/v7/app/x;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/x;->p(F)V

    goto :goto_0

    .line 247
    :cond_2
    iget v1, p0, Landroid/support/v7/app/t;->pc:I

    goto :goto_1
.end method

.method public final cU()V
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/support/v7/app/t;->pb:Z

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Landroid/support/v7/app/t;->cQ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/t;->oZ:Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/t;->cT()V

    .line 267
    return-void
.end method

.method public final cV()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-boolean v0, p0, Landroid/support/v7/app/t;->pa:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/v7/app/t;->oZ:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/t;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 365
    iput-boolean v1, p0, Landroid/support/v7/app/t;->pa:Z

    .line 367
    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/app/t;->oY:Landroid/support/v7/app/x;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/x;->p(F)V

    .line 381
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 279
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/app/t;->pa:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Landroid/support/v7/app/t;->oX:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/t;->oX:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bL()V

    .line 281
    :goto_0
    const/4 v0, 0x1

    .line 283
    :goto_1
    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/t;->oX:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bK()V

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final setHomeAsUpIndicator(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Landroid/support/v7/app/t;->oX:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    :cond_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/app/t;->cQ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/t;->oZ:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Landroid/support/v7/app/t;->pb:Z

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/t;->pa:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/t;->oZ:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/t;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 336
    :cond_1
    return-void

    .line 335
    :cond_2
    iput-object v0, p0, Landroid/support/v7/app/t;->oZ:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/t;->pb:Z

    goto :goto_0
.end method
