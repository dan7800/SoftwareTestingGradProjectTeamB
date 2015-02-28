.class final Lcom/android/mail/browse/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic alQ:Lcom/android/mail/browse/ConversationContainer;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/ConversationContainer;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/mail/browse/t;->alQ:Lcom/android/mail/browse/ConversationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/ConversationContainer;B)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/android/mail/browse/t;-><init>(Lcom/android/mail/browse/ConversationContainer;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/mail/browse/t;->alQ:Lcom/android/mail/browse/ConversationContainer;

    iget-object v1, p0, Lcom/android/mail/browse/t;->alQ:Lcom/android/mail/browse/ConversationContainer;

    invoke-static {v1}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/ConversationContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 899
    return-void
.end method
