.class public Landroid/support/v7/app/g;
.super Landroid/support/v4/app/k;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/aZ;
.implements Landroid/support/v7/app/B;


# instance fields
.field private nW:Landroid/support/v7/app/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    return-void
.end method

.method private cG()Z
    .locals 2

    .prologue
    .line 430
    invoke-static {p0}, Landroid/support/v4/app/O;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_2

    .line 433
    invoke-static {p0, v0}, Landroid/support/v4/app/O;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-static {p0}, Landroid/support/v4/app/aY;->c(Landroid/content/Context;)Landroid/support/v4/app/aY;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p0}, Landroid/support/v4/app/aY;->c(Landroid/app/Activity;)Landroid/support/v4/app/aY;

    .line 436
    invoke-virtual {v0}, Landroid/support/v4/app/aY;->startActivities()V

    .line 440
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 451
    :goto_0
    const/4 v0, 0x1

    .line 453
    :goto_1
    return v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/g;->finish()V

    goto :goto_0

    .line 449
    :cond_1
    invoke-static {p0, v0}, Landroid/support/v4/app/O;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 453
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static cI()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method private cJ()Landroid/support/v7/app/h;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/app/g;->nW:Landroid/support/v7/app/h;

    if-nez v0, :cond_0

    .line 557
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/app/s;

    invoke-direct {v0, p0}, Landroid/support/v7/app/s;-><init>(Landroid/support/v7/app/g;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/g;->nW:Landroid/support/v7/app/h;

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->nW:Landroid/support/v7/app/h;

    return-object v0

    .line 557
    :cond_1
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;-><init>(Landroid/support/v7/app/g;)V

    goto :goto_0
.end method


# virtual methods
.method public final D()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->D()V

    .line 200
    return-void
.end method

.method final Y(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->setContentView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method public a(Landroid/support/v7/c/a;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final a(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 93
    return-void
.end method

.method final a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/k;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/k;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/g;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    invoke-super {v0, p1, p2}, Landroid/support/v4/app/k;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public final as()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 466
    invoke-static {p0}, Landroid/support/v4/app/O;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->b(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v0

    return-object v0
.end method

.method final b(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/k;->onPanelClosed(ILandroid/view/Menu;)V

    .line 289
    return-void
.end method

.method public b(Landroid/support/v7/c/a;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method final c(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/k;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final cF()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    return-object v0
.end method

.method public final cH()Landroid/support/v7/app/u;
    .locals 3

    .prologue
    .line 513
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    new-instance v1, Landroid/support/v7/app/j;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/h;B)V

    return-object v1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->D()V

    .line 207
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->cM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-super {p0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 300
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    .line 535
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->onCreate(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 547
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/k;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    .line 552
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/h;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v4/app/k;->onDestroy()V

    .line 170
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->destroy()V

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 524
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/k;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/h;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 518
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/h;->e(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/k;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    .line 160
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/a;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0}, Landroid/support/v7/app/g;->cG()Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->onPanelClosed(ILandroid/view/Menu;)V

    .line 244
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/k;->onPostResume()V

    .line 141
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->onPostResume()V

    .line 142
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/h;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/k;->onStop()V

    .line 135
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->onStop()V

    .line 136
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/k;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 176
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->k(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->setContentView(I)V

    .line 103
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->setContentView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/g;->cJ()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method
