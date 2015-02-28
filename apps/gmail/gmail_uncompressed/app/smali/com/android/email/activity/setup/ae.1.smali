.class final Lcom/android/email/activity/setup/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic OA:Lcom/android/email/activity/setup/ad;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/ad;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/email/activity/setup/ae;->OA:Lcom/android/email/activity/setup/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 155
    iget-object v0, p0, Lcom/android/email/activity/setup/ae;->OA:Lcom/android/email/activity/setup/ad;

    invoke-static {v0}, Lcom/android/email/activity/setup/ad;->a(Lcom/android/email/activity/setup/ad;)V

    .line 156
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    return-void
.end method
