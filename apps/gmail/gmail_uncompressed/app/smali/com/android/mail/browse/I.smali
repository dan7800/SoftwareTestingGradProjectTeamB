.class final Lcom/android/mail/browse/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final amP:Ljava/lang/String;

.field public amQ:Lcom/android/mail/providers/Conversation;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/android/mail/browse/I;->amP:Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/I;->amQ:Lcom/android/mail/providers/Conversation;

    .line 265
    return-void
.end method
