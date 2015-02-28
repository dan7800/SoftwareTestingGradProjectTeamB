.class final Lcom/android/email/provider/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic TG:Lcom/android/email/provider/z;


# direct methods
.method constructor <init>(Lcom/android/email/provider/z;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/email/provider/A;->TG:Lcom/android/email/provider/z;

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
    .line 79
    iget-object v0, p0, Lcom/android/email/provider/A;->TG:Lcom/android/email/provider/z;

    invoke-static {v0}, Lcom/android/email/provider/z;->a(Lcom/android/email/provider/z;)Lcom/android/mail/ui/cX;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mail/ui/cX;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 80
    instance-of v1, v0, Lcom/android/mail/ui/bX;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/email/provider/A;->TG:Lcom/android/email/provider/z;

    check-cast v0, Lcom/android/mail/ui/bX;

    invoke-virtual {v1, v0}, Lcom/android/email/provider/z;->a(Lcom/android/mail/ui/bX;)V

    .line 83
    :cond_0
    return-void
.end method
