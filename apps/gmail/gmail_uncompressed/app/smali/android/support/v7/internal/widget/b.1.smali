.class public final Landroid/support/v7/internal/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bk;


# instance fields
.field private yt:Z

.field yu:I

.field final synthetic yv:Landroid/support/v7/internal/widget/a;


# direct methods
.method protected constructor <init>(Landroid/support/v7/internal/widget/a;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->yt:Z

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V

    .line 269
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/b;->yt:Z

    .line 270
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/b;->yt:Z

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/widget/a;->ys:Landroid/support/v4/view/aV;

    .line 277
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    iget v1, p0, Landroid/support/v7/internal/widget/b;->yu:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/a;->yp:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/a;->yn:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/a;->yn:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/internal/widget/b;->yu:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final C(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->yt:Z

    .line 286
    return-void
.end method

.method public final a(Landroid/support/v4/view/aV;I)Landroid/support/v7/internal/widget/b;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->yv:Landroid/support/v7/internal/widget/a;

    iput-object p1, v0, Landroid/support/v7/internal/widget/a;->ys:Landroid/support/v4/view/aV;

    .line 262
    iput p2, p0, Landroid/support/v7/internal/widget/b;->yu:I

    .line 263
    return-object p0
.end method
