.class final Lcom/android/ex/photo/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic ahp:Lcom/android/ex/photo/k;

.field final synthetic ahq:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/ex/photo/k;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/ex/photo/r;->ahp:Lcom/android/ex/photo/k;

    iput-object p2, p0, Lcom/android/ex/photo/r;->ahq:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 1074
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1075
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/ex/photo/r;->ahq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1080
    :goto_0
    iget-object v0, p0, Lcom/android/ex/photo/r;->ahp:Lcom/android/ex/photo/k;

    invoke-static {v0}, Lcom/android/ex/photo/k;->c(Lcom/android/ex/photo/k;)V

    .line 1081
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/r;->ahq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
