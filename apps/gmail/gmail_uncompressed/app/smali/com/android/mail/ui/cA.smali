.class final Lcom/android/mail/ui/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final aKf:Landroid/widget/ImageView;

.field final synthetic aMf:Lcom/android/mail/ui/MiniDrawerView;

.field public final ajS:Lcom/android/mail/providers/Folder;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/MiniDrawerView;Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/mail/ui/cA;->aMf:Lcom/android/mail/ui/MiniDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/android/mail/ui/cA;->ajS:Lcom/android/mail/providers/Folder;

    .line 164
    iput-object p3, p0, Lcom/android/mail/ui/cA;->aKf:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/android/mail/ui/cA;->ajS:Lcom/android/mail/providers/Folder;

    iget-object v1, p0, Lcom/android/mail/ui/cA;->aKf:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mail/providers/Folder;->a(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 166
    iget-object v0, p0, Lcom/android/mail/ui/cA;->aKf:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mail/ui/cA;->aMf:Lcom/android/mail/ui/MiniDrawerView;

    invoke-static {v0}, Lcom/android/mail/ui/MiniDrawerView;->a(Lcom/android/mail/ui/MiniDrawerView;)Lcom/android/mail/ui/bB;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cA;->ajS:Lcom/android/mail/providers/Folder;

    const-string v2, "mini-drawer"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/providers/Folder;Ljava/lang/String;)V

    .line 172
    return-void
.end method
