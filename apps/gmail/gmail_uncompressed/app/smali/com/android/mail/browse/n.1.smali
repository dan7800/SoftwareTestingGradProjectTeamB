.class final Lcom/android/mail/browse/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/utils/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mail/utils/k",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic alP:Ljava/util/Set;

.field final synthetic alQ:Lcom/android/mail/browse/ConversationContainer;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationContainer;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/mail/browse/n;->alQ:Lcom/android/mail/browse/ConversationContainer;

    iput-object p2, p0, Lcom/android/mail/browse/n;->alP:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic P(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1042
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/mail/browse/n;->alP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
