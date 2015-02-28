.class public Lcom/android/mail/browse/MessageWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/aK;


# static fields
.field private static abL:Landroid/os/Handler;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final LF:Lcom/android/mail/utils/d;

.field private final atA:Lcom/android/mail/utils/ad;

.field private atB:I

.field private atC:I

.field private atD:Z

.field private atE:J

.field private atz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/MessageWebView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcom/android/mail/utils/d;->aOX:Lcom/android/mail/utils/d;

    iput-object v0, p0, Lcom/android/mail/browse/MessageWebView;->LF:Lcom/android/mail/utils/d;

    .line 47
    new-instance v0, Lcom/android/mail/utils/ad;

    const-string v1, "MessageWebView"

    new-instance v2, Lcom/android/mail/browse/aL;

    invoke-direct {v2, p0}, Lcom/android/mail/browse/aL;-><init>(Lcom/android/mail/browse/MessageWebView;)V

    sget-object v3, Lcom/android/mail/browse/MessageWebView;->abL:Landroid/os/Handler;

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/android/mail/browse/MessageWebView;->abL:Landroid/os/Handler;

    :cond_0
    sget-object v3, Lcom/android/mail/browse/MessageWebView;->abL:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mail/utils/ad;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageWebView;->atA:Lcom/android/mail/utils/ad;

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/browse/MessageWebView;->atE:J

    .line 66
    return-void
.end method

.method private M(II)V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mail/browse/MessageWebView;->atB:I

    iget v1, p0, Lcom/android/mail/browse/MessageWebView;->atC:I

    invoke-super {p0, v0, v1, p1, p2}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 115
    iget-object v0, p0, Lcom/android/mail/browse/MessageWebView;->LF:Lcom/android/mail/utils/d;

    invoke-static {}, Lcom/android/mail/utils/d;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/browse/MessageWebView;->atE:J

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/MessageWebView;)V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageWebView;->atD:Z

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageWebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageWebView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/MessageWebView;->M(II)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 89
    iput p1, p0, Lcom/android/mail/browse/MessageWebView;->atB:I

    .line 90
    iput p2, p0, Lcom/android/mail/browse/MessageWebView;->atC:I

    .line 91
    iget-object v0, p0, Lcom/android/mail/browse/MessageWebView;->LF:Lcom/android/mail/utils/d;

    invoke-static {}, Lcom/android/mail/utils/d;->getTime()J

    move-result-wide v2

    .line 92
    iget-wide v4, p0, Lcom/android/mail/browse/MessageWebView;->atE:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    iget-boolean v2, p0, Lcom/android/mail/browse/MessageWebView;->atD:Z

    if-eqz v2, :cond_1

    .line 97
    iput-boolean v1, p0, Lcom/android/mail/browse/MessageWebView;->atD:Z

    .line 98
    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/android/mail/browse/MessageWebView;->mW:Ljava/lang/String;

    const-string v2, "Suppressing size change in MessageWebView"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 92
    goto :goto_0

    .line 104
    :cond_1
    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/mail/browse/MessageWebView;->atA:Lcom/android/mail/utils/ad;

    invoke-virtual {v0}, Lcom/android/mail/utils/ad;->Bd()V

    goto :goto_1

    .line 109
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/mail/browse/MessageWebView;->M(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 80
    iput-boolean v6, p0, Lcom/android/mail/browse/MessageWebView;->atz:Z

    .line 81
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 82
    const-string v1, "MsgScroller"

    const-string v2, "OUT WebView.onTouch, returning handled=%s ev=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    return v0
.end method

.method public final rQ()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageWebView;->atz:Z

    return v0
.end method

.method public final rR()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageWebView;->atz:Z

    .line 76
    return-void
.end method
