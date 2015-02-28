.class public final Lcom/android/mail/browse/ae;
.super Lcom/android/mail/browse/V;
.source "SourceFile"


# instance fields
.field private final aqH:Lcom/android/mail/e;

.field private final aqX:Lcom/android/mail/browse/aa;

.field private aqZ:Lcom/android/mail/browse/ConversationMessage;

.field private ara:Z

.field public arb:Z

.field private arc:Z

.field private ard:Ljava/lang/CharSequence;

.field private are:Ljava/lang/CharSequence;

.field private arf:Ljava/lang/CharSequence;

.field private arg:J

.field public arh:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/aa;Lcom/android/mail/e;Lcom/android/mail/browse/ConversationMessage;ZZ)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/mail/browse/V;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    .line 253
    iput-object p2, p0, Lcom/android/mail/browse/ae;->aqH:Lcom/android/mail/e;

    .line 254
    iput-object p3, p0, Lcom/android/mail/browse/ae;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    .line 255
    iput-boolean p4, p0, Lcom/android/mail/browse/ae;->ara:Z

    .line 256
    iput-boolean p5, p0, Lcom/android/mail/browse/ae;->arc:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/ae;->arb:Z

    .line 259
    return-void
.end method

.method private qR()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-wide v0, v0, Lcom/android/mail/browse/ConversationMessage;->aBf:J

    iget-wide v2, p0, Lcom/android/mail/browse/ae;->arg:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-wide v0, v0, Lcom/android/mail/browse/ConversationMessage;->aBf:J

    iput-wide v0, p0, Lcom/android/mail/browse/ae;->arg:J

    .line 377
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqH:Lcom/android/mail/e;

    iget-wide v2, p0, Lcom/android/mail/browse/ae;->arg:J

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/e;->I(J)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ae;->ard:Ljava/lang/CharSequence;

    .line 378
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqH:Lcom/android/mail/e;

    iget-wide v2, p0, Lcom/android/mail/browse/ae;->arg:J

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/e;->J(J)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ae;->are:Ljava/lang/CharSequence;

    .line 379
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqH:Lcom/android/mail/e;

    iget-wide v2, p0, Lcom/android/mail/browse/ae;->arg:J

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/e;->K(J)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ae;->arf:Ljava/lang/CharSequence;

    .line 381
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/ConversationMessage;)Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-static {v0, p1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final aC(Z)V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/mail/browse/ae;->ara:Z

    if-eq v0, p1, :cond_0

    .line 324
    iput-boolean p1, p0, Lcom/android/mail/browse/ae;->ara:Z

    .line 326
    :cond_0
    return-void
.end method

.method public final au(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Lcom/android/mail/browse/MessageHeaderView;

    .line 304
    invoke-virtual {p1}, Lcom/android/mail/browse/MessageHeaderView;->refresh()V

    .line 305
    return-void
.end method

.method public final av(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 389
    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    .line 390
    invoke-virtual {v0, p0}, Lcom/android/mail/browse/MessageHeaderView;->d(Lcom/android/mail/browse/ae;)V

    .line 391
    iput-object p1, p0, Lcom/android/mail/browse/ae;->agR:Landroid/view/View;

    .line 392
    return-void
.end method

.method public final b(Lcom/android/mail/browse/ConversationMessage;)V
    .locals 1

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/mail/browse/ae;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/ae;->arh:Ljava/lang/CharSequence;

    .line 357
    return-void
.end method

.method public final c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    const v0, 0x7f040057

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    .line 274
    iget-object v1, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->c(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/m;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v2}, Lcom/android/mail/browse/aa;->g(Lcom/android/mail/browse/aa;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/m;Ljava/util/Map;)V

    .line 276
    iget-object v1, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->h(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/aH;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/aH;)V

    .line 277
    iget-object v1, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->i(Lcom/android/mail/browse/aa;)Lcom/android/mail/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/b;)V

    .line 278
    iget-object v1, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v1}, Lcom/android/mail/browse/aa;->j(Lcom/android/mail/browse/aa;)Lcom/android/mail/utils/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/utils/aj;)V

    .line 279
    const-string v1, "overlay_item_root"

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->setTag(Ljava/lang/Object;)V

    .line 282
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/view/View;

    aput-object v0, v1, v3

    const/4 v2, 0x1

    const v3, 0x7f0d014f

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0d0171

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0d0168

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0d0169

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0d016a

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f0d0147

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f0d0170

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ae;->a([Landroid/view/View;)V

    .line 286
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x2

    return v0
.end method

.method public final i(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 291
    move-object v0, p1

    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    .line 292
    invoke-virtual {v0, p0, p2}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/ae;Z)V

    .line 293
    iput-object p1, p0, Lcom/android/mail/browse/ae;->agR:Landroid/view/View;

    .line 294
    return-void
.end method

.method public final qL()Lcom/android/mail/browse/ConversationMessage;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    return-object v0
.end method

.method public final qM()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/mail/browse/ae;->arc:Z

    return v0
.end method

.method public final qN()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/ae;->arc:Z

    .line 334
    return-void
.end method

.method public final qO()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/mail/browse/ae;->qR()V

    .line 361
    iget-object v0, p0, Lcom/android/mail/browse/ae;->ard:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final qP()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/mail/browse/ae;->qR()V

    .line 366
    iget-object v0, p0, Lcom/android/mail/browse/ae;->are:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final qQ()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/mail/browse/ae;->qR()V

    .line 371
    iget-object v0, p0, Lcom/android/mail/browse/ae;->arf:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final qS()Lcom/android/mail/browse/aa;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    return-object v0
.end method

.method public final qn()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/mail/browse/ae;->ara:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final qo()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/mail/browse/ae;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->qo()Landroid/view/View$OnKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public final qp()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/mail/browse/ae;->ara:Z

    return v0
.end method

.method public final qt()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/mail/browse/ae;->ara:Z

    return v0
.end method

.method public final qu()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public final qv()Landroid/view/View;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mail/browse/ae;->agR:Landroid/view/View;

    const v1, 0x7f0d014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
