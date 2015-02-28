.class final Landroid/support/v7/widget/P;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic ES:Landroid/support/v7/widget/H;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/H;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Landroid/support/v7/widget/P;->ES:Landroid/support/v7/widget/H;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/H;B)V
    .locals 0

    .prologue
    .line 1701
    invoke-direct {p0, p1}, Landroid/support/v7/widget/P;-><init>(Landroid/support/v7/widget/H;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/support/v7/widget/P;->ES:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/support/v7/widget/P;->ES:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->show()V

    .line 1708
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Landroid/support/v7/widget/P;->ES:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->dismiss()V

    .line 1713
    return-void
.end method
