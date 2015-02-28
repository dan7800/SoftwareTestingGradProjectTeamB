.class public interface abstract Lcom/android/mail/ui/aP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/av;


# virtual methods
.method public abstract a(ILcom/android/mail/browse/be;)Lcom/android/mail/ui/br;
.end method

.method public abstract a(Ljava/util/Collection;Lcom/android/mail/providers/Folder;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/providers/Folder;",
            "Z",
            "Lcom/android/mail/browse/be;",
            ")",
            "Lcom/android/mail/ui/br;"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/br;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract a(IZLcom/android/mail/browse/be;)V
.end method

.method public abstract a(Lcom/android/mail/browse/ConversationMessage;Z)V
.end method

.method public abstract a(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Conversation;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Collection;Ljava/util/Collection;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Collection;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/Collection;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/Collection;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract cJ(I)Lcom/android/mail/ui/br;
.end method

.method public abstract h(Lcom/android/mail/providers/Conversation;)Z
.end method

.method public abstract q(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ww()V
.end method

.method public abstract wy()Landroid/content/DialogInterface$OnClickListener;
.end method
