.class final Landroid/support/v7/widget/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ES:Landroid/support/v7/widget/H;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/H;)V
    .locals 0

    .prologue
    .line 1722
    iput-object p1, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/H;B)V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0, p1}, Landroid/support/v7/widget/S;-><init>(Landroid/support/v7/widget/H;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1724
    iget-object v0, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    invoke-static {v0}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/H;)Landroid/support/v7/widget/K;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    invoke-static {v0}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/H;)Landroid/support/v7/widget/K;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/K;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    invoke-static {v1}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/H;)Landroid/support/v7/widget/K;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/K;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    invoke-static {v0}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/H;)Landroid/support/v7/widget/K;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/K;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->ED:I

    if-gt v0, v1, :cond_0

    .line 1726
    iget-object v0, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    invoke-static {v0}, Landroid/support/v7/widget/H;->b(Landroid/support/v7/widget/H;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1727
    iget-object v0, p0, Landroid/support/v7/widget/S;->ES:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->show()V

    .line 1729
    :cond_0
    return-void
.end method
