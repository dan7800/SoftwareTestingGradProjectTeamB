.class final Lcom/android/mail/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/B;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEj:Lcom/android/mail/providers/Conversation;

.field final synthetic aEk:Ljava/util/Set;

.field final synthetic aEl:[B


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 0

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/android/mail/ui/p;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/p;->aEj:Lcom/android/mail/providers/Conversation;

    iput-object p3, p0, Lcom/android/mail/ui/p;->aEk:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/mail/ui/p;->aEl:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wI()V
    .locals 4

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/mail/ui/p;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, p0, Lcom/android/mail/ui/p;->aEj:Lcom/android/mail/providers/Conversation;

    iget-object v2, p0, Lcom/android/mail/ui/p;->aEk:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/mail/ui/p;->aEl:[B

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    .line 1789
    return-void
.end method
