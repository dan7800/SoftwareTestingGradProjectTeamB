.class public final Lcom/android/mail/browse/ab;
.super Lcom/android/mail/browse/V;
.source "SourceFile"


# instance fields
.field private aqV:Lcom/android/mail/browse/ae;

.field final synthetic aqW:Lcom/android/mail/browse/aa;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mail/browse/ab;->aqW:Lcom/android/mail/browse/aa;

    invoke-direct {p0}, Lcom/android/mail/browse/V;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/android/mail/browse/ab;->aqV:Lcom/android/mail/browse/ae;

    .line 173
    return-void
.end method


# virtual methods
.method public final av(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 203
    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/ConversationFooterView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/ConversationFooterView;->b(Lcom/android/mail/browse/ab;)V

    .line 204
    iput-object p1, p0, Lcom/android/mail/browse/ab;->agR:Landroid/view/View;

    .line 205
    return-void
.end method

.method public final c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 182
    const v0, 0x7f04004c

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationFooterView;

    .line 184
    iget-object v1, p0, Lcom/android/mail/browse/ab;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->c(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationFooterView;->a(Lcom/android/mail/browse/m;)V

    .line 185
    iget-object v1, p0, Lcom/android/mail/browse/ab;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->f(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationFooterView;->a(Lcom/android/mail/browse/K;)V

    .line 186
    const-string v1, "overlay_item_root"

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationFooterView;->setTag(Ljava/lang/Object;)V

    .line 189
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0d012b

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/ConversationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0d012c

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/ConversationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0d012d

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/ConversationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ab;->a([Landroid/view/View;)V

    .line 192
    return-object v0
.end method

.method public final c(Lcom/android/mail/browse/ae;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/mail/browse/ab;->aqV:Lcom/android/mail/browse/ae;

    .line 228
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public final i(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 197
    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/ConversationFooterView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/ConversationFooterView;->a(Lcom/android/mail/browse/ab;)V

    .line 198
    iput-object p1, p0, Lcom/android/mail/browse/ab;->agR:Landroid/view/View;

    .line 199
    return-void
.end method

.method public final qK()Lcom/android/mail/browse/ae;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mail/browse/ab;->aqV:Lcom/android/mail/browse/ae;

    return-object v0
.end method

.method public final qn()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public final qo()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/mail/browse/ab;->aqW:Lcom/android/mail/browse/aa;

    invoke-static {v0}, Lcom/android/mail/browse/aa;->e(Lcom/android/mail/browse/aa;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public final qv()Landroid/view/View;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/mail/browse/ab;->agR:Landroid/view/View;

    const v1, 0x7f0d012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
