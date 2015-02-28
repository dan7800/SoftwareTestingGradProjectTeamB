.class public Lcom/android/mail/browse/MessageScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/mail/browse/aM;


# instance fields
.field private aeL:Landroid/view/GestureDetector;

.field private ajq:Z

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

.field private ats:Z

.field private att:Z

.field private atu:Lcom/android/mail/browse/aK;

.field private atv:Landroid/view/ScaleGestureDetector;

.field private atw:Z

.field private atx:Z

.field private aty:I

.field private hQ:F

.field private hR:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->aru:Ljava/util/Set;

    .line 114
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 115
    mul-int/2addr v0, v0

    iput v0, p0, Lcom/android/mail/browse/MessageScrollView;->aty:I

    .line 116
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atv:Landroid/view/ScaleGestureDetector;

    .line 117
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->aeL:Landroid/view/GestureDetector;

    .line 118
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->aeL:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/aK;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mail/browse/MessageScrollView;->atu:Lcom/android/mail/browse/aK;

    .line 123
    return-void
.end method

.method public final a(Lcom/android/mail/browse/aN;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->aru:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/ScrollView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 143
    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atu:Lcom/android/mail/browse/aK;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atu:Lcom/android/mail/browse/aK;

    invoke-interface {v0}, Lcom/android/mail/browse/aK;->rR()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atv:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->aeL:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 158
    const-string v0, "MsgScroller"

    const-string v4, "OUT ScrollView.dispatchTouch, handled=%s ev=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageScrollView;->ats:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mail/browse/MessageScrollView;->atw:Z

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atu:Lcom/android/mail/browse/aK;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atu:Lcom/android/mail/browse/aK;

    invoke-interface {v0}, Lcom/android/mail/browse/aK;->rQ()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 162
    :goto_1
    if-eqz v0, :cond_3

    .line 165
    const-string v0, "MsgScroller"

    const-string v4, "IN extra ScrollView.onTouch, ev=%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v4, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/MessageScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 173
    :cond_1
    :goto_2
    return v3

    .line 145
    :pswitch_0
    const-string v0, "MsgScroller"

    const-string v3, "IN ScrollView.dispatchTouch, clearing flags"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->ats:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->att:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 161
    goto :goto_1

    .line 168
    :cond_3
    iput-boolean v1, p0, Lcom/android/mail/browse/MessageScrollView;->att:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->ats:Z

    goto :goto_2

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageScrollView;->ajq:Z

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 210
    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return v2

    .line 212
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/MessageScrollView;->hQ:F

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/MessageScrollView;->hR:F

    goto :goto_0

    .line 216
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageScrollView;->ajq:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mail/browse/MessageScrollView;->atx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atu:Lcom/android/mail/browse/aK;

    invoke-interface {v0}, Lcom/android/mail/browse/aK;->zoomOut()Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageScrollView;->atx:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mail/browse/MessageScrollView;->atx:Z

    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Trigger Zoom!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->ajq:Z

    move v2, v1

    .line 217
    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->atu:Lcom/android/mail/browse/aK;

    invoke-interface {v0}, Lcom/android/mail/browse/aK;->zoomIn()Z

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 219
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/mail/browse/MessageScrollView;->hQ:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/mail/browse/MessageScrollView;->hR:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 221
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    .line 222
    iget v1, p0, Lcom/android/mail/browse/MessageScrollView;->aty:I

    if-le v0, v1, :cond_0

    .line 223
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->ajq:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_3

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    iget-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->att:Z

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "MsgScroller"

    const-string v3, "IN ScrollView.onIntercept, NOW stealing. ev=%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->ats:Z

    if-eqz v2, :cond_1

    .line 131
    const-string v2, "MsgScroller"

    const-string v3, "IN ScrollView.onIntercept, already stealing. ev=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 132
    goto :goto_0

    .line 135
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mail/browse/MessageScrollView;->ats:Z

    .line 136
    const-string v2, "MsgScroller"

    const-string v3, "OUT ScrollView.onIntercept, steal=%s ev=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/mail/browse/MessageScrollView;->ats:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 183
    const-string v0, "MsgScroller"

    const-string v1, "Begin scale gesture"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    iput-boolean v3, p0, Lcom/android/mail/browse/MessageScrollView;->atw:Z

    .line 185
    return v3
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    const-string v0, "MsgScroller"

    const-string v1, "End scale gesture"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    iput-boolean v3, p0, Lcom/android/mail/browse/MessageScrollView;->atw:Z

    .line 192
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 260
    iget-object v0, p0, Lcom/android/mail/browse/MessageScrollView;->aru:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/aN;

    .line 261
    invoke-interface {v0, p2}, Lcom/android/mail/browse/aN;->bP(I)V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method
