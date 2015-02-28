.class public final Lcom/android/mail/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aRb:I

.field private static aRc:I

.field private static aRd:I

.field private static aRe:I

.field private static aRf:I

.field private static anb:Landroid/graphics/Bitmap;


# instance fields
.field private aRg:Lcom/android/mail/widget/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/d;->aRb:I

    .line 119
    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/d;->aRc:I

    .line 120
    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/d;->aRd:I

    .line 121
    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/d;->aRe:I

    .line 122
    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/d;->aRf:I

    .line 125
    const v1, 0x7f02007c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/widget/d;->anb:Landroid/graphics/Bitmap;

    .line 126
    return-void
.end method

.method private static b(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 132
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 135
    if-eqz p2, :cond_0

    .line 136
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 139
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 11

    .prologue
    .line 149
    iget-boolean v1, p3, Lcom/android/mail/providers/Conversation;->aza:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 150
    :goto_0
    invoke-virtual {p3}, Lcom/android/mail/providers/Conversation;->uG()Ljava/lang/String;

    move-result-object v3

    .line 151
    iget-boolean v4, p3, Lcom/android/mail/providers/Conversation;->ayX:Z

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    const v5, 0x7f0c00c6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 154
    const v6, 0x7f0c00c5

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 157
    if-eqz v1, :cond_5

    sget v2, Lcom/android/mail/widget/d;->aRf:I

    .line 158
    :goto_1
    invoke-static {p2, v5, v2}, Lcom/android/mail/widget/d;->b(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 159
    if-eqz v1, :cond_0

    .line 160
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v2, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 164
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-static {p1, v2, v0}, Lcom/android/mail/providers/Conversation;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 166
    if-eqz v1, :cond_1

    .line 167
    new-instance v8, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 170
    :cond_1
    if-eqz v1, :cond_6

    sget v2, Lcom/android/mail/widget/d;->aRc:I

    .line 171
    :goto_2
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 174
    const/4 v2, 0x0

    invoke-static {v7, v6, v2}, Lcom/android/mail/widget/d;->b(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 176
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v8, Lcom/android/mail/widget/d;->aRd:I

    invoke-direct {v3, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v2, v3, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 179
    const/4 v3, 0x0

    invoke-static {v2, v6, v3}, Lcom/android/mail/widget/d;->b(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 182
    const/4 v2, 0x0

    .line 183
    if-eqz v4, :cond_2

    .line 184
    sget-object v2, Lcom/android/mail/widget/d;->anb:Landroid/graphics/Bitmap;

    .line 188
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0400cf

    invoke-direct {v4, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 190
    const v6, 0x7f0d0260

    move-object/from16 v0, p6

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    const v6, 0x7f0d0262

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 192
    const v5, 0x7f0d0263

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    const v5, 0x7f0d0264

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    if-eqz v2, :cond_7

    .line 195
    const v3, 0x7f0d0261

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    const v3, 0x7f0d0261

    invoke-virtual {v4, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 200
    :goto_3
    if-eqz v1, :cond_8

    .line 201
    const v1, 0x7f0d025e

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const v1, 0x7f0d025f

    const/16 v2, 0x8

    invoke-virtual {v4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 207
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    new-instance v1, Lcom/android/mail/widget/e;

    invoke-direct {v1, p1}, Lcom/android/mail/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mail/widget/d;->aRg:Lcom/android/mail/widget/e;

    .line 209
    iget-object v1, p0, Lcom/android/mail/widget/d;->aRg:Lcom/android/mail/widget/e;

    move/from16 v0, p5

    invoke-virtual {v1, p3, p4, v0}, Lcom/android/mail/widget/e;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V

    .line 210
    iget-object v1, p0, Lcom/android/mail/widget/d;->aRg:Lcom/android/mail/widget/e;

    invoke-virtual {v1, v4}, Lcom/android/mail/widget/e;->b(Landroid/widget/RemoteViews;)V

    .line 213
    :cond_3
    return-object v4

    .line 149
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 157
    :cond_5
    sget v2, Lcom/android/mail/widget/d;->aRe:I

    goto/16 :goto_1

    .line 170
    :cond_6
    sget v2, Lcom/android/mail/widget/d;->aRb:I

    goto/16 :goto_2

    .line 198
    :cond_7
    const v2, 0x7f0d0261

    const/16 v3, 0x8

    invoke-virtual {v4, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 204
    :cond_8
    const v1, 0x7f0d025e

    const/16 v2, 0x8

    invoke-virtual {v4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 205
    const v1, 0x7f0d025f

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method
