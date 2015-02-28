.class abstract Landroid/support/v7/app/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final nX:Landroid/support/v7/app/g;

.field private nY:Landroid/support/v7/app/a;

.field private nZ:Landroid/view/MenuInflater;

.field oa:Z

.field ob:Z

.field oc:Z

.field od:Z

.field final oe:Landroid/support/v7/internal/a/i;

.field private of:Landroid/support/v7/internal/a/i;

.field private og:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/g;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/support/v7/app/i;

    invoke-direct {v0, p0}, Landroid/support/v7/app/i;-><init>(Landroid/support/v7/app/h;)V

    iput-object v0, p0, Landroid/support/v7/app/h;->oe:Landroid/support/v7/internal/a/i;

    .line 112
    iput-object p1, p0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    .line 113
    iget-object v0, p0, Landroid/support/v7/app/h;->oe:Landroid/support/v7/internal/a/i;

    iput-object v0, p0, Landroid/support/v7/app/h;->of:Landroid/support/v7/internal/a/i;

    .line 114
    return-void
.end method


# virtual methods
.method abstract D()V
.end method

.method abstract a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method protected final a(Landroid/support/v7/app/a;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/v7/app/h;->nY:Landroid/support/v7/app/a;

    .line 135
    return-void
.end method

.method final a(Landroid/support/v7/internal/a/i;)V
    .locals 2

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/h;->of:Landroid/support/v7/internal/a/i;

    .line 316
    return-void
.end method

.method abstract a(Landroid/support/v7/widget/Toolbar;)V
.end method

.method abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract b(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
.end method

.method abstract c(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
.end method

.method final cF()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/support/v7/app/h;->oa:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/h;->nY:Landroid/support/v7/app/a;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/app/h;->cK()Landroid/support/v7/app/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/h;->nY:Landroid/support/v7/app/a;

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/h;->nY:Landroid/support/v7/app/a;

    return-object v0
.end method

.method abstract cK()Landroid/support/v7/app/a;
.end method

.method final cL()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/app/h;->nY:Landroid/support/v7/app/a;

    return-object v0
.end method

.method abstract cM()Z
.end method

.method abstract cN()I
.end method

.method protected final cO()Landroid/content/Context;
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0}, Landroid/support/v7/app/h;->cF()Landroid/support/v7/app/a;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/support/v7/app/a;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    :cond_0
    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    .line 269
    :cond_1
    return-object v0
.end method

.method final cP()Landroid/support/v7/internal/a/i;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/app/h;->of:Landroid/support/v7/internal/a/i;

    return-object v0
.end method

.method d(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method final destroy()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/h;->og:Z

    .line 324
    return-void
.end method

.method abstract e(Landroid/view/KeyEvent;)Z
.end method

.method final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/app/h;->nZ:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/support/v7/internal/view/e;

    invoke-virtual {p0}, Landroid/support/v7/app/h;->cO()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/h;->nZ:Landroid/view/MenuInflater;

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/h;->nZ:Landroid/view/MenuInflater;

    return-object v0
.end method

.method final isDestroyed()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/support/v7/app/h;->og:Z

    return v0
.end method

.method abstract k(Ljava/lang/CharSequence;)V
.end method

.method abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    sget-object v1, Landroid/support/v7/a/l;->tg:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/g;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    sget v1, Landroid/support/v7/a/l;->ti:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    sget v1, Landroid/support/v7/a/l;->ti:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iput-boolean v3, p0, Landroid/support/v7/app/h;->oa:Z

    .line 158
    :cond_1
    sget v1, Landroid/support/v7/a/l;->tj:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iput-boolean v3, p0, Landroid/support/v7/app/h;->ob:Z

    .line 161
    :cond_2
    sget v1, Landroid/support/v7/a/l;->tk:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iput-boolean v3, p0, Landroid/support/v7/app/h;->oc:Z

    .line 164
    :cond_3
    sget v1, Landroid/support/v7/a/l;->th:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/h;->od:Z

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    return-void
.end method

.method abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method abstract onCreatePanelView(I)Landroid/view/View;
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method abstract onPostResume()V
.end method

.method abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method abstract onStop()V
.end method

.method abstract setContentView(I)V
.end method

.method abstract setContentView(Landroid/view/View;)V
.end method

.method abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method
