.class public abstract Lcom/android/mail/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mW:Ljava/lang/String;


# instance fields
.field protected final aIZ:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field protected final aJa:Lcom/android/mail/ui/bA;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/bz;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bz;->aIZ:Ljava/util/NavigableSet;

    .line 49
    new-instance v0, Lcom/android/mail/ui/bA;

    invoke-direct {v0}, Lcom/android/mail/ui/bA;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bz;->aJa:Lcom/android/mail/ui/bA;

    .line 64
    iput-object p1, p0, Lcom/android/mail/ui/bz;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/android/mail/ui/bz;->pR()V

    .line 66
    return-void
.end method

.method public static a(Landroid/graphics/Canvas;FFIILjava/lang/String;IILcom/android/mail/ui/bA;Landroid/support/v4/e/a;Landroid/graphics/Paint;)V
    .locals 11

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 195
    move-object/from16 v0, p8

    iget v2, v0, Lcom/android/mail/ui/bA;->aJi:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p3

    int-to-float v6, p4

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 201
    move-object/from16 v0, p8

    iget v3, v0, Lcom/android/mail/ui/bA;->aJd:I

    int-to-float v3, v3

    move-object/from16 v0, p8

    iget v4, v0, Lcom/android/mail/ui/bA;->aJd:I

    int-to-float v4, v4

    move-object/from16 v0, p10

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v6, v2

    .line 242
    move-object/from16 v0, p9

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->isRtl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    move-object/from16 v0, p8

    iget v4, v0, Lcom/android/mail/ui/bA;->aJe:I

    .line 244
    move-object/from16 v0, p8

    iget v3, v0, Lcom/android/mail/ui/bA;->aJf:I

    .line 245
    move-object/from16 v0, p8

    iget v2, v0, Lcom/android/mail/ui/bA;->aJf:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v6

    move v10, v2

    move v5, v3

    move v3, v4

    .line 254
    :goto_0
    move-object/from16 v0, p8

    iget v2, v0, Lcom/android/mail/ui/bA;->aJf:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    if-le v6, v2, :cond_0

    .line 255
    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v3, v3

    const/4 v4, 0x0

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {p6 .. p6}, Lcom/android/mail/utils/ag;->ds(I)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v7, p6

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 257
    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 259
    :cond_0
    div-int/lit8 v2, p4, 0x2

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 260
    int-to-float v3, v10

    int-to-float v2, v2

    move-object/from16 v0, p5

    move-object/from16 v1, p10

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 263
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 264
    return-void

    .line 247
    :cond_1
    move-object/from16 v0, p8

    iget v2, v0, Lcom/android/mail/ui/bA;->aJe:I

    sub-int v4, p3, v2

    .line 248
    move-object/from16 v0, p8

    iget v2, v0, Lcom/android/mail/ui/bA;->aJf:I

    sub-int v3, p3, v2

    .line 249
    move-object/from16 v0, p8

    iget v2, v0, Lcom/android/mail/ui/bA;->aJf:I

    move v10, v2

    move v5, v3

    move v3, v4

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;IIIIILandroid/graphics/Paint;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;IIIII",
            "Landroid/graphics/Paint;",
            ")[I"
        }
    .end annotation

    .prologue
    .line 126
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 127
    if-nez v5, :cond_0

    .line 128
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 180
    :goto_0
    return-object v0

    .line 132
    :cond_0
    add-int/lit8 v0, v5, -0x1

    mul-int/2addr v0, p3

    sub-int v0, p2, v0

    div-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 134
    new-array v4, v5, [I

    .line 136
    const/4 v2, 0x0

    .line 137
    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 140
    add-int/lit8 v8, v5, -0x1

    if-gt v3, v8, :cond_5

    .line 141
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 145
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v8, p4, 0x2

    add-int/2addr v8, v0

    .line 148
    if-le v8, v6, :cond_2

    .line 151
    sub-int v0, v8, v6

    sub-int v2, p1, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 153
    sub-int v2, v1, v0

    .line 154
    if-ltz v2, :cond_1

    .line 155
    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v4, v3

    move v0, v2

    .line 161
    :goto_2
    neg-int v1, v2

    .line 177
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 178
    goto :goto_1

    .line 158
    :cond_1
    add-int v0, v6, v1

    aput v0, v4, v3

    .line 159
    const/4 v0, 0x0

    goto :goto_2

    .line 163
    :cond_2
    sub-int v0, v6, v8

    .line 164
    aput v8, v4, v3

    .line 165
    if-lez v2, :cond_3

    .line 166
    if-lt v0, v2, :cond_4

    .line 167
    add-int/lit8 v1, v3, -0x1

    aget v8, v4, v1

    add-int/2addr v8, v2

    aput v8, v4, v1

    .line 168
    sub-int/2addr v0, v2

    .line 174
    :cond_3
    :goto_4
    const/4 v1, 0x0

    goto :goto_3

    .line 170
    :cond_4
    add-int/lit8 v1, v3, -0x1

    aget v2, v4, v1

    add-int/2addr v0, v2

    aput v0, v4, v1

    .line 171
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move-object v0, v4

    .line 180
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mail/ui/bz;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->clear()V

    .line 91
    invoke-virtual {p1}, Lcom/android/mail/providers/Conversation;->uD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 93
    if-ltz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {p2, v2}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/android/mail/ui/bz;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v2, v0}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method protected pR()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mail/ui/bz;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/mail/ui/bz;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0a008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/mail/ui/bA;->aJb:I

    .line 73
    iget-object v1, p0, Lcom/android/mail/ui/bz;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0a0089

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/mail/ui/bA;->aJc:I

    .line 75
    iget-object v1, p0, Lcom/android/mail/ui/bz;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0c007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Lcom/android/mail/ui/bA;->aJd:I

    .line 77
    iget-object v1, p0, Lcom/android/mail/ui/bz;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0c007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Lcom/android/mail/ui/bA;->aJg:I

    .line 79
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mail/ui/bz;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->clear()V

    .line 109
    return-void
.end method
