.class public abstract Lcom/android/mail/ui/AttachmentTile;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/al;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private aGe:Landroid/widget/ImageView;

.field private aGf:Landroid/widget/ImageView;

.field private aGg:Landroid/widget/TextView;

.field private aGh:Z

.field private aGi:Lcom/android/mail/ui/an;

.field private aGj:Z

.field protected ale:Lcom/android/mail/providers/Attachment;

.field private arP:Landroid/widget/TextView;

.field private arR:Ljava/lang/String;

.field private arS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/AttachmentTile;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/AttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGh:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGj:Z

    .line 81
    return-void
.end method

.method public static g(Lcom/android/mail/providers/Attachment;)Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/photo/util/ImageUtils;->aW(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lcom/android/mail/providers/Attachment;Lcom/android/mail/ui/an;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-virtual {p0, v6}, Lcom/android/mail/ui/AttachmentTile;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    .line 116
    iput-object p1, p0, Lcom/android/mail/ui/AttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    .line 117
    iput-object p2, p0, Lcom/android/mail/ui/AttachmentTile;->aGi:Lcom/android/mail/ui/an;

    .line 119
    sget-object v1, Lcom/android/mail/ui/AttachmentTile;->mW:Ljava/lang/String;

    const-string v2, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/mail/providers/Attachment;->state:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p1, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p1, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    aput-object v4, v3, v6

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget v5, p1, Lcom/android/mail/providers/Attachment;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    iget v1, p1, Lcom/android/mail/providers/Attachment;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_5

    .line 126
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->arP:Landroid/widget/TextView;

    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget v1, p1, Lcom/android/mail/providers/Attachment;->size:I

    iget v2, v0, Lcom/android/mail/providers/Attachment;->size:I

    if-eq v1, v2, :cond_4

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/b;->E(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->arR:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mail/utils/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->arS:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTile;->arR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTile;->arS:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTile;->arS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTile;->aGg:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->aGi:Lcom/android/mail/ui/an;

    invoke-static {v1, p0, p1, v0}, Lcom/android/mail/ui/dn;->a(Lcom/android/mail/ui/an;Lcom/android/mail/ui/al;Lcom/android/mail/providers/Attachment;Lcom/android/mail/providers/Attachment;)V

    goto/16 :goto_0

    .line 127
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->arP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGf:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGj:Z

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->arP:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0034

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 184
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v5, v3

    div-int/lit16 v5, v5, 0xa0

    .line 186
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v6, v4

    div-int/lit16 v6, v6, 0xa0

    .line 189
    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    int-to-float v8, v4

    int-to-float v9, v3

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 191
    if-ge v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-ge v5, v3, :cond_2

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-lt v6, v0, :cond_4

    :cond_2
    move v3, v1

    .line 193
    :goto_1
    cmpg-float v0, v7, v10

    if-gez v0, :cond_5

    int-to-float v0, v5

    iget-object v4, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_3

    int-to-float v0, v6

    iget-object v4, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    cmpl-float v0, v0, v4

    if-gez v0, :cond_5

    :cond_3
    move v0, v1

    .line 200
    :goto_2
    sget-object v4, Lcom/android/mail/ui/AttachmentTile;->mW:Ljava/lang/String;

    const-string v7, "scaledWidth: %d, scaledHeight: %d, large: %b, skinny: %b"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v4, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    if-eqz v3, :cond_6

    .line 205
    if-nez v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    :goto_3
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGi:Lcom/android/mail/ui/an;

    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    invoke-interface {v0, v1, p1}, Lcom/android/mail/ui/an;->a(Lcom/android/mail/providers/Attachment;Landroid/graphics/Bitmap;)V

    .line 221
    iput-boolean v2, p0, Lcom/android/mail/ui/AttachmentTile;->aGh:Z

    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 191
    goto :goto_1

    :cond_5
    move v0, v2

    .line 193
    goto :goto_2

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 87
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->arP:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGg:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGf:Landroid/widget/ImageView;

    .line 91
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 95
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 97
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGi:Lcom/android/mail/ui/an;

    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/mail/ui/dn;->a(Lcom/android/mail/ui/an;Lcom/android/mail/ui/al;Lcom/android/mail/providers/Attachment;Lcom/android/mail/providers/Attachment;)V

    .line 98
    return-void
.end method

.method public rv()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGi:Lcom/android/mail/ui/an;

    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->ale:Lcom/android/mail/providers/Attachment;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/an;->h(Lcom/android/mail/providers/Attachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->e(Landroid/graphics/Bitmap;)V

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGf:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->arP:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGh:Z

    goto :goto_0
.end method

.method public rw()V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->rv()V

    .line 291
    return-void
.end method

.method public final xN()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method public final xO()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGe:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method public final xP()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public final xQ()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGh:Z

    return v0
.end method

.method protected final xR()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->aGj:Z

    .line 295
    return-void
.end method
