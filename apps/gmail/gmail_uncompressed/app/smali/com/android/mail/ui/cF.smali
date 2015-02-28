.class final Lcom/android/mail/ui/cF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aMy:Lcom/android/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/mail/ui/cF;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/mail/ui/cF;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    iget-object v0, p0, Lcom/android/mail/ui/cF;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->b(Lcom/android/mail/ui/NestedFolderTeaserView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z

    .line 296
    iget-object v0, p0, Lcom/android/mail/ui/cF;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->c(Lcom/android/mail/ui/NestedFolderTeaserView;)Z

    .line 297
    iget-object v0, p0, Lcom/android/mail/ui/cF;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->d(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 298
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
