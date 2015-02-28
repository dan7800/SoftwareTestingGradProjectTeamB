.class final Lcom/android/mail/browse/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mail/c/a",
        "<",
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic g(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/android/mail/browse/ConversationMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mail/browse/ConversationMessage;-><init>(Landroid/database/Cursor;B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "ConversationMessage CursorCreator"

    return-object v0
.end method
