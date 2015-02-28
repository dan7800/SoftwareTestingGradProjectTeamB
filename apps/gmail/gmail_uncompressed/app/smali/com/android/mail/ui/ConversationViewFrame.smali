.class public Lcom/android/mail/ui/ConversationViewFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final aIs:Landroid/view/ViewConfiguration;

.field private aIt:J

.field private aIu:F

.field private aIv:F

.field private aIw:Lcom/android/mail/ui/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationViewFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIs:Landroid/view/ViewConfiguration;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/bd;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIw:Lcom/android/mail/ui/bd;

    .line 56
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIw:Lcom/android/mail/ui/bd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIw:Lcom/android/mail/ui/bd;

    invoke-interface {v0}, Lcom/android/mail/ui/bd;->yY()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 62
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIw:Lcom/android/mail/ui/bd;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIw:Lcom/android/mail/ui/bd;

    invoke-interface {v1}, Lcom/android/mail/ui/bd;->za()V

    .line 67
    :cond_0
    return v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIw:Lcom/android/mail/ui/bd;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 92
    :goto_1
    return v0

    .line 75
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIt:J

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIu:F

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIv:F

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIt:J

    sub-long/2addr v0, v2

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIu:F

    sub-float/2addr v2, v3

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIv:F

    sub-float/2addr v3, v4

    .line 84
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIs:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIs:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFrame;->aIw:Lcom/android/mail/ui/bd;

    invoke-interface {v0}, Lcom/android/mail/ui/bd;->yZ()V

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
