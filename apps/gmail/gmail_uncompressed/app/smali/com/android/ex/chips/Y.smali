.class final Lcom/android/ex/chips/Y;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;

.field private final afk:Lcom/android/ex/chips/a/b;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)V
    .locals 0

    .prologue
    .line 3035
    iput-object p1, p0, Lcom/android/ex/chips/Y;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 3036
    iput-object p2, p0, Lcom/android/ex/chips/Y;->afk:Lcom/android/ex/chips/a/b;

    .line 3037
    return-void
.end method


# virtual methods
.method public final onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/android/ex/chips/Y;->afk:Lcom/android/ex/chips/a/b;

    invoke-interface {v0, p1}, Lcom/android/ex/chips/a/b;->draw(Landroid/graphics/Canvas;)V

    .line 3049
    return-void
.end method

.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/android/ex/chips/Y;->afk:Lcom/android/ex/chips/a/b;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3042
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3043
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 3044
    return-void
.end method
