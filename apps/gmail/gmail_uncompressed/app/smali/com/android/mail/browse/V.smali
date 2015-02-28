.class public abstract Lcom/android/mail/browse/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected agR:Landroid/view/View;

.field private aqi:I

.field private aqj:Z

.field private vk:I

.field private yS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Landroid/view/View;)V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/mail/browse/V;->qo()Landroid/view/View$OnKeyListener;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_1

    .line 202
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 203
    if-eqz v3, :cond_0

    .line 204
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method public a(Lcom/android/mail/browse/ConversationMessage;)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public au(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public av(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public b(Lcom/android/mail/browse/ConversationMessage;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public abstract c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final ca(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 107
    const-string v2, "ConvLayout"

    const-string v3, "IN setHeight=%dpx of overlay item: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    iget v2, p0, Lcom/android/mail/browse/V;->yS:I

    if-eq v2, p1, :cond_0

    .line 109
    iput p1, p0, Lcom/android/mail/browse/V;->yS:I

    .line 110
    iput-boolean v0, p0, Lcom/android/mail/browse/V;->aqj:Z

    .line 113
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final cb(I)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/android/mail/browse/V;->vk:I

    .line 161
    return-void
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x50

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/mail/browse/V;->yS:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/mail/browse/V;->vk:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/mail/browse/V;->aqi:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public abstract i(Landroid/view/View;Z)V
.end method

.method public abstract qn()Z
.end method

.method public qo()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public qp()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public final qq()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/mail/browse/V;->aqj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final qr()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/V;->aqj:Z

    .line 130
    return-void
.end method

.method public final qs()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/V;->aqj:Z

    .line 134
    return-void
.end method

.method public qt()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public qu()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public qv()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mail/browse/V;->agR:Landroid/view/View;

    return-object v0
.end method

.method public final setTop(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/android/mail/browse/V;->aqi:I

    .line 122
    return-void
.end method
