.class final Landroid/support/v4/view/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/w;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 52
    invoke-static/range {p1 .. p7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method public final apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 47
    return-void
.end method

.method public final getAbsoluteGravity(II)I
    .locals 1

    .prologue
    .line 40
    const v0, -0x800001

    and-int/2addr v0, p1

    return v0
.end method
