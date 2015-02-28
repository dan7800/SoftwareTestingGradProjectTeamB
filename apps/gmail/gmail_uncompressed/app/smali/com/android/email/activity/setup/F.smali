.class final Lcom/android/email/activity/setup/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Ne:Lcom/android/email/activity/setup/D;

.field final synthetic Nf:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/D;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/email/activity/setup/F;->Ne:Lcom/android/email/activity/setup/D;

    iput-object p2, p0, Lcom/android/email/activity/setup/F;->Nf:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 130
    iget-object v0, p0, Lcom/android/email/activity/setup/F;->Nf:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 131
    const-string v1, "quickResponse"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "uri"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/email/activity/setup/aK;->a(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/email/activity/setup/aK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/F;->Ne:Lcom/android/email/activity/setup/D;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/D;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/aK;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 137
    return-void
.end method
