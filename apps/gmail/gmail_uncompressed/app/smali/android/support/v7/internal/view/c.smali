.class public final Landroid/support/v7/internal/view/c;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final vp:Landroid/support/v7/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/c/a;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v7/internal/view/c;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    .line 47
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->finish()V

    .line 77
    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Landroid/support/v7/internal/view/c;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/a/a;

    invoke-static {v1, v0}, Landroid/support/v7/internal/view/menu/B;->a(Landroid/content/Context;Landroid/support/v4/b/a/a;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public final invalidate()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->invalidate()V

    .line 72
    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->setCustomView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->setSubtitle(I)V

    .line 102
    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->setTag(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->setTitle(I)V

    .line 92
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->vp:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->setTitleOptionalHint(Z)V

    .line 127
    return-void
.end method
