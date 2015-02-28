.class public Lcom/android/mail/ui/cf;
.super Lcom/android/mail/ui/bW;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0400b5

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/mail/ui/bW;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mail/providers/Folder;)V

    .line 51
    iput-object p1, p0, Lcom/android/mail/ui/cf;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 44
    const v0, 0x7f04009a

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mail/ui/bW;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;I)V

    .line 45
    iput-object p1, p0, Lcom/android/mail/ui/cf;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private cm(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 92
    if-eqz v2, :cond_3

    array-length v1, v2

    if-lez v1, :cond_3

    .line 93
    array-length v3, v2

    .line 94
    if-le v3, v6, :cond_4

    .line 95
    aget-object v1, v2, v7

    .line 96
    add-int/lit8 v0, v3, -0x2

    aget-object v0, v2, v0

    .line 97
    add-int/lit8 v5, v3, -0x1

    aget-object v2, v2, v5

    .line 107
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 109
    const/4 v5, 0x3

    if-le v3, v5, :cond_6

    .line 110
    const v3, 0x7f09015b

    .line 114
    :goto_2
    iget-object v5, p0, Lcom/android/mail/ui/cf;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    :cond_1
    :goto_3
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 123
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, 0x7f0a00a3

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v4, v0, v7, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 126
    :cond_2
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    move-object v0, v4

    .line 128
    goto :goto_0

    .line 98
    :cond_4
    if-le v3, v8, :cond_5

    .line 99
    aget-object v1, v2, v7

    .line 101
    add-int/lit8 v5, v3, -0x1

    aget-object v2, v2, v5

    goto :goto_1

    .line 105
    :cond_5
    aget-object v1, v2, v7

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 112
    :cond_6
    const v3, 0x7f09015a

    goto :goto_2

    .line 116
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/mail/ui/cf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09015c

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/bW;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/cf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bX;

    .line 58
    invoke-virtual {v0}, Lcom/android/mail/ui/bX;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v5

    .line 59
    const v1, 0x7f0d007a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    .line 60
    const v2, 0x7f0d0218

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    iget-object v3, v0, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v5, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 63
    :goto_0
    if-eqz v1, :cond_2

    .line 64
    iget-object v2, v0, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v5, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    :goto_1
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 69
    :goto_2
    return-object v4

    .line 61
    :cond_0
    iget-object v3, v0, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/mail/ui/cf;->cm(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, v0, Lcom/android/mail/ui/bX;->aKv:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/cf;->cm(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_2
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_2
.end method
