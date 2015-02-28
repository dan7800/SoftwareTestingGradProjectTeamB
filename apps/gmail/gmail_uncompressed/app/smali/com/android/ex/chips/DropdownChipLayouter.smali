.class public Lcom/android/ex/chips/DropdownChipLayouter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acT:Lcom/android/ex/chips/o;

.field private acU:Lcom/android/ex/chips/v;

.field private final mContext:Landroid/content/Context;

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->wC:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private static b(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/android/ex/chips/n;->acX:[I

    invoke-virtual {p0}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    sget v0, Lcom/android/ex/chips/C;->adA:I

    :goto_0
    return v0

    .line 253
    :pswitch_0
    sget v0, Lcom/android/ex/chips/C;->adz:I

    goto :goto_0

    .line 255
    :pswitch_1
    sget v0, Lcom/android/ex/chips/C;->adA:I

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/o;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->acT:Lcom/android/ex/chips/o;

    return-object v0
.end method

.method protected static c(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/android/ex/chips/n;->acX:[I

    invoke-virtual {p0}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    sget v0, Lcom/android/ex/chips/C;->adA:I

    :goto_0
    return v0

    .line 271
    :pswitch_0
    sget v0, Lcom/android/ex/chips/C;->adz:I

    goto :goto_0

    .line 273
    :pswitch_1
    sget v0, Lcom/android/ex/chips/C;->adA:I

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/ae;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;
    .locals 8

    .prologue
    .line 83
    invoke-virtual {p3}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p3}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v2, 0x1

    .line 86
    iget-object v3, p0, Lcom/android/ex/chips/DropdownChipLayouter;->acU:Lcom/android/ex/chips/v;

    iget-object v4, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/ex/chips/ae;->mV()I

    move-result v5

    invoke-virtual {p3}, Lcom/android/ex/chips/ae;->mW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/ex/chips/v;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {p5}, Lcom/android/ex/chips/DropdownChipLayouter;->b(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I

    move-result v3

    sget-object v5, Lcom/android/ex/chips/n;->acX:[I

    invoke-virtual {p5}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz p1, :cond_3

    .line 90
    :goto_1
    new-instance v5, Lcom/android/ex/chips/p;

    invoke-direct {v5, p0, p1}, Lcom/android/ex/chips/p;-><init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/view/View;)V

    .line 93
    sget-object v3, Lcom/android/ex/chips/n;->acX:[I

    invoke-virtual {p5}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_1

    :cond_0
    move-object v3, v1

    move-object v1, v0

    move-object v0, v4

    .line 127
    :goto_2
    iget-object v4, v5, Lcom/android/ex/chips/p;->adc:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 128
    iget-object v3, v5, Lcom/android/ex/chips/p;->add:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 129
    iget-object v1, v5, Lcom/android/ex/chips/p;->ade:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 130
    iget-object v0, v5, Lcom/android/ex/chips/p;->adf:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p3, v0, p5}, Lcom/android/ex/chips/DropdownChipLayouter;->a(ZLcom/android/ex/chips/ae;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V

    .line 131
    iget-object v0, v5, Lcom/android/ex/chips/p;->adg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-nez p6, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0, p6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->acT:Lcom/android/ex/chips/o;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/ex/chips/m;

    invoke-direct {v1, p0, p6}, Lcom/android/ex/chips/m;-><init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_2
    return-object p1

    .line 88
    :pswitch_1
    invoke-static {p5}, Lcom/android/ex/chips/DropdownChipLayouter;->c(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/ex/chips/DropdownChipLayouter;->wC:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 95
    :pswitch_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    :cond_4
    invoke-virtual {p3}, Lcom/android/ex/chips/ae;->na()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 101
    const/4 v1, 0x0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 105
    :cond_5
    :goto_3
    invoke-virtual {p3}, Lcom/android/ex/chips/ae;->na()Z

    move-result v3

    if-nez v3, :cond_8

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v1, 0x0

    .line 111
    :goto_4
    iget-object v3, v5, Lcom/android/ex/chips/p;->adh:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 112
    iget-object v6, v5, Lcom/android/ex/chips/p;->adh:Landroid/view/View;

    if-nez p4, :cond_6

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_6
    const/16 v3, 0x8

    goto :goto_5

    .line 116
    :pswitch_3
    if-eqz p4, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 118
    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 122
    :pswitch_4
    invoke-virtual {p3}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 123
    const/4 v0, 0x0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto/16 :goto_2

    :cond_7
    move-object v3, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_2

    :cond_8
    move v7, v2

    move-object v2, v1

    move v1, v7

    goto :goto_4

    :cond_9
    move-object v1, v0

    goto :goto_3

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->wC:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->b(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/ex/chips/o;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->acT:Lcom/android/ex/chips/o;

    .line 55
    return-void
.end method

.method public final a(Lcom/android/ex/chips/v;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->acU:Lcom/android/ex/chips/v;

    .line 51
    return-void
.end method

.method protected a(ZLcom/android/ex/chips/ae;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    if-nez p3, :cond_0

    .line 215
    :goto_0
    return-void

    .line 185
    :cond_0
    if-eqz p1, :cond_3

    .line 186
    sget-object v0, Lcom/android/ex/chips/n;->acX:[I

    invoke-virtual {p4}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 188
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 190
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 194
    :cond_1
    sget v0, Lcom/android/ex/chips/z;->adw:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 198
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/ex/chips/ae;->nb()Landroid/net/Uri;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 204
    :cond_2
    sget v0, Lcom/android/ex/chips/z;->adw:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 213
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
