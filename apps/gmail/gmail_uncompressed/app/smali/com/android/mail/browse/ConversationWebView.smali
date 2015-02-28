.class public Lcom/android/mail/browse/ConversationWebView;
.super Lcom/android/mail/browse/au;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/aM;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final arn:I

.field private aro:Landroid/graphics/Canvas;

.field private arp:Z

.field private arq:Z

.field private final arr:Ljava/lang/Runnable;

.field private final ars:I

.field private final art:F

.field private final aru:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/browse/aN;",
            ">;"
        }
    .end annotation
.end field

.field private arv:Z

.field private arw:Z

.field private fN:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationWebView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/ConversationWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/au;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Lcom/android/mail/browse/ai;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/ai;-><init>(Lcom/android/mail/browse/ConversationWebView;)V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->arr:Ljava/lang/Runnable;

    .line 143
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->aru:Ljava/util/Set;

    .line 162
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/ConversationWebView;->ars:I

    .line 164
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/ConversationWebView;->arn:I

    .line 165
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mail/browse/ConversationWebView;->art:F

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/ConversationWebView;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arp:Z

    return v0
.end method

.method static synthetic b(Lcom/android/mail/browse/ConversationWebView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationWebView;->qV()V

    return-void
.end method

.method private qV()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 107
    iput-object v1, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    .line 108
    iput-object v1, p0, Lcom/android/mail/browse/ConversationWebView;->aro:Landroid/graphics/Canvas;

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/aN;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->aru:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public final aE(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationWebView;->arp:Z

    .line 123
    return-void
.end method

.method public final aF(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationWebView;->arq:Z

    .line 138
    return-void
.end method

.method public final cf(I)I
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/browse/ConversationWebView;->art:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final cg(I)I
    .locals 2

    .prologue
    .line 250
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->qZ()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final ch(I)F
    .locals 2

    .prologue
    .line 258
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->qZ()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationWebView;->qV()V

    .line 97
    iget-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->arr:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationWebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    invoke-super {p0}, Lcom/android/mail/browse/au;->destroy()V

    .line 100
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/mail/browse/au;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arq:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    .line 71
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->aro:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getScrollX()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getScrollY()I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/android/mail/browse/ConversationWebView;->aro:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 85
    iget-object v2, p0, Lcom/android/mail/browse/ConversationWebView;->aro:Landroid/graphics/Canvas;

    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    iget-object v2, p0, Lcom/android/mail/browse/ConversationWebView;->aro:Landroid/graphics/Canvas;

    invoke-super {p0, v2}, Lcom/android/mail/browse/au;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object v2, p0, Lcom/android/mail/browse/ConversationWebView;->aro:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 89
    iget-object v2, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    :cond_1
    return-void

    .line 74
    :catch_0
    move-exception v0

    iput-object v5, p0, Lcom/android/mail/browse/ConversationWebView;->fN:Landroid/graphics/Bitmap;

    .line 75
    iput-object v5, p0, Lcom/android/mail/browse/ConversationWebView;->aro:Landroid/graphics/Canvas;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arp:Z

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/mail/browse/au;->onScrollChanged(IIII)V

    .line 182
    iget-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->aru:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/aN;

    .line 183
    invoke-interface {v0, p2}, Lcom/android/mail/browse/aN;->bP(I)V

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 191
    packed-switch v2, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationWebView;->arw:Z

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/mail/browse/au;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 208
    :cond_1
    return v0

    .line 193
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationWebView;->arv:Z

    goto :goto_0

    .line 196
    :pswitch_2
    sget-object v2, Lcom/android/mail/browse/ConversationWebView;->mW:Ljava/lang/String;

    const-string v3, "WebView disabling intercepts: POINTER_DOWN"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationWebView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 201
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arv:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arw:Z

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final qW()V
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arp:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/mail/browse/ConversationWebView;->arr:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/mail/browse/ConversationWebView;->arn:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/mail/browse/ConversationWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_0
    return-void
.end method

.method public final qX()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationWebView;->arv:Z

    return v0
.end method

.method public final qY()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/mail/browse/ConversationWebView;->ars:I

    return v0
.end method

.method public final qZ()F
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationWebView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/browse/ConversationWebView;->ars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 246
    :goto_0
    return v0

    .line 244
    :cond_0
    iget v0, p0, Lcom/android/mail/browse/ConversationWebView;->art:F

    goto :goto_0
.end method
