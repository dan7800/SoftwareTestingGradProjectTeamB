.class public final Landroid/support/v7/internal/view/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/aV;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private wa:J

.field private wb:Landroid/support/v4/view/bk;

.field private wc:Z

.field private final wd:Landroid/support/v4/view/bl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/internal/view/h;->wa:J

    .line 107
    new-instance v0, Landroid/support/v7/internal/view/i;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/i;-><init>(Landroid/support/v7/internal/view/h;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->wd:Landroid/support/v4/view/bl;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->lO:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/bk;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->wb:Landroid/support/v4/view/bk;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/h;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    return-void
.end method

.method static synthetic c(Landroid/support/v7/internal/view/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->lO:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/support/v4/view/bk;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Landroid/support/v7/internal/view/h;->wb:Landroid/support/v4/view/bk;

    .line 104
    :cond_0
    return-object p0
.end method

.method public final b(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Landroid/support/v7/internal/view/h;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    :cond_0
    return-object p0
.end method

.method public final cancel()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->lO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aV;

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/view/aV;->cancel()V

    goto :goto_1

    .line 83
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    goto :goto_0
.end method

.method public final du()Landroid/support/v7/internal/view/h;
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    if-nez v0, :cond_0

    .line 88
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/internal/view/h;->wa:J

    .line 90
    :cond_0
    return-object p0
.end method

.method public final e(Landroid/support/v4/view/aV;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->lO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-object p0
.end method

.method public final start()V
    .locals 6

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->lO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aV;

    .line 57
    iget-wide v2, p0, Landroid/support/v7/internal/view/h;->wa:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 58
    iget-wide v2, p0, Landroid/support/v7/internal/view/h;->wa:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/aV;->b(J)Landroid/support/v4/view/aV;

    .line 60
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aV;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/aV;

    .line 63
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->wb:Landroid/support/v4/view/bk;

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->wd:Landroid/support/v4/view/bl;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aV;->a(Landroid/support/v4/view/bk;)Landroid/support/v4/view/aV;

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/view/aV;->start()V

    goto :goto_1

    .line 69
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->wc:Z

    goto :goto_0
.end method
