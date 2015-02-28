.class public final Lcom/android/mail/ui/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aNd:Landroid/view/animation/DecelerateInterpolator;

.field private static aNe:I

.field private static aNf:I

.field private static aNg:I

.field private static aNh:I

.field private static aNi:I

.field private static aNj:F

.field public static aNk:F

.field public static aNl:F


# instance fields
.field private aKB:Z

.field private aNm:F

.field private final aNn:Lcom/android/mail/ui/dg;

.field private final aNo:I

.field private aNp:F

.field private aNq:Lcom/android/mail/ui/dh;

.field private aNr:Landroid/view/View;

.field private aNs:Z

.field private aNt:F

.field private aNu:F

.field private aNv:F

.field private aNw:Lcom/android/mail/ui/LeaveBehindItem;

.field private final hT:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/mail/ui/db;->aNd:Landroid/view/animation/DecelerateInterpolator;

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/android/mail/ui/db;->aNe:I

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/android/mail/ui/db;->aNk:F

    .line 61
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lcom/android/mail/ui/db;->aNl:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/ui/dg;FF)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/db;->aNo:I

    .line 88
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    .line 89
    iput p3, p0, Lcom/android/mail/ui/db;->aNt:F

    .line 90
    iput p4, p0, Lcom/android/mail/ui/db;->aNm:F

    .line 91
    sget v0, Lcom/android/mail/ui/db;->aNe:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/db;->aNe:I

    .line 94
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/db;->aNf:I

    .line 95
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/db;->aNg:I

    .line 96
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/db;->aNh:I

    .line 97
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/db;->aNi:I

    .line 98
    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/mail/ui/db;->aNj:F

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/db;Landroid/view/View;)F
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mail/ui/db;->aC(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/mail/ui/db;)Lcom/android/mail/ui/dg;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    return-object v0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 189
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    move-object p0, v0

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private aB(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/mail/ui/db;->aNo:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private aC(Landroid/view/View;)F
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 147
    invoke-direct {p0, p1}, Lcom/android/mail/ui/db;->aB(Landroid/view/View;)F

    move-result v1

    .line 148
    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 151
    sget v4, Lcom/android/mail/ui/db;->aNk:F

    mul-float/2addr v4, v1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 152
    sget v4, Lcom/android/mail/ui/db;->aNk:F

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 156
    :cond_0
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 153
    :cond_1
    sget v4, Lcom/android/mail/ui/db;->aNk:F

    sub-float v4, v0, v4

    mul-float/2addr v4, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 154
    sget v4, Lcom/android/mail/ui/db;->aNk:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static aD(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/mail/ui/db;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 178
    return-void
.end method

.method static synthetic b(Lcom/android/mail/ui/db;)Lcom/android/mail/ui/dh;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    return-object v0
.end method

.method private l(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3

    .prologue
    .line 116
    iget v0, p0, Lcom/android/mail/ui/db;->aNo:I

    if-nez v0, :cond_0

    const-string v0, "translationX"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    return-object v0

    .line 116
    :cond_0
    const-string v0, "translationY"

    goto :goto_0
.end method


# virtual methods
.method public final A(F)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/android/mail/ui/db;->aNt:F

    .line 104
    return-void
.end method

.method public final B(F)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/android/mail/ui/db;->aNm:F

    .line 108
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 204
    packed-switch v1, :pswitch_data_0

    .line 258
    :goto_0
    iget-boolean v0, p0, Lcom/android/mail/ui/db;->aKB:Z

    :goto_1
    return v0

    .line 206
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/db;->aNu:F

    .line 207
    iput-boolean v0, p0, Lcom/android/mail/ui/db;->aKB:Z

    .line 208
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/dg;->k(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 209
    instance-of v1, v0, Lcom/android/mail/ui/dh;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/android/mail/ui/dh;

    iput-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 213
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v0}, Lcom/android/mail/ui/dh;->pK()Lcom/android/mail/ui/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/di;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    iget-object v1, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/dg;->a(Lcom/android/mail/ui/dh;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/db;->aNs:Z

    .line 216
    iget-object v0, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/db;->aNp:F

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/db;->aNv:F

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    invoke-interface {v0}, Lcom/android/mail/ui/dg;->xt()V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v1, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    if-eqz v1, :cond_3

    .line 225
    iget v1, p0, Lcom/android/mail/ui/db;->aNu:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/mail/ui/db;->aKB:Z

    if-nez v1, :cond_2

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 228
    iget v3, p0, Lcom/android/mail/ui/db;->aNv:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 229
    iget v3, p0, Lcom/android/mail/ui/db;->aNp:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 230
    iget-object v3, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v3}, Lcom/android/mail/ui/dh;->pL()F

    move-result v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/db;->aNu:F

    .line 233
    iget-object v1, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    invoke-interface {v1}, Lcom/android/mail/ui/dg;->Ad()V

    goto/16 :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 239
    iget v1, p0, Lcom/android/mail/ui/db;->aNp:F

    sub-float/2addr v0, v1

    .line 240
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/db;->aNm:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    iget-object v1, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v1}, Lcom/android/mail/ui/dh;->pK()Lcom/android/mail/ui/di;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/di;->getView()Landroid/view/View;

    invoke-interface {v0}, Lcom/android/mail/ui/dg;->Ae()V

    .line 242
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    invoke-interface {v0}, Lcom/android/mail/ui/dg;->Ag()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/db;->aNw:Lcom/android/mail/ui/LeaveBehindItem;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/db;->aKB:Z

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/mail/ui/db;->aNp:F

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/db;->aNv:F

    .line 248
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/db;->aNu:F

    goto/16 :goto_0

    .line 252
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/mail/ui/db;->aKB:Z

    .line 253
    iput-object v2, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    .line 254
    iput-object v2, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    .line 255
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/mail/ui/db;->aNu:F

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/mail/ui/db;->aKB:Z

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 358
    packed-switch v0, :pswitch_data_0

    .line 440
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/db;->aNp:F

    sub-float v1, v0, v1

    .line 364
    iget v0, p0, Lcom/android/mail/ui/db;->aNp:F

    const/high16 v2, 0x42600000    # 56.0f

    iget v3, p0, Lcom/android/mail/ui/db;->aNt:F

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 365
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    :cond_2
    sget v0, Lcom/android/mail/ui/db;->aNj:F

    .line 371
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3

    .line 374
    const/4 v0, 0x1

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    iget-object v2, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v0, v2}, Lcom/android/mail/ui/dg;->a(Lcom/android/mail/ui/dh;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 379
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/db;->aB(Landroid/view/View;)F

    move-result v2

    .line 380
    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v2

    .line 381
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_7

    .line 382
    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 388
    :goto_2
    iget-object v1, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    iget v2, p0, Lcom/android/mail/ui/db;->aNo:I

    if-nez v2, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 389
    :goto_3
    iget-boolean v0, p0, Lcom/android/mail/ui/db;->aNs:Z

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mail/ui/db;->aC(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNw:Lcom/android/mail/ui/LeaveBehindItem;

    if-eqz v0, :cond_5

    .line 394
    iget-object v1, p0, Lcom/android/mail/ui/db;->aNw:Lcom/android/mail/ui/LeaveBehindItem;

    iget-object v2, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/mail/ui/db;->aB(Landroid/view/View;)F

    move-result v0

    sget v3, Lcom/android/mail/ui/db;->aNl:F

    mul-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    :cond_4
    :goto_4
    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/LeaveBehindItem;->z(F)V

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v0}, Lcom/android/mail/ui/dh;->pK()Lcom/android/mail/ui/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/di;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/ui/db;->aD(Landroid/view/View;)V

    goto/16 :goto_1

    .line 382
    :cond_6
    neg-float v0, v0

    goto :goto_2

    .line 384
    :cond_7
    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    goto :goto_2

    .line 388
    :cond_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 394
    :cond_9
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_4

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    if-eqz v0, :cond_1

    .line 403
    sget v0, Lcom/android/mail/ui/db;->aNh:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/ui/db;->aNt:F

    mul-float/2addr v0, v1

    .line 404
    iget-object v1, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 405
    sget v0, Lcom/android/mail/ui/db;->aNe:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/ui/db;->aNt:F

    mul-float v3, v0, v1

    .line 406
    iget-object v0, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/mail/ui/db;->aNo:I

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 407
    :goto_5
    iget-object v1, p0, Lcom/android/mail/ui/db;->hT:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/mail/ui/db;->aNo:I

    if-nez v2, :cond_e

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 412
    :goto_6
    iget-object v2, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 413
    iget-object v2, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/mail/ui/db;->aB(Landroid/view/View;)F

    move-result v5

    .line 415
    float-to-double v6, v4

    const-wide v8, 0x3fd999999999999aL    # 0.4

    float-to-double v10, v5

    mul-double/2addr v8, v10

    cmpl-double v2, v6, v8

    if-lez v2, :cond_f

    const/4 v2, 0x1

    .line 419
    :goto_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v6, v3

    if-lez v3, :cond_12

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_10

    const/4 v1, 0x1

    :goto_8
    iget-object v3, p0, Lcom/android/mail/ui/db;->aNr:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_11

    const/4 v3, 0x1

    :goto_9
    if-ne v1, v3, :cond_12

    float-to-double v6, v4

    const-wide v8, 0x3fa999999999999aL    # 0.05

    float-to-double v4, v5

    mul-double/2addr v4, v8

    cmpl-double v1, v6, v4

    if-lez v1, :cond_12

    const/4 v1, 0x1

    .line 429
    :goto_a
    iget-object v3, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    iget-object v4, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v3, v4}, Lcom/android/mail/ui/dg;->a(Lcom/android/mail/ui/dh;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v1, :cond_a

    if-eqz v2, :cond_13

    :cond_a
    const/4 v2, 0x1

    .line 432
    :goto_b
    if-eqz v2, :cond_17

    .line 433
    iget-object v2, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    if-eqz v1, :cond_14

    :goto_c
    invoke-interface {v2}, Lcom/android/mail/ui/dh;->pK()Lcom/android/mail/ui/di;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/di;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/dg;->a(Lcom/android/mail/ui/dh;)Z

    move-result v4

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_c

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_c

    :cond_b
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-nez v1, :cond_15

    iget v1, p0, Lcom/android/mail/ui/db;->aNo:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_15

    :cond_c
    invoke-direct {p0, v3}, Lcom/android/mail/ui/db;->aB(Landroid/view/View;)F

    move-result v1

    neg-float v1, v1

    :goto_d
    sget v5, Lcom/android/mail/ui/db;->aNg:I

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v6

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, v6, v0

    float-to-int v0, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_e
    invoke-static {v3}, Lcom/android/mail/utils/ag;->aG(Landroid/view/View;)V

    invoke-direct {p0, v3, v1}, Lcom/android/mail/ui/db;->l(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v5, Lcom/android/mail/ui/db;->aNd:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/mail/ui/dc;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/mail/ui/dc;-><init>(Lcom/android/mail/ui/db;Lcom/android/mail/ui/dh;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/mail/ui/dd;

    invoke-direct {v0, p0, v4, v3}, Lcom/android/mail/ui/dd;-><init>(Lcom/android/mail/ui/db;ZLandroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 406
    :cond_d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto/16 :goto_5

    .line 407
    :cond_e
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    goto/16 :goto_6

    .line 415
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 419
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 429
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 433
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_15
    invoke-direct {p0, v3}, Lcom/android/mail/ui/db;->aB(Landroid/view/View;)F

    move-result v1

    goto :goto_d

    :cond_16
    sget v0, Lcom/android/mail/ui/db;->aNf:I

    goto :goto_e

    .line 435
    :cond_17
    iget-object v0, p0, Lcom/android/mail/ui/db;->aNq:Lcom/android/mail/ui/dh;

    invoke-interface {v0}, Lcom/android/mail/ui/dh;->pK()Lcom/android/mail/ui/di;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/di;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/db;->aNn:Lcom/android/mail/ui/dg;

    invoke-interface {v2, v0}, Lcom/android/mail/ui/dg;->a(Lcom/android/mail/ui/dh;)Z

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mail/ui/db;->l(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget v3, Lcom/android/mail/ui/db;->aNi:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/mail/ui/de;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mail/ui/de;-><init>(Lcom/android/mail/ui/db;ZLandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/mail/ui/df;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/df;-><init>(Lcom/android/mail/ui/db;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    :cond_18
    move v0, v1

    goto/16 :goto_2

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
