.class public Landroid/support/v4/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hm:Landroid/support/v4/view/d;

.field private static final hn:Ljava/lang/Object;


# instance fields
.field final ho:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 296
    new-instance v0, Landroid/support/v4/view/e;

    invoke-direct {v0}, Landroid/support/v4/view/e;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    .line 302
    :goto_0
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    invoke-interface {v0}, Landroid/support/v4/view/d;->aU()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    .line 303
    return-void

    .line 297
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 298
    new-instance v0, Landroid/support/v4/view/b;

    invoke-direct {v0}, Landroid/support/v4/view/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Landroid/support/v4/view/g;

    invoke-direct {v0}, Landroid/support/v4/view/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/d;->a(Landroid/support/v4/view/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a;->ho:Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 399
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Landroid/support/v4/view/d;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 400
    return-void
.end method

.method public static sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 336
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 337
    return-void
.end method

.method public static sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 358
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Landroid/support/v4/view/d;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 359
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 2

    .prologue
    .line 438
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/a/i;)V

    .line 439
    return-void
.end method

.method final aT()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v4/view/a;->ho:Ljava/lang/Object;

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 379
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)Landroid/support/v4/view/a/q;
    .locals 2

    .prologue
    .line 480
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/d;->b(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/a/q;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 419
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/d;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 420
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 462
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 500
    sget-object v0, Landroid/support/v4/view/a;->hm:Landroid/support/v4/view/d;

    sget-object v1, Landroid/support/v4/view/a;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/d;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
