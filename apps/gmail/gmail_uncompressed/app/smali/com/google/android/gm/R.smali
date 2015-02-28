.class final Lcom/google/android/gm/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aYp:Lcom/google/android/gm/P;


# direct methods
.method constructor <init>(Lcom/google/android/gm/P;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/android/gm/R;->aYp:Lcom/google/android/gm/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/gm/R;->aYp:Lcom/google/android/gm/P;

    iget-object v0, v0, Lcom/google/android/gm/P;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->c(Lcom/google/android/gm/K;)V

    .line 489
    return-void
.end method
