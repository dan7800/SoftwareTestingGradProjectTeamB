.class final Lcom/android/email/activity/setup/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Pm:Lcom/android/email/activity/setup/aK;

.field final synthetic Pn:Z

.field final synthetic Po:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aK;ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/email/activity/setup/aM;->Pm:Lcom/android/email/activity/setup/aK;

    iput-boolean p2, p0, Lcom/android/email/activity/setup/aM;->Pn:Z

    iput-object p3, p0, Lcom/android/email/activity/setup/aM;->Po:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/email/activity/setup/aM;->Pm:Lcom/android/email/activity/setup/aK;

    invoke-static {v0}, Lcom/android/email/activity/setup/aK;->b(Lcom/android/email/activity/setup/aK;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 112
    const-string v2, "quickResponse"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/android/email/activity/setup/aM;->Pn:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/email/activity/setup/aM;->Pm:Lcom/android/email/activity/setup/aK;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/aM;->Po:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/aM;->Pm:Lcom/android/email/activity/setup/aK;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/aM;->Po:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
