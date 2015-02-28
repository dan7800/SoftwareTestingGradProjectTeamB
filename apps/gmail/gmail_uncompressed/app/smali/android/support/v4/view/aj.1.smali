.class Landroid/support/v4/view/aj;
.super Landroid/support/v4/view/ai;
.source "SourceFile"


# static fields
.field static ih:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/aj;->ih:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Landroid/support/v4/view/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p2}, Landroid/support/v4/view/a/i;->br()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 920
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p2}, Landroid/support/v4/view/a;->aT()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 924
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 903
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public final e(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 907
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 915
    invoke-virtual {p1, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 916
    return-void
.end method

.method public final s(Landroid/view/View;)Landroid/support/v4/view/aV;
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Landroid/support/v4/view/aj;->ig:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/aj;->ig:Ljava/util/WeakHashMap;

    .line 955
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/aj;->ig:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aV;

    .line 956
    if-nez v0, :cond_1

    .line 957
    new-instance v0, Landroid/support/v4/view/aV;

    invoke-direct {v0, p1}, Landroid/support/v4/view/aV;-><init>(Landroid/view/View;)V

    .line 958
    iget-object v1, p0, Landroid/support/v4/view/aj;->ig:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_1
    return-object v0
.end method
