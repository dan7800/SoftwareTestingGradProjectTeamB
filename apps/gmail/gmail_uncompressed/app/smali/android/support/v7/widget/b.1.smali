.class final Landroid/support/v7/widget/b;
.super Landroid/support/v7/internal/view/menu/c;
.source "SourceFile"


# instance fields
.field final synthetic Cb:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Landroid/support/v7/widget/b;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0, p1}, Landroid/support/v7/widget/b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public final dA()Landroid/support/v7/widget/H;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/b;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->j(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/b;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->j(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->dA()Landroid/support/v7/widget/H;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
