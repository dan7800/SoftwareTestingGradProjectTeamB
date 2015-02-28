.class public Lcom/android/mail/browse/SubjectAndFolderView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/text/c;


# instance fields
.field private YL:Ljava/lang/String;

.field private aqT:Landroid/support/v4/e/a;

.field private arm:Lcom/android/mail/browse/ac;

.field private final auq:Ljava/lang/String;

.field private final aur:I

.field private final aus:I

.field private final aut:Landroid/graphics/drawable/Drawable;

.field private final auu:I

.field private auv:I

.field private auw:Lcom/android/mail/browse/aW;

.field private aux:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/SubjectAndFolderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/mail/browse/SubjectAndFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auq:Ljava/lang/String;

    .line 78
    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aur:I

    .line 79
    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aus:I

    .line 80
    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aut:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aut:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aut:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aut:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auu:I

    .line 86
    iput-boolean v4, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aux:Z

    .line 87
    new-instance v0, Lcom/android/mail/browse/aW;

    invoke-virtual {p0}, Lcom/android/mail/browse/SubjectAndFolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/aW;-><init>(Lcom/android/mail/browse/SubjectAndFolderView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auw:Lcom/android/mail/browse/aW;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/SubjectAndFolderView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aut:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/browse/SubjectAndFolderView;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auu:I

    return v0
.end method

.method static synthetic c(Lcom/android/mail/browse/SubjectAndFolderView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/mail/browse/SubjectAndFolderView;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aus:I

    return v0
.end method

.method static synthetic e(Lcom/android/mail/browse/SubjectAndFolderView;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aur:I

    return v0
.end method

.method static synthetic f(Lcom/android/mail/browse/SubjectAndFolderView;)Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mail/browse/SubjectAndFolderView;->qJ()Landroid/support/v4/e/a;

    move-result-object v0

    return-object v0
.end method

.method private qJ()Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aqT:Landroid/support/v4/e/a;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->arm:Lcom/android/mail/browse/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->arm:Lcom/android/mail/browse/ac;

    iget-object v0, v0, Lcom/android/mail/browse/ac;->aqW:Lcom/android/mail/browse/aa;

    .line 156
    :goto_0
    if-nez v0, :cond_2

    .line 157
    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aqT:Landroid/support/v4/e/a;

    .line 162
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aqT:Landroid/support/v4/e/a;

    return-object v0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->qJ()Landroid/support/v4/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aqT:Landroid/support/v4/e/a;

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/ac;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->arm:Lcom/android/mail/browse/ac;

    .line 150
    return-void
.end method

.method public final a(Lcom/android/mail/browse/ag;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;)V
    .locals 5

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aux:Z

    .line 109
    invoke-direct {p0}, Lcom/android/mail/browse/SubjectAndFolderView;->qJ()Landroid/support/v4/e/a;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->YL:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 111
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 113
    iget-object v0, p2, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    .line 114
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 115
    iget-boolean v0, v0, Lcom/android/mail/providers/Settings;->aCc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/mail/providers/Conversation;->uE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, ". "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    new-instance v0, Lcom/android/mail/browse/aV;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/aV;-><init>(Lcom/android/mail/browse/SubjectAndFolderView;)V

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auw:Lcom/android/mail/browse/aW;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, p3, v3, v4}, Lcom/android/mail/browse/aW;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V

    .line 139
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auw:Lcom/android/mail/browse/aW;

    invoke-static {v0, v1}, Lcom/android/mail/browse/aW;->a(Lcom/android/mail/browse/aW;Landroid/text/SpannableStringBuilder;)V

    .line 141
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 142
    new-instance v3, Lcom/android/mail/text/a;

    invoke-direct {v3, p1}, Lcom/android/mail/text/a;-><init>(Lcom/android/mail/browse/ag;)V

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/SubjectAndFolderView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SubjectAndFolderView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 146
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/mail/browse/SubjectAndFolderView;->YL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->YL:Ljava/lang/String;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mail/browse/SubjectAndFolderView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/mail/browse/SubjectAndFolderView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auv:I

    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 96
    return-void
.end method

.method public final rX()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->auv:I

    return v0
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/mail/browse/SubjectAndFolderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/mail/providers/Conversation;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->YL:Ljava/lang/String;

    .line 101
    iget-boolean v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->aux:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/mail/browse/SubjectAndFolderView;->YL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SubjectAndFolderView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void
.end method
