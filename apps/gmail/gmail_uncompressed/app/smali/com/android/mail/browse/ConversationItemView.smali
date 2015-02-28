.class public Lcom/android/mail/browse/ConversationItemView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/bd;
.implements Lcom/android/mail/browse/j;
.implements Lcom/android/mail/ui/aK;
.implements Lcom/android/mail/ui/dh;


# static fields
.field private static amU:I

.field private static amV:Lcom/android/mail/f/b;

.field private static final amW:Landroid/graphics/Typeface;

.field private static final amX:Landroid/graphics/Typeface;

.field private static final amY:[I

.field private static amZ:Landroid/graphics/Bitmap;

.field private static final anA:Landroid/graphics/Paint;

.field private static final anB:Landroid/graphics/Paint;

.field private static anC:I

.field private static anD:Landroid/content/BroadcastReceiver;

.field private static ana:Landroid/graphics/Bitmap;

.field private static anb:Landroid/graphics/Bitmap;

.field private static anc:Landroid/graphics/Bitmap;

.field private static and:Landroid/graphics/Bitmap;

.field private static ane:Landroid/graphics/Bitmap;

.field private static anf:Landroid/graphics/Bitmap;

.field private static ang:Landroid/graphics/Bitmap;

.field private static anh:Landroid/graphics/Bitmap;

.field private static ani:Landroid/graphics/Bitmap;

.field private static anj:Landroid/graphics/Bitmap;

.field private static ank:Landroid/graphics/Bitmap;

.field private static anl:Landroid/graphics/drawable/Drawable;

.field private static anm:Ljava/lang/String;

.field private static ann:Ljava/lang/String;

.field private static ano:I

.field private static anp:I

.field private static anq:I

.field private static anr:I

.field private static ans:I

.field private static ant:I

.field private static anu:I

.field private static anv:I

.field private static anw:I

.field private static anx:I

.field private static final any:Landroid/text/TextPaint;

.field private static final anz:Landroid/text/TextPaint;

.field private static aog:I

.field private static aoh:Landroid/text/style/TextAppearanceSpan;

.field private static aoi:Landroid/text/style/TextAppearanceSpan;

.field private static aoj:Landroid/text/style/TextAppearanceSpan;

.field private static aok:Landroid/text/style/BackgroundColorSpan;

.field private static aol:I

.field private static aom:Landroid/text/style/CharacterStyle;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final Nc:Lcom/android/mail/providers/Account;

.field private final anE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private anF:I

.field private anG:I

.field private anH:I

.field private anI:I

.field private anJ:I

.field private anK:I

.field private anL:I

.field private anM:I

.field private final anN:Z

.field private final anO:Z

.field anP:Lcom/android/mail/browse/O;

.field private anQ:Lcom/android/mail/browse/P;

.field private anR:Lcom/android/mail/browse/R;

.field private anS:Z

.field private anT:Z

.field private anU:Lcom/android/mail/ui/ConversationCheckedSet;

.field private anV:Lcom/android/mail/providers/Folder;

.field private anW:Z

.field private anX:Z

.field private anY:Z

.field private anZ:Lcom/android/mail/ui/ae;

.field private aoa:F

.field private aob:Lcom/android/mail/ui/as;

.field private final aoc:Landroid/widget/TextView;

.field private final aod:Landroid/widget/TextView;

.field private final aoe:Landroid/widget/TextView;

.field private aof:I

.field private final aon:Lcom/android/mail/b/c;

.field private aoo:I

.field private aop:Landroid/graphics/Bitmap;

.field private aoq:Landroid/graphics/Rect;

.field private aor:Lcom/android/mail/browse/M;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    sput v3, Lcom/android/mail/browse/ConversationItemView;->amU:I

    .line 107
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->mW:Ljava/lang/String;

    .line 109
    const-string v0, "sans-serif"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->amW:Landroid/graphics/Typeface;

    .line 111
    const-string v0, "sans-serif-light"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->amX:Landroid/graphics/Typeface;

    .line 114
    new-array v0, v2, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->amY:[I

    .line 147
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    .line 148
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->anz:Landroid/text/TextPaint;

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->anA:Landroid/graphics/Paint;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->anB:Landroid/graphics/Paint;

    .line 231
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 232
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anz:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 234
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anA:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 354
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anE:Landroid/util/SparseArray;

    .line 160
    iput v3, p0, Lcom/android/mail/browse/ConversationItemView;->anF:I

    .line 185
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoa:F

    .line 211
    iput v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoo:I

    .line 213
    iput-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aop:Landroid/graphics/Bitmap;

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoq:Landroid/graphics/Rect;

    .line 228
    iput-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    .line 355
    const-string v0, "CIVC constructor"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationItemView;->setClickable(Z)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationItemView;->setLongClickable(Z)V

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    .line 359
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 360
    invoke-static {v3}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anN:Z

    .line 361
    const v0, 0x7f0e0008

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anO:Z

    .line 362
    iput-object p2, p0, Lcom/android/mail/browse/ConversationItemView;->Nc:Lcom/android/mail/providers/Account;

    .line 364
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mail/browse/ConversationItemView;->ak(Landroid/content/Context;)V

    .line 366
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/e/q;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 368
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    .line 369
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 371
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    .line 372
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 373
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 374
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroid/support/v4/view/ad;->d(Landroid/view/View;I)V

    .line 375
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/mail/utils/al;->aJ(Landroid/view/View;)V

    .line 377
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    .line 378
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 379
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    sget-object v4, Lcom/android/mail/browse/ConversationItemView;->amX:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a007f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ad;->d(Landroid/view/View;I)V

    .line 383
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/mail/utils/al;->aJ(Landroid/view/View;)V

    .line 386
    if-ne v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 388
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 394
    :goto_1
    new-instance v0, Lcom/android/mail/b/c;

    sget v1, Lcom/android/mail/browse/ConversationItemView;->anv:I

    invoke-direct {v0, v3, v1}, Lcom/android/mail/b/c;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    .line 395
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v0, p0}, Lcom/android/mail/b/c;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 397
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 398
    return-void

    :cond_0
    move v0, v2

    .line 361
    goto/16 :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 391
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_1
.end method

.method private static a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1140
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1141
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 1142
    aget-object v1, p0, v3

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1144
    :cond_0
    return-object v0
.end method

.method private a(Lcom/android/mail/browse/R;Lcom/android/mail/ui/as;Lcom/android/mail/browse/M;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;ILandroid/graphics/Bitmap;ZZ)V
    .locals 6

    .prologue
    .line 505
    move/from16 v0, p11

    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoo:I

    .line 506
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aop:Landroid/graphics/Bitmap;

    .line 507
    iput-object p3, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    .line 508
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anY:Z

    .line 510
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    if-eqz v2, :cond_3

    .line 511
    const-string v2, "unbind"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 512
    iget-object v2, p1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-wide v2, v2, Lcom/android/mail/providers/Conversation;->id:J

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v4, v4, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v4, Lcom/android/mail/providers/Conversation;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    .line 515
    :goto_0
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v3, v3, Lcom/android/mail/browse/R;->aqa:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/mail/browse/R;->aqa:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v3}, Lcom/android/mail/b/c;->ox()Lcom/android/mail/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/b/g;->ov()V

    .line 519
    :cond_1
    if-eqz v2, :cond_2

    .line 521
    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 522
    :goto_1
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v3, v2}, Lcom/android/mail/b/c;->ap(Z)V

    .line 524
    :cond_2
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 526
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    .line 527
    iput-object p1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    .line 528
    iput-object p2, p0, Lcom/android/mail/browse/ConversationItemView;->aob:Lcom/android/mail/ui/as;

    .line 529
    iput-object p4, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    .line 530
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    if-eqz v2, :cond_4

    .line 531
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v2, p0}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Lcom/android/mail/ui/aK;)V

    .line 533
    :cond_4
    iput-object p5, p0, Lcom/android/mail/browse/ConversationItemView;->anV:Lcom/android/mail/providers/Folder;

    .line 534
    if-eqz p5, :cond_d

    invoke-virtual {p5}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationItemView;->anW:Z

    .line 535
    iput-boolean p7, p0, Lcom/android/mail/browse/ConversationItemView;->anX:Z

    .line 536
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    .line 538
    const-string v2, "drawables"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v2}, Lcom/android/mail/b/c;->ox()Lcom/android/mail/b/g;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v3}, Lcom/android/mail/ui/ae;->xI()Lcom/android/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mail/b/g;->a(Lcom/android/a/a;)V

    .line 540
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v2}, Lcom/android/mail/b/c;->ox()Lcom/android/mail/b/g;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v3}, Lcom/android/mail/ui/ae;->xJ()Lcom/android/mail/b/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mail/b/g;->a(Lcom/android/mail/b/j;)V

    .line 541
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 543
    const/4 v2, 0x1

    if-ne p6, v2, :cond_e

    .line 544
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mail/browse/ConversationItemView;->aof:I

    .line 549
    :goto_3
    const-string v2, "folder displayer"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    if-nez v2, :cond_f

    .line 552
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    new-instance v3, Lcom/android/mail/browse/N;

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v5}, Lcom/android/mail/ui/ae;->qJ()Landroid/support/v4/e/a;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/mail/browse/N;-><init>(Landroid/content/Context;Landroid/support/v4/e/a;)V

    iput-object v3, v2, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    .line 557
    :goto_4
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 560
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anV:Lcom/android/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 561
    const/4 v2, 0x2

    .line 566
    :goto_5
    const-string v3, "load folders"

    invoke-static {v3}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v3, v3, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v4, v4, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->anV:Lcom/android/mail/providers/Folder;

    iget-object v5, v5, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/mail/browse/N;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V

    .line 569
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 571
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v2, v2, Lcom/android/mail/browse/R;->apE:Z

    if-eqz v2, :cond_11

    .line 572
    const-string v2, "relative time"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v4, v4, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v4, Lcom/android/mail/providers/Conversation;->ayW:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mail/browse/R;->apD:Ljava/lang/CharSequence;

    .line 575
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 580
    :goto_6
    const-string v2, "config setup"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 581
    new-instance v2, Lcom/android/mail/browse/P;

    invoke-direct {v2}, Lcom/android/mail/browse/P;-><init>()V

    iget v3, p0, Lcom/android/mail/browse/ConversationItemView;->aof:I

    invoke-virtual {v2, v3}, Lcom/android/mail/browse/P;->bW(I)Lcom/android/mail/browse/P;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/P;->aw(Z)Lcom/android/mail/browse/P;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    .line 584
    iget-object v2, p1, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    invoke-virtual {v2}, Lcom/android/mail/browse/N;->pS()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 585
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v2}, Lcom/android/mail/browse/P;->pU()Lcom/android/mail/browse/P;

    .line 587
    :cond_5
    iget-boolean v2, p1, Lcom/android/mail/browse/R;->apT:Z

    if-nez v2, :cond_6

    iget-boolean v2, p1, Lcom/android/mail/browse/R;->apU:Z

    if-nez v2, :cond_6

    iget-boolean v2, p1, Lcom/android/mail/browse/R;->apV:Z

    if-eqz v2, :cond_7

    .line 588
    :cond_6
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v2}, Lcom/android/mail/browse/P;->pV()Lcom/android/mail/browse/P;

    .line 590
    :cond_7
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v2, v2, Lcom/android/mail/providers/Conversation;->color:I

    if-eqz v2, :cond_8

    .line 591
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v2}, Lcom/android/mail/browse/P;->pW()Lcom/android/mail/browse/P;

    .line 595
    :cond_8
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/mail/browse/R;->apF:Landroid/graphics/Bitmap;

    .line 596
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v3, v2, Lcom/android/mail/providers/Conversation;->azf:I

    .line 597
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v2, v2, Lcom/android/mail/providers/Conversation;->priority:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    .line 599
    :goto_7
    if-eqz v2, :cond_13

    if-eqz p8, :cond_13

    const/4 v2, 0x1

    .line 600
    :goto_8
    if-eqz p9, :cond_15

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    .line 602
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/mail/browse/ConversationItemView;->ane:Landroid/graphics/Bitmap;

    :goto_9
    iput-object v2, v3, Lcom/android/mail/browse/R;->apF:Landroid/graphics/Bitmap;

    .line 611
    :cond_9
    :goto_a
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apF:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 612
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v2}, Lcom/android/mail/browse/P;->pX()Lcom/android/mail/browse/P;

    .line 614
    :cond_a
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 616
    const-string v2, "content description"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->px()V

    .line 618
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 619
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->requestLayout()V

    .line 620
    return-void

    .line 512
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 521
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 534
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 546
    :cond_e
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mail/browse/ConversationItemView;->aof:I

    goto/16 :goto_3

    .line 555
    :cond_f
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    invoke-virtual {v2}, Lcom/android/mail/browse/N;->reset()V

    goto/16 :goto_4

    .line 563
    :cond_10
    const/4 v2, -0x1

    goto/16 :goto_5

    .line 577
    :cond_11
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/mail/browse/R;->apD:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 597
    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    .line 599
    :cond_13
    const/4 v2, 0x0

    goto :goto_8

    .line 602
    :cond_14
    sget-object v2, Lcom/android/mail/browse/ConversationItemView;->anc:Landroid/graphics/Bitmap;

    goto :goto_9

    .line 604
    :cond_15
    if-eqz p9, :cond_17

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 606
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/mail/browse/ConversationItemView;->anf:Landroid/graphics/Bitmap;

    :goto_b
    iput-object v2, v3, Lcom/android/mail/browse/R;->apF:Landroid/graphics/Bitmap;

    goto :goto_a

    :cond_16
    sget-object v2, Lcom/android/mail/browse/ConversationItemView;->and:Landroid/graphics/Bitmap;

    goto :goto_b

    .line 608
    :cond_17
    if-eqz v2, :cond_9

    .line 609
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    sget-object v3, Lcom/android/mail/browse/ConversationItemView;->ang:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/android/mail/browse/R;->apF:Landroid/graphics/Bitmap;

    goto :goto_a
.end method

.method private static declared-synchronized ak(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 401
    const-class v1, Lcom/android/mail/browse/ConversationItemView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anD:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/android/mail/browse/L;

    invoke-direct {v0}, Lcom/android/mail/browse/L;-><init>()V

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->anD:Landroid/content/BroadcastReceiver;

    .line 409
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anD:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    :cond_0
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amZ:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 415
    const v2, 0x7f0200f9

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->amZ:Landroid/graphics/Bitmap;

    .line 416
    const v2, 0x7f0200f8

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->ana:Landroid/graphics/Bitmap;

    .line 417
    const v2, 0x7f02007c

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->anb:Landroid/graphics/Bitmap;

    .line 418
    const v2, 0x7f0200bb

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->anc:Landroid/graphics/Bitmap;

    .line 419
    const v2, 0x7f0200be

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->and:Landroid/graphics/Bitmap;

    .line 420
    const v2, 0x7f0200bc

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->ane:Landroid/graphics/Bitmap;

    .line 422
    const v2, 0x7f0200bf

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->anf:Landroid/graphics/Bitmap;

    .line 424
    const v2, 0x7f0200bd

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->ang:Landroid/graphics/Bitmap;

    .line 426
    const v2, 0x7f020081

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->anh:Landroid/graphics/Bitmap;

    .line 428
    const v2, 0x7f02007e

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->ani:Landroid/graphics/Bitmap;

    .line 430
    const v2, 0x7f020080

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->anj:Landroid/graphics/Bitmap;

    .line 432
    const v2, 0x7f02007f

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->ank:Landroid/graphics/Bitmap;

    .line 434
    const v2, 0x7f02011d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->anl:Landroid/graphics/drawable/Drawable;

    .line 438
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f0a007c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v2}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->aom:Landroid/text/style/CharacterStyle;

    .line 440
    const v2, 0x7f0a007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->ano:I

    .line 441
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f08019f

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->aoh:Landroid/text/style/TextAppearanceSpan;

    .line 443
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801a0

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->aoi:Landroid/text/style/TextAppearanceSpan;

    .line 446
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801b7

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->aoj:Landroid/text/style/TextAppearanceSpan;

    .line 447
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    const v3, 0x7f0a00c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->aok:Landroid/text/style/BackgroundColorSpan;

    .line 449
    const v2, 0x7f0a0081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->anp:I

    .line 450
    const v2, 0x7f0a0080

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->anq:I

    .line 451
    const v2, 0x7f0c007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->anr:I

    .line 452
    const v2, 0x7f0c007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->ans:I

    .line 453
    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->ant:I

    .line 454
    const v2, 0x7f0b0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->anu:I

    .line 456
    const v2, 0x7f09015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->anm:Ljava/lang/String;

    .line 457
    const v2, 0x7f090160

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/ConversationItemView;->ann:Ljava/lang/String;

    .line 458
    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->aol:I

    .line 459
    const v2, 0x7f0b003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->aog:I

    .line 460
    const v2, 0x7f0b0038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->anv:I

    .line 461
    const v2, 0x7f0c0101

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->anw:I

    .line 462
    const v2, 0x7f0c0102

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/mail/browse/ConversationItemView;->anx:I

    .line 464
    sget-object v2, Lcom/android/mail/browse/ConversationItemView;->anB:Landroid/graphics/Paint;

    const v3, 0x7f0a007b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    const v2, 0x7f0c011b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mail/browse/ConversationItemView;->anC:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_1
    monitor-exit v1

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic al(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/mail/browse/ConversationItemView;->ak(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic ap()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/android/mail/browse/ConversationItemView;->aog:I

    return v0
.end method

.method private au(Z)Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1739
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v1

    .line 1741
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getMeasuredWidth()I

    move-result v1

    move v2, v1

    .line 1742
    :goto_0
    if-eqz p1, :cond_1

    int-to-float v1, v2

    .line 1743
    :goto_1
    if-eqz p1, :cond_2

    .line 1744
    :goto_2
    const-string v2, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v3

    const/4 v1, 0x1

    aput v0, v4, v1

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1745
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1746
    sget v1, Lcom/android/mail/browse/ConversationItemView;->anu:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1747
    return-object v0

    :cond_0
    move v2, v3

    .line 1741
    goto :goto_0

    :cond_1
    move v1, v0

    .line 1742
    goto :goto_1

    .line 1743
    :cond_2
    int-to-float v0, v2

    goto :goto_2
.end method

.method private av(Z)Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1755
    if-eqz p1, :cond_0

    move v2, v1

    .line 1756
    :goto_0
    if-eqz p1, :cond_1

    .line 1757
    :goto_1
    const-string v1, "animatedHeightFraction"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1758
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1759
    sget v1, Lcom/android/mail/browse/ConversationItemView;->ant:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1760
    return-object v0

    :cond_0
    move v2, v0

    .line 1755
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1756
    goto :goto_1
.end method

.method private static g(Landroid/view/View;II)V
    .locals 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 854
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 855
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 856
    return-void
.end method

.method private k(Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/text/SpannableString;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1043
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1050
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anV:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uZ()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1051
    invoke-static {}, Lcom/android/mail/browse/aR;->rV()Landroid/text/SpannableString;

    move-result-object v4

    .line 1052
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-virtual {v4, v3, v0, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 1056
    array-length v6, v0

    if-lez v6, :cond_0

    .line 1057
    aget-object v0, v0, v3

    sget-object v6, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1059
    :cond_0
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    .line 1060
    invoke-virtual {v9, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v1, v2

    move v4, v0

    .line 1064
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v10, v0, Lcom/android/mail/browse/R;->apW:Landroid/text/SpannableStringBuilder;

    .line 1065
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1066
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-virtual {v10, v3, v0, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 1070
    array-length v6, v0

    if-lez v6, :cond_1

    .line 1071
    aget-object v0, v0, v3

    sget-object v6, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1074
    :cond_1
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1075
    add-float/2addr v4, v0

    .line 1079
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v6, v1

    move v7, v3

    move v8, v4

    move-object v4, v5

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 1081
    if-eqz v0, :cond_3

    .line 1082
    if-nez v7, :cond_b

    .line 1086
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v12, Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, v3, v1, v12}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 1090
    array-length v12, v1

    if-lez v12, :cond_4

    .line 1091
    aget-object v12, v1, v3

    sget-object v13, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v12, v13}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1095
    :cond_4
    sget-object v12, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1096
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/mail/browse/ConversationItemView;->ann:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/mail/browse/ConversationItemView;->ann:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mail/browse/ConversationItemView;->a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    .line 1106
    :goto_2
    array-length v0, v1

    if-lez v0, :cond_5

    .line 1107
    aget-object v0, v1, v3

    sget-object v12, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v0, v12}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1110
    :cond_5
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 1111
    add-float v12, v0, v8

    iget v13, p0, Lcom/android/mail/browse/ConversationItemView;->anM:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 1115
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anM:I

    int-to-float v0, v0

    sub-float/2addr v0, v8

    .line 1116
    sget-object v7, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v7, v0, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mail/browse/ConversationItemView;->a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 1118
    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    move v7, v1

    move v1, v2

    .line 1122
    :goto_3
    add-float/2addr v7, v8

    .line 1125
    if-eqz v0, :cond_a

    .line 1130
    :goto_4
    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v8, v7

    move v7, v1

    .line 1131
    goto/16 :goto_1

    .line 1097
    :cond_6
    if-nez v6, :cond_8

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_8

    if-eqz v4, :cond_7

    sget-object v12, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1100
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/mail/browse/ConversationItemView;->anm:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mail/browse/ConversationItemView;->a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v0

    move v6, v3

    .line 1102
    goto :goto_2

    :cond_9
    move v1, v7

    move v7, v0

    move-object v0, v5

    .line 1120
    goto :goto_3

    :cond_a
    move-object v0, v4

    .line 1128
    goto :goto_4

    .line 1132
    :cond_b
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iput v1, v0, Lcom/android/mail/browse/R;->apX:I

    .line 1133
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1134
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1136
    :cond_c
    return-object v9

    :cond_d
    move v4, v1

    move v1, v3

    goto/16 :goto_0
.end method

.method private l(FF)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1472
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apG:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return v0

    .line 1477
    :cond_1
    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v2

    .line 1479
    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    iget v3, p0, Lcom/android/mail/browse/ConversationItemView;->anJ:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/mail/browse/ConversationItemView;->anr:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 1483
    :cond_2
    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationItemView;->anW:Z

    if-eqz v2, :cond_4

    .line 1488
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aoE:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1479
    :cond_3
    iget v2, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    sget v3, Lcom/android/mail/browse/ConversationItemView;->anr:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1493
    goto :goto_0
.end method

.method private m(FF)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1497
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apG:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1500
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aoE:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationItemView;->anW:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aou:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v3, v3, Lcom/android/mail/browse/O;->aow:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/mail/browse/ConversationItemView;->anr:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aou:I

    sget v3, Lcom/android/mail/browse/ConversationItemView;->anr:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method private pA()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->ana:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amZ:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private pD()V
    .locals 5

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/mail/providers/Conversation;->azc:Z

    .line 1438
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pA()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1439
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aou:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aov:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v3, v3, Lcom/android/mail/browse/O;->aou:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v4, v4, Lcom/android/mail/browse/O;->aov:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/mail/browse/ConversationItemView;->postInvalidate(IIII)V

    .line 1442
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/u;

    .line 1443
    if-eqz v0, :cond_0

    .line 1445
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    const-string v2, "starred"

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v3, v3, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->azc:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/providers/Conversation;Ljava/lang/String;Z)I

    .line 1448
    :cond_0
    return-void

    .line 1437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pF()Lcom/android/mail/ui/SwipeableListView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1656
    .line 1657
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 1658
    :goto_0
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/android/mail/browse/aZ;

    if-eqz v2, :cond_3

    .line 1659
    check-cast v0, Lcom/android/mail/browse/aZ;

    invoke-virtual {v0}, Lcom/android/mail/browse/aZ;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/SwipeableListView;

    .line 1661
    :goto_1
    if-nez v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    .line 1664
    :cond_1
    return-object v0

    .line 1657
    :cond_2
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic pN()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anz:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic pO()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->amZ:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static pv()V
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amV:Lcom/android/mail/f/b;

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amV:Lcom/android/mail/f/b;

    invoke-static {}, Lcom/android/mail/f/b;->td()V

    .line 658
    :cond_0
    return-void
.end method

.method private static pw()V
    .locals 1

    .prologue
    .line 661
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amV:Lcom/android/mail/f/b;

    if-eqz v0, :cond_0

    .line 662
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amV:Lcom/android/mail/f/b;

    invoke-static {}, Lcom/android/mail/f/b;->te()V

    .line 664
    :cond_0
    return-void
.end method

.method private px()V
    .locals 4

    .prologue
    .line 733
    const/4 v0, 0x0

    .line 734
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    if-eqz v1, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    invoke-virtual {v0}, Lcom/android/mail/browse/N;->pT()Ljava/lang/String;

    move-result-object v0

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->yg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    invoke-virtual {v1}, Lcom/android/mail/browse/R;->qi()V

    .line 740
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anV:Lcom/android/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/android/mail/providers/Folder;->uZ()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mail/browse/R;->a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 743
    :cond_1
    return-void
.end method

.method private py()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 826
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->aof:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apZ:Lcom/android/mail/browse/S;

    invoke-virtual {v0}, Lcom/android/mail/browse/S;->qk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->apo:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->apn:I

    if-gtz v0, :cond_3

    .line 831
    :cond_2
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->mW:Ljava/lang/String;

    const-string v1, "Contact image width(%d) or height(%d) is 0"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v3, v3, Lcom/android/mail/browse/O;->apo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v3, v3, Lcom/android/mail/browse/O;->apn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apo:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apn:I

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/android/mail/b/c;->setBounds(IIII)V

    .line 840
    const-string v0, "load sender image"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v0}, Lcom/android/mail/b/c;->ox()Lcom/android/mail/b/g;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apo:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apn:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/b/g;->L(II)V

    .line 844
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->apZ:Lcom/android/mail/browse/S;

    invoke-virtual {v1}, Lcom/android/mail/browse/S;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apZ:Lcom/android/mail/browse/S;

    invoke-virtual {v2}, Lcom/android/mail/browse/S;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/b/g;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto :goto_0
.end method

.method private pz()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1153
    .line 1154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 1156
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1157
    if-lez v1, :cond_0

    .line 1158
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1159
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1163
    :cond_0
    return-object p1
.end method

.method private setChecked(Z)V
    .locals 0

    .prologue
    .line 1373
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    .line 1374
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->refreshDrawableState()V

    .line 1375
    return-void
.end method

.method private w(F)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1453
    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v3

    .line 1454
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->app:I

    sget v1, Lcom/android/mail/browse/ConversationItemView;->ans:I

    sub-int/2addr v0, v1

    .line 1460
    :goto_0
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1461
    :cond_0
    const/4 v1, 0x0

    .line 1467
    :goto_1
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget v4, v4, Lcom/android/mail/browse/R;->apR:I

    if-ne v4, v2, :cond_5

    if-eqz v3, :cond_4

    int-to-float v0, v0

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    :cond_1
    move v0, v2

    :goto_2
    return v0

    .line 1454
    :cond_2
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->app:I

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apo:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/mail/browse/ConversationItemView;->ans:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1463
    :cond_3
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    goto :goto_1

    .line 1467
    :cond_4
    int-to-float v0, v0

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/R;Lcom/android/mail/ui/as;Lcom/android/mail/browse/M;Lcom/android/mail/providers/Folder;ILcom/android/mail/ui/ae;Landroid/graphics/Bitmap;)V
    .locals 15

    .prologue
    .line 488
    const-string v0, "CIVC.bindAd"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 489
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v11, 0x7f020036

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v14}, Lcom/android/mail/browse/ConversationItemView;->a(Lcom/android/mail/browse/R;Lcom/android/mail/ui/as;Lcom/android/mail/browse/M;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;ILandroid/graphics/Bitmap;ZZ)V

    .line 494
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 495
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/as;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;)V
    .locals 16

    .prologue
    .line 474
    const-string v1, "CIVC.bind"

    invoke-static {v1}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/ConversationItemView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/mail/browse/R;->b(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/R;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v15}, Lcom/android/mail/browse/ConversationItemView;->a(Lcom/android/mail/browse/R;Lcom/android/mail/ui/as;Lcom/android/mail/browse/M;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;ILandroid/graphics/Bitmap;ZZ)V

    .line 480
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 481
    return-void
.end method

.method public final a(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 0

    .prologue
    .line 1428
    return-void
.end method

.method public final b(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 0

    .prologue
    .line 1431
    return-void
.end method

.method public final bh(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1384
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    if-eqz v0, :cond_6

    .line 1385
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    if-nez v0, :cond_3

    move v0, v6

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->setChecked(Z)V

    .line 1386
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v8, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    .line 1388
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v9

    .line 1391
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual {v9, p0}, Lcom/android/mail/ui/SwipeableListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    :goto_1
    iput v0, v8, Lcom/android/mail/providers/Conversation;->position:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :goto_2
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    if-eqz p1, :cond_5

    move-object v2, p1

    .line 1399
    :goto_3
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "enter_cab_mode"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, v8}, Lcom/android/mail/ui/ConversationCheckedSet;->n(Lcom/android/mail/providers/Conversation;)V

    .line 1403
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {v9, v6}, Lcom/android/mail/ui/SwipeableListView;->bo(Z)V

    .line 1407
    :cond_1
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    if-nez v0, :cond_2

    move v7, v6

    .line 1408
    :cond_2
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v0, v7}, Lcom/android/mail/b/c;->aq(Z)V

    .line 1414
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->requestLayout()V

    .line 1419
    :goto_4
    return v6

    :cond_3
    move v0, v7

    .line 1385
    goto :goto_0

    .line 1391
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 1398
    :cond_5
    const-string v2, "checkbox"

    goto :goto_3

    :cond_6
    move v6, v7

    .line 1419
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final dismiss()V
    .locals 1

    .prologue
    .line 1521
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    .line 1522
    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {v0, p0}, Lcom/android/mail/ui/SwipeableListView;->a(Lcom/android/mail/browse/ConversationItemView;)V

    .line 1525
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 634
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 637
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->app:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apq:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 638
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/mail/browse/ConversationItemView;->invalidate(IIII)V

    .line 639
    const/4 v0, 0x1

    .line 642
    :cond_0
    if-nez v0, :cond_1

    .line 643
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_1
    return-void
.end method

.method public final oL()I
    .locals 1

    .prologue
    .line 943
    sget v0, Lcom/android/mail/browse/ConversationItemView;->anw:I

    return v0
.end method

.method public final oM()F
    .locals 1

    .prologue
    .line 948
    sget v0, Lcom/android/mail/browse/ConversationItemView;->anx:I

    int-to-float v0, v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 1365
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1366
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    if-eqz v1, :cond_0

    .line 1367
    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->amY:[I

    invoke-static {v0, v1}, Lcom/android/mail/browse/ConversationItemView;->mergeDrawableStates([I[I)[I

    .line 1369
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 624
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 626
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/ConversationCheckedSet;->b(Lcom/android/mail/ui/aK;)V

    .line 629
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1168
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    if-nez v1, :cond_0

    .line 1169
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->mW:Ljava/lang/String;

    const-string v1, "null coordinates in ConversationItemView#onDraw"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1288
    :goto_0
    return-void

    .line 1173
    :cond_0
    const-string v1, "CIVC.draw"

    invoke-static {v1}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 1176
    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->aof:I

    if-ne v1, v0, :cond_2

    .line 1177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1178
    const-string v1, "draw senders image"

    invoke-static {v1}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 1179
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v1}, Lcom/android/mail/b/c;->isFlipping()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationItemView;->anT:Z

    if-nez v1, :cond_d

    :goto_1
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v1, v0}, Lcom/android/mail/b/c;->ap(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->app:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apq:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aop:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    invoke-virtual {v0, p1}, Lcom/android/mail/b/c;->draw(Landroid/graphics/Canvas;)V

    .line 1180
    :goto_2
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 1181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v6, v0, Lcom/android/mail/browse/R;->apC:Z

    .line 1187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1188
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apN:Landroid/text/StaticLayout;

    if-eqz v0, :cond_f

    .line 1189
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoC:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1190
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-static {v6}, Lcom/android/mail/browse/aR;->aO(Z)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1191
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    sget v1, Lcom/android/mail/browse/ConversationItemView;->ano:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1192
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anL:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoy:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apN:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1194
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apN:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1198
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1202
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1204
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoD:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoE:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 1205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1208
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoK:I

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoI:I

    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_4
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoJ:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 1209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1212
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v0}, Lcom/android/mail/browse/P;->pZ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1213
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/mail/browse/N;->a(Landroid/graphics/Canvas;Lcom/android/mail/browse/O;Z)V

    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v0}, Lcom/android/mail/browse/P;->qb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1218
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anz:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget v1, v1, Lcom/android/mail/providers/Conversation;->color:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1219
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anz:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1220
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->apf:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->apg:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->apf:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v3, v3, Lcom/android/mail/browse/O;->aph:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->apg:I

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v4, v4, Lcom/android/mail/browse/O;->api:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lcom/android/mail/browse/ConversationItemView;->anz:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1226
    :cond_4
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v0}, Lcom/android/mail/browse/P;->qa()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1227
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v0, v0, Lcom/android/mail/browse/R;->apU:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v0, v0, Lcom/android/mail/browse/R;->apT:Z

    if-eqz v0, :cond_11

    .line 1228
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anj:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apj:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apk:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1242
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v0}, Lcom/android/mail/browse/P;->qc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1243
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apF:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apl:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apm:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1248
    :cond_6
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 1249
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->anH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aoW:I

    int-to-float v2, v2

    sget-object v3, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1253
    :cond_7
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apb:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1254
    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    if-eqz v6, :cond_14

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amW:Landroid/graphics/Typeface;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1255
    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    if-eqz v6, :cond_15

    sget v0, Lcom/android/mail/browse/ConversationItemView;->anq:I

    :goto_7
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1256
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v0, Lcom/android/mail/browse/R;->apD:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apc:I

    sget-object v6, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v0

    int-to-float v5, v2

    move-object v0, p1

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1259
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apJ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 1260
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apJ:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->anK:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apd:I

    int-to-float v2, v2

    sget-object v3, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1264
    :cond_8
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anW:Z

    if-eqz v0, :cond_9

    .line 1265
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pA()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aou:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aov:I

    int-to-float v2, v2

    sget-object v3, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1269
    :cond_9
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anY:Z

    if-eqz v0, :cond_a

    .line 1270
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getHeight()I

    move-result v0

    .line 1271
    sget v1, Lcom/android/mail/browse/ConversationItemView;->anC:I

    sub-int v2, v0, v1

    .line 1272
    const/4 v1, 0x0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    sget-object v5, Lcom/android/mail/browse/ConversationItemView;->anB:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1276
    :cond_a
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->t(Lcom/android/mail/providers/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1278
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1279
    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v2

    .line 1281
    sget-object v3, Lcom/android/mail/browse/ConversationItemView;->anl:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_8
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getWidth()I

    move-result v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v7, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1284
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1287
    :cond_c
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_0

    :cond_d
    move v0, v7

    .line 1179
    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aop:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aoq:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1196
    :cond_f
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anL:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoy:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_10
    move v0, v7

    .line 1208
    goto/16 :goto_4

    .line 1230
    :cond_11
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v0, v0, Lcom/android/mail/browse/R;->apU:Z

    if-eqz v0, :cond_12

    .line 1231
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->anh:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apj:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apk:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1233
    :cond_12
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v0, v0, Lcom/android/mail/browse/R;->apT:Z

    if-eqz v0, :cond_13

    .line 1234
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->ani:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apj:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apk:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1236
    :cond_13
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v0, v0, Lcom/android/mail/browse/R;->apV:Z

    if-eqz v0, :cond_5

    .line 1237
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->ank:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apj:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apk:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1254
    :cond_14
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amX:Landroid/graphics/Typeface;

    goto/16 :goto_6

    .line 1255
    :cond_15
    sget v0, Lcom/android/mail/browse/ConversationItemView;->anp:I

    goto/16 :goto_7

    :cond_16
    move v1, v7

    .line 1281
    goto/16 :goto_8
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 698
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pv()V

    .line 699
    const-string v0, "CIVC.layout"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 701
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 703
    const-string v0, "text and bitmaps"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pv()V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anU:Lcom/android/mail/ui/ConversationCheckedSet;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationCheckedSet;->m(Lcom/android/mail/providers/Conversation;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->aof:I

    iput v1, v0, Lcom/android/mail/browse/R;->apR:I

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoo:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoo:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uI()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/android/mail/browse/R;->apO:Z

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v0, v0, Lcom/android/mail/browse/R;->apK:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apL:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/android/mail/browse/R;->apM:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->py()V

    :goto_2
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    invoke-virtual {v0}, Lcom/android/mail/browse/R;->qh()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pw()V

    .line 705
    :goto_3
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 707
    const-string v0, "coordinates"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 708
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pv()V

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apb:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v2

    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apD:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apD:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anJ:I

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    if-eqz v2, :cond_10

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoU:I

    :goto_5
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anH:I

    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoX:I

    :goto_6
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    :goto_7
    if-eqz v2, :cond_14

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->anJ:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apa:I

    add-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anK:I

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apJ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    if-eqz v2, :cond_15

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anK:I

    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->anb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->ape:I

    add-int/2addr v0, v1

    :goto_9
    move v1, v0

    :goto_a
    if-eqz v2, :cond_18

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoz:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v3, v3, Lcom/android/mail/browse/O;->aox:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    :goto_b
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anM:I

    if-eqz v2, :cond_19

    move v0, v1

    :goto_c
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anL:I

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoC:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anM:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anM:I

    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v0, v0, Lcom/android/mail/browse/R;->apK:Z

    if-eqz v0, :cond_1a

    iget-object v8, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->apM:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/android/mail/browse/ConversationItemView;->any:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/mail/browse/ConversationItemView;->anM:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v8, Lcom/android/mail/browse/R;->apN:Landroid/text/StaticLayout;

    :cond_2
    :goto_d
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pw()V

    .line 709
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 712
    const-string v0, "subject"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-boolean v2, v0, Lcom/android/mail/browse/R;->apC:Z

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apH:Ljava/lang/String;

    if-nez v0, :cond_1c

    const-string v0, ""

    :goto_e
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v3, v3, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v3, v3, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/mail/browse/ConversationItemView;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v3}, Lcom/android/mail/ui/ae;->qJ()Landroid/support/v4/e/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/mail/providers/Conversation;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->aoj:Landroid/text/style/TextAppearanceSpan;

    invoke-static {v0}, Landroid/text/style/TextAppearanceSpan;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-interface {v4, v0, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->aok:Landroid/text/style/BackgroundColorSpan;

    invoke-static {v0}, Landroid/text/style/TextAppearanceSpan;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-interface {v4, v0, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Lcom/android/mail/browse/i;

    invoke-direct {v0, v4, p0}, Lcom/android/mail/browse/i;-><init>(Landroid/text/Spanned;Lcom/android/mail/browse/j;)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-interface {v4, v0, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_1e

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->aoh:Landroid/text/style/TextAppearanceSpan;

    :goto_10
    invoke-static {v0}, Landroid/text/style/TextAppearanceSpan;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pz()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->aom:Landroid/text/style/CharacterStyle;

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoF:I

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->aoG:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v5, v5, Lcom/android/mail/browse/O;->aoH:F

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-static {v2, v0, v1}, Lcom/android/mail/browse/ConversationItemView;->g(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aod:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apS:Lcom/android/mail/browse/N;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    invoke-static {v0, v2}, Lcom/android/mail/browse/N;->a(Lcom/android/mail/browse/N;Lcom/android/mail/browse/O;)I

    move-result v0

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aoK:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aoL:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v5, v5, Lcom/android/mail/browse/O;->aoM:F

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-static {v3, v0, v2}, Lcom/android/mail/browse/ConversationItemView;->g(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoe:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    invoke-virtual {v0}, Lcom/android/mail/browse/R;->qh()Z

    move-result v0

    if-nez v0, :cond_6

    .line 718
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->px()V

    .line 720
    :cond_6
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    invoke-virtual {v0}, Lcom/android/mail/browse/R;->qg()V

    .line 721
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 723
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pw()V

    .line 724
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amV:Lcom/android/mail/f/b;

    if-eqz v0, :cond_7

    sget v0, Lcom/android/mail/browse/ConversationItemView;->amU:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mail/browse/ConversationItemView;->amU:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_7

    .line 725
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->amV:Lcom/android/mail/f/b;

    invoke-static {}, Lcom/android/mail/f/b;->tf()V

    .line 726
    new-instance v0, Lcom/android/mail/f/b;

    invoke-direct {v0}, Lcom/android/mail/f/b;-><init>()V

    sput-object v0, Lcom/android/mail/browse/ConversationItemView;->amV:Lcom/android/mail/f/b;

    .line 727
    const/4 v0, 0x0

    sput v0, Lcom/android/mail/browse/ConversationItemView;->amU:I

    .line 729
    :cond_7
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 730
    return-void

    .line 704
    :cond_8
    const v0, 0x7f02005e

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-static {v0, v2}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Lcom/android/mail/providers/Conversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mail/browse/R;->apW:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/android/mail/providers/Conversation;->ayX:Z

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_b

    const v1, 0x7f0b0040

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    :goto_11
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->apZ:Lcom/android/mail/browse/S;

    invoke-virtual {v1}, Lcom/android/mail/browse/S;->clear()V

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->aqa:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->aqb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->apW:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v4, v4, Lcom/android/mail/browse/R;->aqb:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v5, v5, Lcom/android/mail/browse/R;->aqa:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v6, v6, Lcom/android/mail/browse/R;->apZ:Lcom/android/mail/browse/S;

    iget-object v7, p0, Lcom/android/mail/browse/ConversationItemView;->Nc:Lcom/android/mail/providers/Account;

    iget-object v8, p0, Lcom/android/mail/browse/ConversationItemView;->anV:Lcom/android/mail/providers/Folder;

    invoke-virtual {v8}, Lcom/android/mail/providers/Folder;->uZ()Z

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Lcom/android/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/mail/browse/S;Lcom/android/mail/providers/Account;Z)V

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->py()V

    goto/16 :goto_2

    :cond_b
    const v1, 0x7f0b0041

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto :goto_11

    :cond_c
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->mW:Ljava/lang/String;

    const-string v1, "Null conversationInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pv()V

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pw()V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mail/browse/R;->apJ:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->ayX:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->anb:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/mail/browse/R;->apJ:Landroid/graphics/Bitmap;

    :cond_e
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pv()V

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pw()V

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pw()V

    goto/16 :goto_3

    .line 708
    :cond_f
    const-string v0, ""

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoV:I

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->apG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoY:I

    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->anJ:I

    sub-int/2addr v0, v1

    goto/16 :goto_6

    :cond_12
    if-eqz v2, :cond_13

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoU:I

    :goto_12
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    goto/16 :goto_7

    :cond_13
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aoV:I

    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->anJ:I

    sub-int/2addr v0, v1

    goto :goto_12

    :cond_14
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->anb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apa:I

    sub-int/2addr v0, v1

    goto/16 :goto_8

    :cond_15
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anK:I

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->ape:I

    sub-int/2addr v0, v1

    goto/16 :goto_9

    :cond_16
    if-eqz v2, :cond_17

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anK:I

    :goto_13
    move v1, v0

    goto/16 :goto_a

    :cond_17
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->anI:I

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apa:I

    sub-int/2addr v0, v1

    goto :goto_13

    :cond_18
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aox:I

    sub-int v0, v1, v0

    goto/16 :goto_b

    :cond_19
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->aox:I

    goto/16 :goto_c

    :cond_1a
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->aqb:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->k(Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pz()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->aom:Landroid/text/style/CharacterStyle;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget v3, v3, Lcom/android/mail/browse/R;->apX:I

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_14
    iget v1, p0, Lcom/android/mail/browse/ConversationItemView;->anM:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->aoA:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v4, v4, Lcom/android/mail/browse/O;->aoB:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v5, v5, Lcom/android/mail/browse/O;->aoC:F

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    invoke-static {v3, v1, v2}, Lcom/android/mail/browse/ConversationItemView;->g(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aoc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_1b
    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->aom:Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    goto :goto_14

    .line 713
    :cond_1c
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->apH:Ljava/lang/String;

    goto/16 :goto_e

    :cond_1d
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_1e
    sget-object v0, Lcom/android/mail/browse/ConversationItemView;->aoi:Landroid/text/style/TextAppearanceSpan;

    goto/16 :goto_10
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 668
    const-string v0, "CIVC.measure"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 669
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 671
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xX()Lcom/android/mail/ui/dD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v1

    .line 672
    iget v2, p0, Lcom/android/mail/browse/ConversationItemView;->anF:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/android/mail/browse/ConversationItemView;->anG:I

    if-eq v2, v1, :cond_1

    .line 673
    :cond_0
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView;->anF:I

    .line 674
    iput v1, p0, Lcom/android/mail/browse/ConversationItemView;->anG:I

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget v2, p0, Lcom/android/mail/browse/ConversationItemView;->anF:I

    iput v2, v1, Lcom/android/mail/browse/R;->apP:I

    .line 678
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/P;->bX(I)Lcom/android/mail/browse/P;

    move-result-object v0

    invoke-static {p0}, Landroid/support/v4/view/ad;->m(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/P;->bY(I)Lcom/android/mail/browse/P;

    .line 680
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    const v2, 0x7f0c007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Lcom/android/mail/browse/R;->apQ:I

    .line 683
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v2}, Lcom/android/mail/ui/ae;->xB()Lcom/android/mail/browse/Q;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mail/browse/O;->a(Landroid/content/Context;Lcom/android/mail/browse/P;Lcom/android/mail/browse/Q;)Lcom/android/mail/browse/O;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    .line 686
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aop:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoq:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->apo:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v2, v2, Lcom/android/mail/browse/O;->apn:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 690
    :cond_2
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoa:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mail/browse/ConversationItemView;->aoa:F

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v1, v1, Lcom/android/mail/browse/O;->height:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anQ:Lcom/android/mail/browse/P;

    invoke-virtual {v1}, Lcom/android/mail/browse/P;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/mail/browse/ConversationItemView;->setMeasuredDimension(II)V

    .line 693
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 694
    return-void

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anP:Lcom/android/mail/browse/O;

    iget v0, v0, Lcom/android/mail/browse/O;->height:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1580
    const-string v2, "on touch event"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 1582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1583
    iget-boolean v4, p0, Lcom/android/mail/browse/ConversationItemView;->anX:Z

    if-nez v4, :cond_7

    .line 1584
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 1585
    const-string v2, "on touch event no swipe"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 1633
    :goto_1
    return v0

    .line 1585
    :pswitch_1
    int-to-float v4, v2

    invoke-direct {p0, v4}, Lcom/android/mail/browse/ConversationItemView;->w(F)Z

    move-result v4

    if-nez v4, :cond_3

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-direct {p0, v4, v5}, Lcom/android/mail/browse/ConversationItemView;->l(FF)Z

    move-result v4

    if-nez v4, :cond_3

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/mail/browse/ConversationItemView;->m(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-boolean v4, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    if-eqz v4, :cond_0

    int-to-float v1, v2

    invoke-direct {p0, v1}, Lcom/android/mail/browse/ConversationItemView;->w(F)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/mail/browse/ConversationItemView;->bh(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    int-to-float v1, v2

    int-to-float v4, v3

    invoke-direct {p0, v1, v4}, Lcom/android/mail/browse/ConversationItemView;->l(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    invoke-interface {v1}, Lcom/android/mail/browse/M;->pP()V

    goto :goto_0

    :cond_5
    int-to-float v1, v2

    int-to-float v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/mail/browse/ConversationItemView;->m(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pD()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    invoke-interface {v1}, Lcom/android/mail/browse/M;->pQ()V

    goto :goto_0

    .line 1587
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1627
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_e

    .line 1629
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto :goto_1

    .line 1589
    :pswitch_4
    int-to-float v1, v2

    invoke-direct {p0, v1}, Lcom/android/mail/browse/ConversationItemView;->w(F)Z

    move-result v1

    if-nez v1, :cond_9

    int-to-float v1, v2

    int-to-float v4, v3

    invoke-direct {p0, v1, v4}, Lcom/android/mail/browse/ConversationItemView;->l(FF)Z

    move-result v1

    if-nez v1, :cond_9

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/mail/browse/ConversationItemView;->m(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1590
    :cond_9
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    .line 1591
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_1

    .line 1596
    :pswitch_5
    iget-boolean v4, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    if-eqz v4, :cond_8

    .line 1597
    int-to-float v4, v2

    invoke-direct {p0, v4}, Lcom/android/mail/browse/ConversationItemView;->w(F)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1599
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 1600
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    .line 1601
    invoke-virtual {p0, v5}, Lcom/android/mail/browse/ConversationItemView;->bh(Ljava/lang/String;)Z

    .line 1602
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_1

    .line 1604
    :cond_a
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-direct {p0, v4, v5}, Lcom/android/mail/browse/ConversationItemView;->l(FF)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1606
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    .line 1607
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    if-eqz v1, :cond_b

    .line 1608
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    invoke-interface {v1}, Lcom/android/mail/browse/M;->pP()V

    .line 1610
    :cond_b
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_1

    .line 1612
    :cond_c
    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/mail/browse/ConversationItemView;->m(FF)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1614
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationItemView;->anS:Z

    .line 1615
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    if-nez v1, :cond_d

    .line 1616
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pD()V

    .line 1620
    :goto_2
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_1

    .line 1618
    :cond_d
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->aor:Lcom/android/mail/browse/M;

    invoke-interface {v1}, Lcom/android/mail/browse/M;->pQ()V

    goto :goto_2

    .line 1632
    :cond_e
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    move v0, v1

    .line 1633
    goto/16 :goto_1

    .line 1585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1587
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final pB()Z
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->bh(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final pC()V
    .locals 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->aon:Lcom/android/mail/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/b/c;->aq(Z)V

    .line 1425
    return-void
.end method

.method public final pE()Z
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView;->anX:Z

    return v0
.end method

.method public final pG()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1707
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->au(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1708
    return-object v0
.end method

.method public final pH()Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 1716
    invoke-direct {p0, v5}, Lcom/android/mail/browse/ConversationItemView;->av(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1717
    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1718
    sget v2, Lcom/android/mail/browse/ConversationItemView;->ant:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1719
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1720
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1721
    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1722
    new-instance v0, Lcom/android/mail/utils/r;

    invoke-direct {v0, p0}, Lcom/android/mail/utils/r;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1723
    return-object v2

    .line 1717
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final pI()Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1731
    invoke-direct {p0, v4}, Lcom/android/mail/browse/ConversationItemView;->au(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1732
    invoke-direct {p0, v4}, Lcom/android/mail/browse/ConversationItemView;->av(Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1733
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1734
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1735
    return-object v2
.end method

.method public final pJ()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1751
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->av(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final pK()Lcom/android/mail/ui/di;
    .locals 1

    .prologue
    .line 1771
    invoke-static {p0}, Lcom/android/mail/ui/di;->aE(Landroid/view/View;)Lcom/android/mail/ui/di;

    move-result-object v0

    return-object v0
.end method

.method public final pL()F
    .locals 1

    .prologue
    .line 1776
    sget v0, Lcom/android/mail/browse/ConversationItemView;->aol:I

    int-to-float v0, v0

    return v0
.end method

.method public final pM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performClick()Z
    .locals 6

    .prologue
    .line 1638
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 1639
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v1

    .line 1640
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1641
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v2, v2, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v1, p0, v2}, Lcom/android/mail/ui/SwipeableListView;->a(Lcom/android/mail/browse/ConversationItemView;Lcom/android/mail/providers/Conversation;)I

    move-result v2

    .line 1642
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v3, v3, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v3, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v1, p0, v2, v4, v5}, Lcom/android/mail/ui/SwipeableListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1644
    :cond_0
    return v0
.end method

.method public final pg()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v0, v0, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1672
    const-string v0, "reset"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationItemView;->setAlpha(F)V

    .line 1674
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationItemView;->setTranslationX(F)V

    .line 1675
    iput v1, p0, Lcom/android/mail/browse/ConversationItemView;->aoa:F

    .line 1676
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 1677
    return-void
.end method

.method public setAnimatedHeightFraction(F)V
    .locals 0

    .prologue
    .line 1765
    iput p1, p0, Lcom/android/mail/browse/ConversationItemView;->aoa:F

    .line 1766
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->requestLayout()V

    .line 1767
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 3

    .prologue
    .line 747
    const-string v0, "set background resource"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anE:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 749
    if-nez v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 751
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget v2, v0, Lcom/android/mail/browse/R;->apI:I

    .line 752
    if-lez v2, :cond_2

    .line 753
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 755
    :goto_0
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anE:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 758
    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    :cond_1
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 761
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2

    .prologue
    .line 1296
    if-eqz p1, :cond_0

    .line 1297
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    .line 1298
    if-eqz v0, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView;->anR:Lcom/android/mail/browse/R;

    iget-object v1, v1, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->s(Lcom/android/mail/providers/Conversation;)V

    .line 1302
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1303
    return-void
.end method

.method public setTranslationX(F)V
    .locals 6

    .prologue
    .line 1682
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1687
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1688
    if-nez v0, :cond_0

    .line 1689
    sget-object v1, Lcom/android/mail/browse/ConversationItemView;->mW:Ljava/lang/String;

    const-string v2, "CIV.setTranslationX null ConversationItemView parent x=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1693
    :cond_0
    instance-of v1, v0, Lcom/android/mail/browse/aZ;

    if-eqz v1, :cond_1

    .line 1694
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 1695
    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1700
    :cond_1
    :goto_0
    return-void

    .line 1697
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
