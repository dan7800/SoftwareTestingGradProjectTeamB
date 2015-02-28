.class final Landroid/support/v4/view/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/w;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 77
    invoke-static/range {p1 .. p8}, Landroid/support/v4/view/z;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 79
    return-void
.end method

.method public final apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 71
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/z;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 72
    return-void
.end method

.method public final getAbsoluteGravity(II)I
    .locals 1

    .prologue
    .line 65
    invoke-static {p1, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
