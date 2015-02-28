.class final Lcom/android/mail/ui/cE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aMx:Lcom/android/mail/ui/cI;

.field final synthetic aMy:Lcom/android/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/mail/ui/cE;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    iput-object p2, p0, Lcom/android/mail/ui/cE;->aMx:Lcom/android/mail/ui/cI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mail/ui/cE;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/bV;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cE;->aMx:Lcom/android/mail/ui/cI;

    invoke-virtual {v1}, Lcom/android/mail/ui/cI;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/bV;->h(Lcom/android/mail/providers/Folder;)V

    .line 240
    return-void
.end method
