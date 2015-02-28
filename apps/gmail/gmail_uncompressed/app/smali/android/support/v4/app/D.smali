.class final Landroid/support/v4/app/D;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field private ct:Landroid/graphics/Rect;

.field final synthetic cu:Landroid/support/v4/app/F;


# direct methods
.method constructor <init>(Landroid/support/v4/app/F;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Landroid/support/v4/app/D;->cu:Landroid/support/v4/app/F;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/app/D;->ct:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/D;->cu:Landroid/support/v4/app/F;

    iget-object v0, v0, Landroid/support/v4/app/F;->cB:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/support/v4/app/D;->cu:Landroid/support/v4/app/F;

    iget-object v0, v0, Landroid/support/v4/app/F;->cB:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/A;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/D;->ct:Landroid/graphics/Rect;

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/D;->ct:Landroid/graphics/Rect;

    return-object v0
.end method
