.class public Lcom/android/mail/browse/ScrollIndicatorsView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/aN;


# instance fields
.field private atG:Lcom/android/mail/browse/aM;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/aM;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    .line 46
    iget-object v0, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    invoke-interface {v0, p0}, Lcom/android/mail/browse/aM;->a(Lcom/android/mail/browse/aN;)V

    .line 47
    return-void
.end method

.method public final bP(I)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/mail/browse/ScrollIndicatorsView;->awakenScrollBars()Z

    .line 82
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    invoke-interface {v0}, Lcom/android/mail/browse/aM;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    invoke-interface {v0}, Lcom/android/mail/browse/aM;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    invoke-interface {v0}, Lcom/android/mail/browse/aM;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    invoke-interface {v0}, Lcom/android/mail/browse/aM;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    invoke-interface {v0}, Lcom/android/mail/browse/aM;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mail/browse/ScrollIndicatorsView;->atG:Lcom/android/mail/browse/aM;

    invoke-interface {v0}, Lcom/android/mail/browse/aM;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method
