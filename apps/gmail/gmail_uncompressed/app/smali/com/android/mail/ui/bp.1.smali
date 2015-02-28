.class final Lcom/android/mail/ui/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aIU:Lcom/android/mail/ui/CustomViewToolbar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/CustomViewToolbar;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mail/ui/bp;->aIU:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "menu_item"

    const-string v2, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_bar/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mail/ui/bp;->aIU:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-static {v4}, Lcom/android/mail/ui/CustomViewToolbar;->a(Lcom/android/mail/ui/CustomViewToolbar;)Lcom/android/mail/ui/dD;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/ui/dD;->AA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/bp;->aIU:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-static {v0}, Lcom/android/mail/ui/CustomViewToolbar;->b(Lcom/android/mail/ui/CustomViewToolbar;)Lcom/android/mail/ui/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wu()V

    .line 89
    return-void
.end method
