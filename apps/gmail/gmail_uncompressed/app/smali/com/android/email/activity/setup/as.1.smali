.class final Lcom/android/email/activity/setup/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic OR:Lcom/android/email/activity/setup/ar;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/ar;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/email/activity/setup/as;->OR:Lcom/android/email/activity/setup/ar;

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
    .line 138
    iget-object v0, p0, Lcom/android/email/activity/setup/as;->OR:Lcom/android/email/activity/setup/ar;

    iget-object v0, v0, Lcom/android/email/activity/setup/ar;->OQ:Lcom/android/email/activity/setup/aq;

    invoke-static {v0}, Lcom/android/email/activity/setup/aq;->a(Lcom/android/email/activity/setup/aq;)V

    .line 139
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
    .line 143
    return-void
.end method
