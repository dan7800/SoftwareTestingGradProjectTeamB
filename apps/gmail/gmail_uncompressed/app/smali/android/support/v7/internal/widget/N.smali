.class final Landroid/support/v7/internal/widget/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic AW:Landroid/support/v7/internal/widget/SpinnerCompat;

.field final synthetic AX:Landroid/support/v7/internal/widget/M;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/M;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Landroid/support/v7/internal/widget/N;->AX:Landroid/support/v7/internal/widget/M;

    iput-object p2, p0, Landroid/support/v7/internal/widget/N;->AW:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Landroid/support/v7/internal/widget/N;->AX:Landroid/support/v7/internal/widget/M;

    iget-object v0, v0, Landroid/support/v7/internal/widget/M;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 992
    iget-object v0, p0, Landroid/support/v7/internal/widget/N;->AX:Landroid/support/v7/internal/widget/M;

    iget-object v0, v0, Landroid/support/v7/internal/widget/M;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->zR:Landroid/support/v7/internal/widget/p;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Landroid/support/v7/internal/widget/N;->AX:Landroid/support/v7/internal/widget/M;

    iget-object v0, v0, Landroid/support/v7/internal/widget/M;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/N;->AX:Landroid/support/v7/internal/widget/M;

    invoke-static {v1}, Landroid/support/v7/internal/widget/M;->a(Landroid/support/v7/internal/widget/M;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->ad(Landroid/view/View;)Z

    .line 996
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/N;->AX:Landroid/support/v7/internal/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/M;->dismiss()V

    .line 997
    return-void
.end method
