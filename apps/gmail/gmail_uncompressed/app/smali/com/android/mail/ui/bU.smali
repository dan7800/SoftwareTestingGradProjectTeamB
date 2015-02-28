.class final Lcom/android/mail/ui/bU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aKr:Lcom/android/mail/ui/bT;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bT;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mail/ui/bU;->aKr:Lcom/android/mail/ui/bT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bU;->aKr:Lcom/android/mail/ui/bT;

    invoke-virtual {v0, p3}, Lcom/android/mail/ui/bT;->db(I)V

    .line 104
    return-void
.end method
