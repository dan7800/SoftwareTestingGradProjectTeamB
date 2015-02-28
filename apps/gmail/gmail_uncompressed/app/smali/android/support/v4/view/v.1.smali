.class public final Landroid/support/v4/view/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final hW:Landroid/support/v4/view/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V

    sput-object v0, Landroid/support/v4/view/v;->hW:Landroid/support/v4/view/w;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/v;->hW:Landroid/support/v4/view/w;

    goto :goto_0
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 9

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/view/v;->hW:Landroid/support/v4/view/w;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/support/v4/view/w;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 163
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7

    .prologue
    .line 132
    sget-object v0, Landroid/support/v4/view/v;->hW:Landroid/support/v4/view/w;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/w;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 133
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 1

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/v;->hW:Landroid/support/v4/view/w;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/w;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
