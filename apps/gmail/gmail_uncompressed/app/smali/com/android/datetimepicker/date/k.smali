.class public abstract Lcom/android/datetimepicker/date/k;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field protected static II:I

.field protected static IJ:I

.field protected static IK:I

.field protected static IL:I

.field protected static IM:I

.field protected static IN:I

.field protected static IO:I

.field protected static IP:I

.field protected static IQ:F


# instance fields
.field protected GN:I

.field private final HO:Ljava/util/Calendar;

.field protected IA:Lcom/android/datetimepicker/date/a;

.field protected IR:I

.field private IS:Ljava/lang/String;

.field private IT:Ljava/lang/String;

.field protected IU:Landroid/graphics/Paint;

.field protected IV:Landroid/graphics/Paint;

.field protected IW:Landroid/graphics/Paint;

.field protected IX:Landroid/graphics/Paint;

.field protected IY:Landroid/graphics/Paint;

.field private final IZ:Ljava/util/Formatter;

.field protected Ib:I

.field private final Ja:Ljava/lang/StringBuilder;

.field protected Jb:I

.field protected Jc:I

.field protected Jd:I

.field protected Je:I

.field protected Jf:I

.field protected Jg:I

.field protected Jh:Z

.field protected Ji:I

.field protected Jj:I

.field protected Jk:I

.field protected Jl:I

.field protected Jm:I

.field protected Jn:I

.field protected final Jo:Ljava/util/Calendar;

.field private final Jp:Lcom/android/datetimepicker/date/l;

.field protected Jq:I

.field protected Jr:Lcom/android/datetimepicker/date/m;

.field private Js:Z

.field protected Jt:I

.field protected Ju:I

.field protected Jv:I

.field protected Jw:I

.field protected Jx:I

.field private Jy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x20

    sput v0, Lcom/android/datetimepicker/date/k;->II:I

    .line 103
    const/16 v0, 0xa

    sput v0, Lcom/android/datetimepicker/date/k;->IJ:I

    .line 114
    const/4 v0, 0x1

    sput v0, Lcom/android/datetimepicker/date/k;->IK:I

    .line 122
    const/4 v0, 0x0

    sput v0, Lcom/android/datetimepicker/date/k;->IQ:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/datetimepicker/date/k;-><init>(Landroid/content/Context;B)V

    .line 192
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    iput v5, p0, Lcom/android/datetimepicker/date/k;->IR:I

    .line 142
    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jb:I

    .line 144
    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jc:I

    .line 146
    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jd:I

    .line 154
    sget v0, Lcom/android/datetimepicker/date/k;->II:I

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    .line 156
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/k;->Jh:Z

    .line 158
    iput v1, p0, Lcom/android/datetimepicker/date/k;->Ji:I

    .line 160
    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jj:I

    .line 162
    iput v4, p0, Lcom/android/datetimepicker/date/k;->Ib:I

    .line 164
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    .line 166
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    .line 168
    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jm:I

    .line 170
    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jn:I

    .line 176
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jq:I

    .line 329
    iput v5, p0, Lcom/android/datetimepicker/date/k;->Jy:I

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->Jo:Ljava/util/Calendar;

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->HO:Ljava/util/Calendar;

    .line 201
    sget v1, Lcom/android/datetimepicker/h;->HE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->IS:Ljava/lang/String;

    .line 202
    sget v1, Lcom/android/datetimepicker/h;->HH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->IT:Ljava/lang/String;

    .line 204
    sget v1, Lcom/android/datetimepicker/d;->Hk:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jt:I

    .line 205
    sget v1, Lcom/android/datetimepicker/d;->Hh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->Ju:I

    .line 206
    sget v1, Lcom/android/datetimepicker/d;->Hj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jv:I

    .line 207
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jw:I

    .line 208
    sget v1, Lcom/android/datetimepicker/d;->Hi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->Jx:I

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->Ja:Ljava/lang/StringBuilder;

    .line 211
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/datetimepicker/date/k;->Ja:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->IZ:Ljava/util/Formatter;

    .line 213
    sget v1, Lcom/android/datetimepicker/e;->Hp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->IL:I

    .line 214
    sget v1, Lcom/android/datetimepicker/e;->Hr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->IM:I

    .line 215
    sget v1, Lcom/android/datetimepicker/e;->Hq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->IN:I

    .line 216
    sget v1, Lcom/android/datetimepicker/e;->Hs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->IO:I

    .line 217
    sget v1, Lcom/android/datetimepicker/e;->Ho:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->IP:I

    .line 220
    sget v1, Lcom/android/datetimepicker/e;->Hn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sget v1, Lcom/android/datetimepicker/date/k;->IO:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    .line 224
    new-instance v0, Lcom/android/datetimepicker/date/l;

    invoke-direct {v0, p0, p0}, Lcom/android/datetimepicker/date/l;-><init>(Lcom/android/datetimepicker/date/k;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    .line 225
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    invoke-static {p0, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 226
    invoke-static {p0, v4}, Landroid/support/v4/view/ad;->c(Landroid/view/View;I)V

    .line 227
    iput-boolean v4, p0, Lcom/android/datetimepicker/date/k;->Js:Z

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    sget v1, Lcom/android/datetimepicker/date/k;->IM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/datetimepicker/date/k;->IT:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jt:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->IW:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IW:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IW:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IW:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jx:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IW:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IW:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->IX:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IX:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IX:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IX:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Ju:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IX:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IX:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IX:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    sget v1, Lcom/android/datetimepicker/date/k;->IN:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jt:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/datetimepicker/date/k;->IS:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->IU:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IU:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IU:Landroid/graphics/Paint;

    sget v1, Lcom/android/datetimepicker/date/k;->IL:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IU:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IU:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->IU:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/android/datetimepicker/date/k;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/k;->aI(I)V

    return-void
.end method

.method private aI(I)V
    .locals 4

    .prologue
    .line 572
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Je:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/datetimepicker/date/k;->e(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jr:Lcom/android/datetimepicker/date/m;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jr:Lcom/android/datetimepicker/date/m;

    new-instance v1, Lcom/android/datetimepicker/date/j;

    iget v2, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Je:I

    invoke-direct {v1, v2, v3, p1}, Lcom/android/datetimepicker/date/j;-><init>(III)V

    invoke-interface {v0, v1}, Lcom/android/datetimepicker/date/m;->b(Lcom/android/datetimepicker/date/j;)V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/datetimepicker/date/l;->h(II)Z

    goto :goto_0
.end method

.method protected static gr()I
    .locals 1

    .prologue
    .line 440
    sget v0, Lcom/android/datetimepicker/date/k;->IO:I

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;IIIII)V
.end method

.method public final a(Lcom/android/datetimepicker/date/a;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/datetimepicker/date/k;->IA:Lcom/android/datetimepicker/date/a;

    .line 235
    return-void
.end method

.method public final a(Lcom/android/datetimepicker/date/m;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/datetimepicker/date/k;->Jr:Lcom/android/datetimepicker/date/m;

    .line 252
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 342
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "You must specify month and year for this view"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/k;->setTag(Ljava/lang/Object;)V

    .line 347
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    .line 349
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    sget v3, Lcom/android/datetimepicker/date/k;->IJ:I

    if-ge v0, v3, :cond_1

    .line 350
    sget v0, Lcom/android/datetimepicker/date/k;->IJ:I

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    .line 353
    :cond_1
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Ji:I

    .line 358
    :cond_2
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Je:I

    .line 359
    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    .line 362
    new-instance v4, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 364
    iput-boolean v1, p0, Lcom/android/datetimepicker/date/k;->Jh:Z

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jj:I

    .line 367
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->HO:Ljava/util/Calendar;

    const/4 v3, 0x2

    iget v5, p0, Lcom/android/datetimepicker/date/k;->Je:I

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 368
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->HO:Ljava/util/Calendar;

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 369
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->HO:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 370
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->HO:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jy:I

    .line 372
    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Ib:I

    .line 378
    :goto_0
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Je:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    invoke-static {v0, v3}, Lcom/android/datetimepicker/i;->y(II)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    move v0, v1

    .line 379
    :goto_1
    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    if-ge v0, v3, :cond_6

    .line 380
    add-int/lit8 v5, v0, 0x1

    .line 381
    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    iget v6, v4, Landroid/text/format/Time;->year:I

    if-ne v3, v6, :cond_5

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Je:I

    iget v6, v4, Landroid/text/format/Time;->month:I

    if-ne v3, v6, :cond_5

    iget v3, v4, Landroid/text/format/Time;->monthDay:I

    if-ne v5, v3, :cond_5

    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    .line 382
    iput-boolean v2, p0, Lcom/android/datetimepicker/date/k;->Jh:Z

    .line 383
    iput v5, p0, Lcom/android/datetimepicker/date/k;->Jj:I

    .line 379
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->HO:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Ib:I

    goto :goto_0

    :cond_5
    move v3, v1

    .line 381
    goto :goto_2

    .line 386
    :cond_6
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->gs()I

    move-result v0

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    rem-int/2addr v0, v4

    if-lez v0, :cond_7

    move v1, v2

    :cond_7
    add-int v0, v3, v1

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jq:I

    .line 389
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->bW()V

    .line 390
    return-void
.end method

.method public final d(Lcom/android/datetimepicker/date/j;)Z
    .locals 2

    .prologue
    .line 684
    iget v0, p1, Lcom/android/datetimepicker/date/j;->year:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/datetimepicker/date/j;->month:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Je:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/datetimepicker/date/j;->IH:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    if-le v0, v1, :cond_1

    .line 685
    :cond_0
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    iget v1, p1, Lcom/android/datetimepicker/date/j;->IH:I

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/l;->aJ(I)V

    .line 688
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/l;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final e(III)Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 591
    iget-object v2, p0, Lcom/android/datetimepicker/date/k;->IA:Lcom/android/datetimepicker/date/a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/datetimepicker/date/k;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/a;->gi()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    .line 597
    :cond_0
    :goto_1
    return v0

    .line 591
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt p1, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge p2, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt p2, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p3, v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    .line 593
    :cond_4
    iget-object v2, p0, Lcom/android/datetimepicker/date/k;->IA:Lcom/android/datetimepicker/date/a;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/datetimepicker/date/k;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/a;->gj()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le p1, v3, :cond_5

    move v2, v0

    :goto_2
    if-nez v2, :cond_0

    move v0, v1

    .line 597
    goto :goto_1

    .line 593
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt p1, v3, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le p2, v3, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt p2, v3, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p3, v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method public final f(FF)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 534
    iget v0, p0, Lcom/android/datetimepicker/date/k;->IR:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/datetimepicker/date/k;->GN:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->IR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :cond_0
    move v0, v1

    .line 535
    :goto_0
    if-lez v0, :cond_1

    iget v2, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    if-le v0, v2, :cond_2

    :cond_1
    move v0, v1

    .line 538
    :cond_2
    return v0

    .line 534
    :cond_3
    sget v2, Lcom/android/datetimepicker/date/k;->IO:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    div-int/2addr v2, v3

    int-to-float v3, v0

    sub-float v3, p1, v3

    iget v4, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/datetimepicker/date/k;->GN:I

    sub-int v0, v4, v0

    iget v4, p0, Lcom/android/datetimepicker/date/k;->IR:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float v0, v3, v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->gs()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public final gq()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/k;->Jq:I

    .line 398
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->requestLayout()V

    .line 399
    return-void
.end method

.method protected final gs()I
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jy:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Ib:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jy:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/android/datetimepicker/date/k;->Ib:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jy:I

    goto :goto_0
.end method

.method public final gt()Lcom/android/datetimepicker/date/j;
    .locals 4

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->bX()I

    move-result v1

    .line 662
    if-ltz v1, :cond_0

    .line 663
    new-instance v0, Lcom/android/datetimepicker/date/j;

    iget v2, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Je:I

    invoke-direct {v0, v2, v3, v1}, Lcom/android/datetimepicker/date/j;-><init>(III)V

    .line 665
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gu()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->gv()V

    .line 674
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 324
    iget v0, p0, Lcom/android/datetimepicker/date/k;->GN:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->IR:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x2

    sget v0, Lcom/android/datetimepicker/date/k;->IO:I

    sget v1, Lcom/android/datetimepicker/date/k;->IN:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/datetimepicker/date/k;->IM:I

    div-int/lit8 v1, v1, 0x3

    add-int v11, v0, v1

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Ja:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->HO:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/k;->IZ:Ljava/util/Formatter;

    const/16 v6, 0x34

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v10

    int-to-float v2, v11

    iget-object v3, p0, Lcom/android/datetimepicker/date/k;->IV:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 325
    sget v0, Lcom/android/datetimepicker/date/k;->IO:I

    sget v1, Lcom/android/datetimepicker/date/k;->IN:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v0, p0, Lcom/android/datetimepicker/date/k;->GN:I

    iget v2, p0, Lcom/android/datetimepicker/date/k;->IR:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    mul-int/lit8 v2, v2, 0x2

    div-int v2, v0, v2

    move v0, v8

    :goto_0
    iget v3, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Ib:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    rem-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/datetimepicker/date/k;->IR:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/datetimepicker/date/k;->Jo:Ljava/util/Calendar;

    invoke-virtual {v5, v12, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/android/datetimepicker/date/k;->Jo:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v12, v9, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, p0, Lcom/android/datetimepicker/date/k;->IY:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    sget v1, Lcom/android/datetimepicker/date/k;->IL:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/datetimepicker/date/k;->IK:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/datetimepicker/date/k;->IO:I

    add-int v6, v0, v1

    iget v0, p0, Lcom/android/datetimepicker/date/k;->GN:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->IR:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v10, v0, v1

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->gs()I

    move-result v0

    move v4, v9

    move v7, v0

    :goto_1
    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jl:I

    if-gt v4, v0, :cond_2

    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v10

    iget v1, p0, Lcom/android/datetimepicker/date/k;->IR:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v5, v0

    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    sget v0, Lcom/android/datetimepicker/date/k;->IL:I

    sget v0, Lcom/android/datetimepicker/date/k;->IK:I

    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    iget v2, p0, Lcom/android/datetimepicker/date/k;->Jf:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->Je:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/datetimepicker/date/k;->a(Landroid/graphics/Canvas;IIIII)V

    add-int/lit8 v0, v7, 0x1

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jk:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    add-int/2addr v6, v0

    move v0, v8

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v7, v0

    goto :goto_1

    .line 327
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 416
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/datetimepicker/date/k;->Jg:I

    iget v2, p0, Lcom/android/datetimepicker/date/k;->Jq:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/datetimepicker/date/k;->IO:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/datetimepicker/date/k;->setMeasuredDimension(II)V

    .line 418
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 422
    iput p1, p0, Lcom/android/datetimepicker/date/k;->GN:I

    .line 425
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Jp:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->bW()V

    .line 426
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 267
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/datetimepicker/date/k;->f(FF)I

    move-result v0

    .line 268
    if-ltz v0, :cond_0

    .line 269
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/k;->aI(I)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/k;->Js:Z

    if-nez v0, :cond_0

    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 248
    :cond_0
    return-void
.end method
