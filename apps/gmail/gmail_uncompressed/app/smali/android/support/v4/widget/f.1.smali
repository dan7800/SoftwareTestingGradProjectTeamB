.class final Landroid/support/v4/widget/f;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# instance fields
.field private final lk:Landroid/graphics/Rect;

.field final synthetic ll:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 1799
    iput-object p1, p0, Landroid/support/v4/widget/f;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 1800
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/f;->lk:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 4

    .prologue
    .line 1804
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->bR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1805
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/i;)V

    .line 1824
    :cond_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setClassName(Ljava/lang/CharSequence;)V

    .line 1825
    return-void

    .line 1809
    :cond_1
    invoke-static {p2}, Landroid/support/v4/view/a/i;->a(Landroid/support/v4/view/a/i;)Landroid/support/v4/view/a/i;

    move-result-object v1

    .line 1811
    invoke-super {p0, p1, v1}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/i;)V

    .line 1813
    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/i;->setSource(Landroid/view/View;)V

    .line 1814
    invoke-static {p1}, Landroid/support/v4/view/ad;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 1815
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1816
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setParent(Landroid/view/View;)V

    .line 1818
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/f;->lk:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/a/i;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/view/a/i;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setVisibleToUser(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isClickable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setClickable(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isFocusable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setFocusable(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isFocused()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setFocused(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isAccessibilityFocused()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setAccessibilityFocused(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isSelected()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setSelected(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->isLongClickable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setLongClickable(Z)V

    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->getActions()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->addAction(I)V

    .line 1819
    invoke-virtual {v1}, Landroid/support/v4/view/a/i;->recycle()V

    .line 1821
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->O(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v2}, Landroid/support/v4/view/a/i;->addChild(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 1841
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1842
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1843
    iget-object v1, p0, Landroid/support/v4/widget/f;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;

    move-result-object v1

    .line 1844
    if-eqz v1, :cond_0

    .line 1845
    iget-object v2, p0, Landroid/support/v4/widget/f;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->H(Landroid/view/View;)I

    move-result v1

    .line 1846
    iget-object v2, p0, Landroid/support/v4/widget/f;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->M(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1847
    if-eqz v1, :cond_0

    .line 1848
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    :cond_0
    const/4 v0, 0x1

    .line 1855
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1829
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1831
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1832
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1861
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->O(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1864
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
