.class public final Landroid/support/v4/view/aR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final jA:Landroid/support/v4/view/aT;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Landroid/support/v4/view/aS;

    invoke-direct {v0}, Landroid/support/v4/view/aS;-><init>()V

    sput-object v0, Landroid/support/v4/view/aR;->jA:Landroid/support/v4/view/aT;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Landroid/support/v4/view/aU;

    invoke-direct {v0}, Landroid/support/v4/view/aU;-><init>()V

    sput-object v0, Landroid/support/v4/view/aR;->jA:Landroid/support/v4/view/aT;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/support/v4/view/aR;->jA:Landroid/support/v4/view/aT;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/aT;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
