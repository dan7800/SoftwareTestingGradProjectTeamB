.class public Lcom/android/datetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private Ih:Lcom/android/datetimepicker/a;

.field private KA:I

.field private KB:F

.field private KC:F

.field private KD:Landroid/view/accessibility/AccessibilityManager;

.field private Kb:Z

.field private final Kg:I

.field private Kh:I

.field private Ki:Lcom/android/datetimepicker/time/e;

.field private Kj:Z

.field private Kk:I

.field private Kl:I

.field private Km:Z

.field private Kn:I

.field private Ko:Lcom/android/datetimepicker/time/b;

.field private Kp:Lcom/android/datetimepicker/time/a;

.field private Kq:Lcom/android/datetimepicker/time/g;

.field private Kr:Lcom/android/datetimepicker/time/g;

.field private Ks:Lcom/android/datetimepicker/time/f;

.field private Kt:Lcom/android/datetimepicker/time/f;

.field private Ku:Landroid/view/View;

.field private Kv:[I

.field private Kw:Z

.field private Kx:I

.field private Ky:Z

.field private Kz:Z

.field private final hC:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-virtual {p0, p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kg:I

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->hC:I

    .line 107
    iput-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    .line 109
    new-instance v0, Lcom/android/datetimepicker/time/b;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ko:Lcom/android/datetimepicker/time/b;

    .line 110
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ko:Lcom/android/datetimepicker/time/b;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v0, Lcom/android/datetimepicker/time/a;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    .line 113
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v0, Lcom/android/datetimepicker/time/g;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kq:Lcom/android/datetimepicker/time/g;

    .line 116
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kq:Lcom/android/datetimepicker/time/g;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Lcom/android/datetimepicker/time/g;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kr:Lcom/android/datetimepicker/time/g;

    .line 118
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kr:Lcom/android/datetimepicker/time/g;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Lcom/android/datetimepicker/time/f;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ks:Lcom/android/datetimepicker/time/f;

    .line 121
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ks:Lcom/android/datetimepicker/time/f;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance v0, Lcom/android/datetimepicker/time/f;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kt:Lcom/android/datetimepicker/time/f;

    .line 123
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kt:Lcom/android/datetimepicker/time/f;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gy()V

    .line 128
    iput v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kh:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kw:Z

    .line 131
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ku:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ku:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ku:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/datetimepicker/d;->Hm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ku:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ku:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 138
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KD:Landroid/view/accessibility/AccessibilityManager;

    .line 140
    iput-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kj:Z

    .line 141
    return-void
.end method

.method private A(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 297
    if-nez p1, :cond_1

    .line 298
    iput p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-ne p1, v1, :cond_2

    .line 300
    iput p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kl:I

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 302
    if-nez p2, :cond_3

    .line 303
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    goto :goto_0

    .line 304
    :cond_3
    if-ne p2, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    goto :goto_0
.end method

.method private static B(II)I
    .locals 4

    .prologue
    .line 400
    div-int/lit8 v0, p0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    .line 402
    add-int/lit8 v1, v0, 0x1e

    .line 403
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    .line 404
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 406
    if-ne p0, v0, :cond_0

    .line 407
    add-int/lit8 v0, v0, -0x1e

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    sub-int v2, p0, v0

    sub-int v3, v1, p0

    if-lt v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 414
    goto :goto_0
.end method

.method private a(FFZ[Ljava/lang/Boolean;)I
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ks:Lcom/android/datetimepicker/time/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/f;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    .line 503
    :goto_0
    return v0

    .line 499
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kt:Lcom/android/datetimepicker/time/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/f;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    .line 503
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(IZZZ)I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    const/16 v2, 0x168

    const/4 v3, 0x0

    .line 435
    if-ne p1, v0, :cond_0

    .line 478
    :goto_0
    return v0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    move-result v6

    .line 441
    if-nez p3, :cond_1

    if-ne v6, v5, :cond_1

    move v1, v5

    .line 442
    :goto_1
    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kv:[I

    if-nez v1, :cond_2

    :goto_2
    move v4, v0

    .line 449
    :goto_3
    if-nez v6, :cond_4

    .line 450
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ks:Lcom/android/datetimepicker/time/f;

    .line 451
    const/16 v1, 0x1e

    .line 456
    :goto_4
    invoke-virtual {v0, v4, p2, p4}, Lcom/android/datetimepicker/time/f;->b(IZZ)V

    .line 457
    invoke-virtual {v0}, Lcom/android/datetimepicker/time/f;->invalidate()V

    .line 460
    if-nez v6, :cond_7

    .line 461
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kb:Z

    if-eqz v0, :cond_6

    .line 462
    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    move v0, v2

    .line 474
    :goto_5
    div-int v1, v0, v1

    .line 475
    if-nez v6, :cond_8

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kb:Z

    if-eqz v2, :cond_8

    if-nez p2, :cond_8

    if-eqz v0, :cond_8

    .line 476
    add-int/lit8 v0, v1, 0xc

    goto :goto_0

    :cond_1
    move v1, v3

    .line 441
    goto :goto_1

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kv:[I

    aget v0, v0, p1

    goto :goto_2

    .line 445
    :cond_3
    invoke-static {p1, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->B(II)I

    move-result v4

    goto :goto_3

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kt:Lcom/android/datetimepicker/time/f;

    .line 454
    const/4 v1, 0x6

    goto :goto_4

    .line 464
    :cond_5
    if-ne v4, v2, :cond_9

    if-nez p2, :cond_9

    move v0, v3

    .line 465
    goto :goto_5

    .line 467
    :cond_6
    if-nez v4, :cond_9

    move v0, v2

    .line 468
    goto :goto_5

    .line 470
    :cond_7
    if-ne v4, v2, :cond_9

    if-ne v6, v5, :cond_9

    move v0, v3

    .line 471
    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v4

    goto :goto_5
.end method

.method static synthetic a(Lcom/android/datetimepicker/time/RadialPickerLayout;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    return v0
.end method

.method static synthetic a(Lcom/android/datetimepicker/time/RadialPickerLayout;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kh:I

    return p1
.end method

.method static synthetic a(Lcom/android/datetimepicker/time/RadialPickerLayout;IZ)I
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    return-object v0
.end method

.method static synthetic c(Lcom/android/datetimepicker/time/RadialPickerLayout;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    return v0
.end method

.method static synthetic d(Lcom/android/datetimepicker/time/RadialPickerLayout;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KA:I

    return v0
.end method

.method static synthetic e(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ki:Lcom/android/datetimepicker/time/e;

    return-object v0
.end method

.method private gx()I
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 287
    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private gy()V
    .locals 7

    .prologue
    const/16 v6, 0x169

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 344
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kv:[I

    .line 353
    const/16 v1, 0x8

    move v4, v0

    move v3, v0

    move v0, v1

    move v1, v2

    .line 355
    :goto_0
    if-ge v4, v6, :cond_3

    .line 357
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kv:[I

    aput v3, v5, v4

    .line 360
    if-ne v1, v0, :cond_2

    .line 361
    add-int/lit8 v1, v3, 0x6

    .line 362
    const/16 v0, 0x168

    if-ne v1, v0, :cond_0

    .line 363
    const/4 v0, 0x7

    :goto_1
    move v3, v1

    move v1, v2

    .line 355
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    :cond_0
    rem-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_1

    .line 365
    const/16 v0, 0xe

    goto :goto_1

    .line 367
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 371
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 754
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 756
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 757
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 758
    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 759
    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kl:I

    iput v2, v0, Landroid/text/format/Time;->minute:I

    .line 760
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 762
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kb:Z

    if-eqz v0, :cond_1

    .line 763
    const/16 v0, 0x81

    .line 765
    :goto_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :goto_1
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final gz()I
    .locals 3

    .prologue
    .line 511
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kn:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 512
    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current item showing was unfortunately set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, -0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kn:I

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 744
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 745
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 746
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 747
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 150
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 152
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 154
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 156
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/16 v6, 0xc

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x1

    .line 564
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 565
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 568
    new-array v4, v1, [Ljava/lang/Boolean;

    .line 569
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    .line 571
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    .line 721
    :cond_1
    :goto_1
    return v1

    .line 573
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kw:Z

    if-eqz v5, :cond_1

    .line 577
    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KB:F

    .line 578
    iput v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KC:F

    .line 580
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kh:I

    .line 581
    iput-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    .line 582
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kz:Z

    .line 584
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Km:Z

    if-nez v2, :cond_3

    .line 585
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v2, v0, v3}, Lcom/android/datetimepicker/time/a;->g(FF)I

    move-result v2

    iput v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    .line 589
    :goto_2
    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-ne v2, v1, :cond_4

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ih:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->ge()V

    .line 593
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KA:I

    .line 594
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/datetimepicker/time/c;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/c;-><init>(Lcom/android/datetimepicker/time/RadialPickerLayout;)V

    iget v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->hC:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 587
    :cond_3
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    goto :goto_2

    .line 604
    :cond_4
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KD:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 606
    invoke-direct {p0, v0, v3, v2, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KA:I

    .line 607
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KA:I

    if-eq v0, v8, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ih:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->ge()V

    .line 611
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/datetimepicker/time/d;

    invoke-direct {v2, p0, v4}, Lcom/android/datetimepicker/time/d;-><init>(Lcom/android/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    iget v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->hC:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 625
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kw:Z

    if-nez v5, :cond_5

    .line 627
    const-string v0, "RadialPickerLayout"

    const-string v2, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 631
    :cond_5
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KC:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 632
    iget v6, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 634
    iget-boolean v7, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kg:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kg:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    .line 636
    :cond_6
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-ne v5, v1, :cond_8

    .line 643
    :cond_7
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v1, v0, v3}, Lcom/android/datetimepicker/time/a;->g(FF)I

    move-result v0

    .line 645
    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-eq v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v0, v8}, Lcom/android/datetimepicker/time/a;->aM(I)V

    .line 647
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/a;->invalidate()V

    .line 648
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    goto/16 :goto_0

    .line 653
    :cond_8
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KA:I

    if-eq v5, v8, :cond_0

    .line 655
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    .line 660
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 661
    invoke-direct {p0, v0, v3, v1, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    .line 662
    if-eq v0, v8, :cond_1

    .line 663
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(IZZZ)I

    move-result v0

    .line 664
    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kh:I

    if-eq v0, v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ih:Lcom/android/datetimepicker/a;

    invoke-virtual {v2}, Lcom/android/datetimepicker/a;->ge()V

    .line 666
    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kh:I

    .line 667
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ki:Lcom/android/datetimepicker/time/e;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    goto/16 :goto_1

    .line 672
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kw:Z

    if-nez v5, :cond_9

    .line 674
    const-string v0, "RadialPickerLayout"

    const-string v2, "Input was disabled, but received ACTION_UP."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ki:Lcom/android/datetimepicker/time/e;

    goto/16 :goto_1

    .line 679
    :cond_9
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 680
    iput-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kz:Z

    .line 683
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-ne v5, v1, :cond_c

    .line 684
    :cond_a
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v1, v0, v3}, Lcom/android/datetimepicker/time/a;->g(FF)I

    move-result v0

    .line 685
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v1, v8}, Lcom/android/datetimepicker/time/a;->aM(I)V

    .line 686
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/a;->invalidate()V

    .line 688
    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    if-ne v0, v1, :cond_b

    .line 689
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kp:Lcom/android/datetimepicker/time/a;

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/a;->aL(I)V

    .line 690
    invoke-direct {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gx()I

    move-result v1

    if-eq v1, v0, :cond_b

    .line 691
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ki:Lcom/android/datetimepicker/time/e;

    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    .line 692
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->A(II)V

    .line 695
    :cond_b
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kx:I

    goto/16 :goto_0

    .line 700
    :cond_c
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->KA:I

    if-eq v5, v8, :cond_e

    .line 701
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    invoke-direct {p0, v0, v3, v5, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    .line 702
    if-eq v3, v8, :cond_e

    .line 703
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(IZZZ)I

    move-result v0

    .line 704
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    move-result v3

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kb:Z

    if-nez v3, :cond_d

    .line 705
    invoke-direct {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gx()I

    move-result v3

    .line 706
    if-nez v3, :cond_10

    if-ne v0, v6, :cond_10

    move v0, v2

    .line 712
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->A(II)V

    .line 713
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ki:Lcom/android/datetimepicker/time/e;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    .line 716
    :cond_e
    iput-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ky:Z

    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 703
    goto :goto_3

    .line 708
    :cond_10
    if-ne v3, v1, :cond_d

    if-eq v0, v6, :cond_d

    .line 709
    add-int/lit8 v0, v0, 0xc

    goto :goto_4

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0xc

    const/4 v0, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 779
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    :goto_0
    return v3

    .line 784
    :cond_0
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_3

    move v4, v3

    .line 789
    :goto_1
    if-eqz v4, :cond_b

    .line 790
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    move-result v1

    if-nez v1, :cond_4

    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kk:I

    .line 792
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    move-result v6

    .line 793
    if-nez v6, :cond_5

    .line 794
    const/16 v1, 0x1e

    .line 795
    rem-int/lit8 v0, v0, 0xc

    move v7, v1

    move v1, v0

    move v0, v7

    .line 800
    :goto_3
    mul-int/2addr v1, v0

    .line 801
    invoke-static {v1, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->B(II)I

    move-result v1

    .line 802
    div-int v4, v1, v0

    .line 805
    if-nez v6, :cond_7

    .line 806
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kb:Z

    if-eqz v0, :cond_6

    .line 807
    const/16 v1, 0x17

    move v0, v2

    .line 815
    :goto_4
    if-le v4, v1, :cond_8

    .line 822
    :goto_5
    if-nez v6, :cond_a

    invoke-direct {p0, v2, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->A(II)V

    rem-int/lit8 v1, v0, 0xc

    mul-int/lit8 v1, v1, 0x1e

    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ks:Lcom/android/datetimepicker/time/f;

    iget-boolean v6, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kb:Z

    if-eqz v6, :cond_9

    if-gt v0, v5, :cond_9

    if-eqz v0, :cond_9

    move v0, v3

    :goto_6
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/datetimepicker/time/f;->b(IZZ)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ks:Lcom/android/datetimepicker/time/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/f;->invalidate()V

    .line 823
    :cond_2
    :goto_7
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Ki:Lcom/android/datetimepicker/time/e;

    goto :goto_0

    .line 786
    :cond_3
    const/16 v1, 0x2000

    if-ne p1, v1, :cond_e

    move v4, v0

    .line 787
    goto :goto_1

    .line 790
    :cond_4
    if-ne v1, v3, :cond_1

    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kl:I

    goto :goto_2

    .line 796
    :cond_5
    if-ne v6, v3, :cond_d

    .line 797
    const/4 v1, 0x6

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    :cond_6
    move v0, v3

    move v1, v5

    .line 810
    goto :goto_4

    .line 813
    :cond_7
    const/16 v1, 0x37

    move v0, v2

    goto :goto_4

    .line 818
    :cond_8
    if-ge v4, v0, :cond_c

    move v0, v1

    .line 820
    goto :goto_5

    :cond_9
    move v0, v2

    .line 822
    goto :goto_6

    :cond_a
    if-ne v6, v3, :cond_2

    invoke-direct {p0, v3, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->A(II)V

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kt:Lcom/android/datetimepicker/time/f;

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/datetimepicker/time/f;->b(IZZ)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->Kt:Lcom/android/datetimepicker/time/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/f;->invalidate()V

    goto :goto_7

    :cond_b
    move v3, v2

    .line 827
    goto :goto_0

    :cond_c
    move v0, v4

    goto :goto_5

    :cond_d
    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_e
    move v4, v2

    goto/16 :goto_1
.end method
