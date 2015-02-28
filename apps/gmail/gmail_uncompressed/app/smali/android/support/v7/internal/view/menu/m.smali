.class public final Landroid/support/v7/internal/view/menu/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/b/a/b;


# static fields
.field private static xI:Ljava/lang/String;

.field private static xJ:Ljava/lang/String;

.field private static xK:Ljava/lang/String;

.field private static xL:Ljava/lang/String;


# instance fields
.field private final cH:I

.field private cZ:Ljava/lang/CharSequence;

.field private dM:I

.field private mIntent:Landroid/content/Intent;

.field private ve:Landroid/support/v7/internal/view/menu/i;

.field private final wh:I

.field private final wi:I

.field private final wj:I

.field private wk:Ljava/lang/CharSequence;

.field private wl:C

.field private wm:C

.field private wn:Landroid/graphics/drawable/Drawable;

.field private wo:I

.field private wp:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private xA:Landroid/support/v7/internal/view/menu/D;

.field private xB:Ljava/lang/Runnable;

.field private xC:I

.field private xD:Landroid/view/View;

.field private xE:Landroid/support/v4/view/n;

.field private xF:Landroid/support/v4/view/O;

.field private xG:Z

.field private xH:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/i;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->wo:I

    .line 77
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 85
    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    .line 90
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/m;->xG:Z

    .line 134
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    .line 135
    iput p3, p0, Landroid/support/v7/internal/view/menu/m;->cH:I

    .line 136
    iput p2, p0, Landroid/support/v7/internal/view/menu/m;->wh:I

    .line 137
    iput p4, p0, Landroid/support/v7/internal/view/menu/m;->wi:I

    .line 138
    iput p5, p0, Landroid/support/v7/internal/view/menu/m;->wj:I

    .line 139
    iput-object p6, p0, Landroid/support/v7/internal/view/menu/m;->cZ:Ljava/lang/CharSequence;

    .line 140
    iput p7, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    .line 141
    return-void
.end method

.method private aa(Landroid/view/View;)Landroid/support/v4/b/a/b;
    .locals 2

    .prologue
    .line 608
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->cH:I

    if-lez v0, :cond_0

    .line 611
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->cH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dR()V

    .line 614
    return-object p0
.end method

.method static synthetic h(Landroid/support/v7/internal/view/menu/m;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/O;)Landroid/support/v4/b/a/b;
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->xF:Landroid/support/v4/view/O;

    .line 715
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/n;)Landroid/support/v4/b/a/b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 659
    :cond_0
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    .line 660
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    .line 661
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 662
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    new-instance v1, Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/support/v7/internal/view/menu/m;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 670
    :cond_1
    return-object p0
.end method

.method final a(Landroid/support/v7/internal/view/menu/A;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 363
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/internal/view/menu/A;->dw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->xH:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 546
    return-void
.end method

.method public final ax()Landroid/support/v4/view/n;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    return-object v0
.end method

.method final b(Landroid/support/v7/internal/view/menu/D;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->xA:Landroid/support/v7/internal/view/menu/D;

    .line 347
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/D;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 348
    return-void
.end method

.method public final collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 695
    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 698
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    if-nez v1, :cond_2

    .line 700
    const/4 v0, 0x1

    goto :goto_0

    .line 703
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xF:Landroid/support/v4/view/O;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xF:Landroid/support/v4/view/O;

    invoke-interface {v1, p0}, Landroid/support/v4/view/O;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->g(Landroid/support/v7/internal/view/menu/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public final ed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->wp:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->wp:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->dZ()Landroid/support/v7/internal/view/menu/i;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xB:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xB:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    invoke-virtual {v1}, Landroid/support/v4/view/n;->onPerformDefaultAction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final ee()C
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wm:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wl:C

    goto :goto_0
.end method

.method final ef()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->ee()C

    move-result v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    const-string v0, ""

    .line 321
    :goto_0
    return-object v0

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/internal/view/menu/m;->xI:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    sparse-switch v0, :sswitch_data_0

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :sswitch_0
    sget-object v0, Landroid/support/v7/internal/view/menu/m;->xJ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 309
    :sswitch_1
    sget-object v0, Landroid/support/v7/internal/view/menu/m;->xK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 313
    :sswitch_2
    sget-object v0, Landroid/support/v7/internal/view/menu/m;->xL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method final eg()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->ee()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final eh()Z
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ei()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->ea()Z

    move-result v0

    return v0
.end method

.method public final ej()Z
    .locals 2

    .prologue
    .line 565
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ek()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 569
    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final el()Z
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final em()Z
    .locals 2

    .prologue
    .line 585
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final en()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 719
    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/n;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    .line 723
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 725
    :cond_1
    return v0
.end method

.method public final expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->en()Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xF:Landroid/support/v4/view/O;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->xF:Landroid/support/v4/view/O;

    invoke-interface {v1, p0}, Landroid/support/v4/view/O;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->f(Landroid/support/v7/internal/view/menu/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    .line 633
    :goto_0
    return-object v0

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    .line 631
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xD:Landroid/view/View;

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 238
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wm:C

    return v0
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->wh:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->wn:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->wn:Landroid/graphics/drawable/Drawable;

    .line 428
    :goto_0
    return-object v0

    .line 421
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->wo:I

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->wo:I

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/U;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->wo:I

    .line 424
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->wn:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->cH:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xH:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .prologue
    .line 256
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wl:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->wi:I

    return v0
.end method

.method public final getOrdering()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->wj:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xA:Landroid/support/v7/internal/view/menu/D;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->cZ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->wk:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->wk:Ljava/lang/CharSequence;

    .line 390
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 394
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_0
    return-object v0

    .line 388
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->cZ:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xA:Landroid/support/v7/internal/view/menu/D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/m;->xG:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 453
    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    invoke-virtual {v2}, Landroid/support/v4/view/n;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->xE:Landroid/support/v4/view/n;

    invoke-virtual {v2}, Landroid/support/v4/view/n;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 504
    goto :goto_0

    .line 506
    :cond_2
    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/m;->aa(Landroid/view/View;)Landroid/support/v4/b/a/b;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/m;->aa(Landroid/view/View;)Landroid/support/v4/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 243
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wm:C

    if-ne v0, p1, :cond_0

    .line 251
    :goto_0
    return-object p0

    .line 247
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wm:C

    .line 249
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    goto :goto_0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 458
    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 459
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 460
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    if-eq v2, v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 464
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 459
    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->j(Landroid/view/MenuItem;)V

    .line 490
    :goto_0
    return-object p0

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/m;->v(Z)V

    goto :goto_0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 191
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 193
    return-object p0

    .line 188
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->wn:Landroid/graphics/drawable/Drawable;

    .line 443
    iput p1, p0, Landroid/support/v7/internal/view/menu/m;->wo:I

    .line 446
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 448
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->wo:I

    .line 434
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->wn:Landroid/graphics/drawable/Drawable;

    .line 435
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 437
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->mIntent:Landroid/content/Intent;

    .line 224
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 261
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wl:C

    if-ne v0, p1, :cond_0

    .line 269
    :goto_0
    return-object p0

    .line 265
    :cond_0
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/m;->wl:C

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    goto :goto_0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->wp:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 536
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 274
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/m;->wl:C

    .line 275
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/m;->wm:C

    .line 277
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 279
    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    .prologue
    .line 590
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_0
    iput p1, p0, Landroid/support/v7/internal/view/menu/m;->xC:I

    .line 603
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dR()V

    .line 604
    return-void

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/m;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/m;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 370
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->cZ:Ljava/lang/CharSequence;

    .line 372
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 374
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xA:Landroid/support/v7/internal/view/menu/D;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->xA:Landroid/support/v7/internal/view/menu/D;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/D;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 378
    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 403
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->wk:Ljava/lang/CharSequence;

    .line 406
    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->cZ:Ljava/lang/CharSequence;

    .line 410
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 412
    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/m;->w(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dQ()V

    .line 530
    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->cZ:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)V
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 469
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final v(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 495
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 496
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    if-eq v2, v0, :cond_0

    .line 497
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 499
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 495
    goto :goto_0
.end method

.method final w(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 518
    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 519
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 520
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 519
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final x(Z)V
    .locals 1

    .prologue
    .line 577
    if-eqz p1, :cond_0

    .line 578
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->dM:I

    goto :goto_0
.end method

.method public final y(Z)V
    .locals 2

    .prologue
    .line 729
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/m;->xG:Z

    .line 730
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 731
    return-void
.end method
