.class final Landroid/support/v4/widget/x;
.super Landroid/support/v4/view/a/q;
.source "SourceFile"


# instance fields
.field final synthetic lH:Landroid/support/v4/widget/w;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/w;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Landroid/support/v4/widget/x;->lH:Landroid/support/v4/widget/w;

    invoke-direct {p0}, Landroid/support/v4/view/a/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/w;B)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0, p1}, Landroid/support/v4/widget/x;-><init>(Landroid/support/v4/widget/w;)V

    return-void
.end method


# virtual methods
.method public final F(I)Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/support/v4/widget/x;->lH:Landroid/support/v4/widget/w;

    invoke-static {v0, p1}, Landroid/support/v4/widget/w;->a(Landroid/support/v4/widget/w;I)Landroid/support/v4/view/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Landroid/support/v4/widget/x;->lH:Landroid/support/v4/widget/w;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/w;->a(Landroid/support/v4/widget/w;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
