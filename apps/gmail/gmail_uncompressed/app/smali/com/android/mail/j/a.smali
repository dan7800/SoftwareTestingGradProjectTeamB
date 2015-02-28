.class public final Lcom/android/mail/j/a;
.super Lcom/android/mail/ui/M;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final axW:Ljava/lang/String;

.field private final axX:Ljava/lang/String;

.field private final axY:Ljava/lang/String;

.field private final axZ:Ljava/lang/String;

.field private final aya:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/j/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/mail/ui/M;-><init>(Landroid/content/Context;)V

    .line 45
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/android/mail/j/a;->cK(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/j/a;->axW:Ljava/lang/String;

    .line 46
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/mail/j/a;->cK(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/j/a;->axX:Ljava/lang/String;

    .line 47
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/android/mail/j/a;->cK(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/j/a;->axY:Ljava/lang/String;

    .line 48
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/android/mail/j/a;->cK(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/j/a;->axZ:Ljava/lang/String;

    .line 49
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/android/mail/j/a;->cK(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/j/a;->aya:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/j/a;->axX:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/j/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public final e(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 58
    iget-boolean v0, p0, Lcom/android/mail/j/a;->Um:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not call startPrintConversation twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/j/a;->reset()V

    .line 64
    iget-object v0, p0, Lcom/android/mail/j/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    const v1, 0x7f110013

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/mail/j/a;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/android/mail/providers/Conversation;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/android/mail/j/a;->axW:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/j/a;->aya:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/mail/j/a;->mContext:Landroid/content/Context;

    const v5, 0x7f090079

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/mail/j/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iput-boolean v6, p0, Lcom/android/mail/j/a;->Um:Z

    .line 75
    return-void
.end method

.method public final ub()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/android/mail/j/a;->Um:Z

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call startConversation first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/mail/j/a;->axY:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mail/j/a;->mContext:Landroid/content/Context;

    const v3, 0x7f0901a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/j/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iput-boolean v4, p0, Lcom/android/mail/j/a;->Um:Z

    .line 103
    sget-object v0, Lcom/android/mail/j/a;->TAG:Ljava/lang/String;

    const-string v1, "rendered conversation of %d bytes, buffer capacity=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/j/a;->gJ:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/mail/j/a;->gJ:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->capacity()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/mail/j/a;->xf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uc()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/android/mail/j/a;->Um:Z

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call startConversation first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/mail/j/a;->axZ:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/j/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iput-boolean v4, p0, Lcom/android/mail/j/a;->Um:Z

    .line 124
    sget-object v0, Lcom/android/mail/j/a;->TAG:Ljava/lang/String;

    const-string v1, "rendered conversation of %d bytes, buffer capacity=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/j/a;->gJ:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mail/j/a;->gJ:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/mail/j/a;->xf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
