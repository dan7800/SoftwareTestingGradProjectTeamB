.class public abstract Landroid/support/v7/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BG:Ljava/lang/Object;

.field private BH:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/c/a;->BG:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/support/v7/c/a;->BH:Z

    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/c/a;->BG:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Landroid/support/v7/c/a;->BH:Z

    .line 131
    return-void
.end method
