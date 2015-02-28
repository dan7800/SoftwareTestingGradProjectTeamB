.class final Lcom/android/mail/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/be;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEj:Lcom/android/mail/providers/Conversation;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;)V
    .locals 0

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/android/mail/ui/n;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/n;->aEj:Lcom/android/mail/providers/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sa()V
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/mail/ui/n;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, p0, Lcom/android/mail/ui/n;->aEj:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/a;->j(Lcom/android/mail/providers/Conversation;)V

    .line 1504
    return-void
.end method
