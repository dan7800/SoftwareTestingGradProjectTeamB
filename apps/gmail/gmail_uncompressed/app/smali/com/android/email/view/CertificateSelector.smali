.class public Lcom/android/email/view/CertificateSelector;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private VG:Landroid/widget/Button;

.field private VH:Landroid/widget/TextView;

.field private VI:Lcom/android/email/view/a;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public final T(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/email/view/CertificateSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    iput-object p1, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/android/email/view/CertificateSelector;->VH:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090250

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/android/email/view/CertificateSelector;->VG:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09024d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    :cond_0
    move-object v0, p1

    .line 87
    goto :goto_0

    .line 91
    :cond_1
    const v0, 0x7f09024f

    goto :goto_1
.end method

.method public final a(Lcom/android/email/view/a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/view/CertificateSelector;->VI:Lcom/android/email/view/a;

    .line 69
    return-void
.end method

.method public final kL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->VG:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->VI:Lcom/android/email/view/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/view/CertificateSelector;->T(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->VI:Lcom/android/email/view/a;

    invoke-interface {v0}, Lcom/android/email/view/a;->hU()V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0d010e

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/view/CertificateSelector;->VH:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0d010d

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/view/CertificateSelector;->VG:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->VG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/view/CertificateSelector;->T(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 123
    check-cast p1, Lcom/android/email/view/CertificateSelector$SavedState;

    .line 124
    invoke-virtual {p1}, Lcom/android/email/view/CertificateSelector$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 125
    iget-object v0, p1, Lcom/android/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/email/view/CertificateSelector;->T(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/android/email/view/CertificateSelector$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/email/view/CertificateSelector$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method
