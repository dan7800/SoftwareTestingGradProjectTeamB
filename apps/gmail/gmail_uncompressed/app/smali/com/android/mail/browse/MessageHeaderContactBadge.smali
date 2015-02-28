.class public Lcom/android/mail/browse/MessageHeaderContactBadge;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private asn:Landroid/widget/QuickContactBadge;

.field private aso:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageHeaderContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/browse/MessageHeaderContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/MessageHeaderContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/QuickContactBadge;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->asn:Landroid/widget/QuickContactBadge;

    .line 80
    return-void
.end method

.method public final assignContactUri(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->asn:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->asn:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final bj(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->asn:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->asn:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 53
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "quick_contact"

    const-string v2, "clicked"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->asn:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->asn:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    .line 57
    :cond_0
    return-void
.end method

.method public final setImageToDefault()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->aso:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->aso:Landroid/graphics/drawable/Drawable;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderContactBadge;->aso:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method
