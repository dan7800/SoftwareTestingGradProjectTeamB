.class final Lcom/android/mail/ui/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aOb:Z

.field public final amQ:Lcom/android/mail/providers/Conversation;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Conversation;Z)V
    .locals 0

    .prologue
    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    iput-object p1, p0, Lcom/android/mail/ui/dv;->amQ:Lcom/android/mail/providers/Conversation;

    .line 997
    iput-boolean p2, p0, Lcom/android/mail/ui/dv;->aOb:Z

    .line 998
    return-void
.end method
