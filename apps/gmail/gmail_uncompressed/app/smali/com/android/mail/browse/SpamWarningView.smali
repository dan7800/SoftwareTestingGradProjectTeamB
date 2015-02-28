.class public Lcom/android/mail/browse/SpamWarningView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final auk:I

.field private final aul:I

.field private final aum:I

.field private final aun:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/SpamWarningView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/SpamWarningView;->auk:I

    .line 34
    invoke-virtual {p0}, Lcom/android/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/SpamWarningView;->aum:I

    .line 36
    invoke-virtual {p0}, Lcom/android/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/SpamWarningView;->aul:I

    .line 37
    invoke-virtual {p0}, Lcom/android/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/SpamWarningView;->aun:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Message;Lcom/android/emailcommon/mail/Address;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0, v5}, Lcom/android/mail/browse/SpamWarningView;->setVisibility(I)V

    .line 46
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 47
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v2, p1, Lcom/android/mail/providers/Message;->aBt:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget v0, p1, Lcom/android/mail/providers/Message;->aBu:I

    if-ne v0, v4, :cond_0

    .line 52
    iget v0, p0, Lcom/android/mail/browse/SpamWarningView;->aum:I

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->setBackgroundColor(I)V

    .line 53
    iget v0, p0, Lcom/android/mail/browse/SpamWarningView;->auk:I

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->setTextColor(I)V

    .line 54
    const v0, 0x7f020103

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/android/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 65
    new-instance v0, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 67
    const/16 v1, 0x21

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 56
    :cond_0
    iget v0, p0, Lcom/android/mail/browse/SpamWarningView;->aun:I

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->setBackgroundColor(I)V

    .line 57
    iget v0, p0, Lcom/android/mail/browse/SpamWarningView;->aul:I

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->setTextColor(I)V

    .line 58
    const v0, 0x7f020102

    goto :goto_0
.end method
