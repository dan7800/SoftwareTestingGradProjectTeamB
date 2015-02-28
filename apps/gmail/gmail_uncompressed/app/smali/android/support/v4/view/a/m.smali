.class Landroid/support/v4/view/a/m;
.super Landroid/support/v4/view/a/k;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0}, Landroid/support/v4/view/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 958
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 943
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 944
    return-void
.end method

.method public final c(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 938
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 939
    return-void
.end method

.method public final h(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 953
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 954
    return-void
.end method

.method public final i(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 963
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 964
    return-void
.end method

.method public final z(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 948
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    return v0
.end method
