.class final Landroid/support/v4/view/a/H;
.super Landroid/support/v4/view/a/F;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/support/v4/view/a/F;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 501
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 502
    return-void
.end method
