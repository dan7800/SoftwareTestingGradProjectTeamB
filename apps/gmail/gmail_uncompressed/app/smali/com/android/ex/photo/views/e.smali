.class public final Lcom/android/ex/photo/views/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ajL:Landroid/widget/ProgressBar;

.field private final ajM:Landroid/widget/ProgressBar;

.field private ajN:Z


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/ex/photo/views/e;->ajL:Landroid/widget/ProgressBar;

    .line 37
    iput-object p2, p0, Lcom/android/ex/photo/views/e;->ajM:Landroid/widget/ProgressBar;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/views/e;->setIndeterminate(Z)V

    .line 39
    return-void
.end method

.method private ao(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 57
    iget-object v3, p0, Lcom/android/ex/photo/views/e;->ajM:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/ex/photo/views/e;->ajL:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v2, v1

    .line 58
    goto :goto_1
.end method


# virtual methods
.method public final setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/ex/photo/views/e;->ajN:Z

    .line 44
    iget-boolean v0, p0, Lcom/android/ex/photo/views/e;->ajN:Z

    invoke-direct {p0, v0}, Lcom/android/ex/photo/views/e;->ao(Z)V

    .line 45
    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/photo/views/e;->ajL:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ex/photo/views/e;->ajL:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/views/e;->ajM:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/android/ex/photo/views/e;->ajL:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/android/ex/photo/views/e;->ajN:Z

    invoke-direct {p0, v0}, Lcom/android/ex/photo/views/e;->ao(Z)V

    goto :goto_0
.end method
