.class final Lcom/android/mail/browse/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aU:Landroid/view/View;

.field final synthetic alQ:Lcom/android/mail/browse/ConversationContainer;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ConversationContainer;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/mail/browse/p;->alQ:Lcom/android/mail/browse/ConversationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-object p2, p0, Lcom/android/mail/browse/p;->aU:Landroid/view/View;

    .line 886
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 890
    invoke-static {}, Lcom/android/mail/browse/ConversationContainer;->oT()[I

    move-result-object v0

    array-length v0, v0

    .line 891
    iget-object v1, p0, Lcom/android/mail/browse/p;->alQ:Lcom/android/mail/browse/ConversationContainer;

    iget-object v2, p0, Lcom/android/mail/browse/p;->aU:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/p;->aU:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/ConversationContainer;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 892
    return-void
.end method
