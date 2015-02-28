.class public Lcom/android/mail/g/b;
.super Lcom/android/ex/photo/g;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/g/e;


# static fields
.field static final EXTRA_MESSAGE:Ljava/lang/String;

.field static final axm:Ljava/lang/String;

.field static final axn:Ljava/lang/String;

.field static final axo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/g/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-acct"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/g/b;->axm:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/g/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-accttype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/g/b;->axn:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/g/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/g/b;->EXTRA_MESSAGE:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/g/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-hide-extra-option-one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/g/b;->axo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/ex/photo/g;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/browse/ConversationMessage;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    const v0, 0x7f0901ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/ex/photo/e;->r(Landroid/content/Context;Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v0

    .line 83
    iget-object v1, p3, Lcom/android/mail/browse/ConversationMessage;->aBm:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/f;->aR(Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCz:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/ex/photo/f;->h([Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/ex/photo/f;->aQ(Ljava/lang/String;)Lcom/android/ex/photo/f;

    .line 87
    invoke-virtual {v0}, Lcom/android/ex/photo/f;->nE()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/mail/g/b;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/browse/ConversationMessage;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/browse/ConversationMessage;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/android/mail/g/b;->EXTRA_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    sget-object v0, Lcom/android/mail/g/b;->axm:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    sget-object v0, Lcom/android/mail/g/b;->axn:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    sget-object v1, Lcom/android/mail/g/b;->axo:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/mail/browse/ConversationMessage;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    return-object p0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/browse/ConversationMessage;I)V
    .locals 3

    .prologue
    .line 54
    const v0, 0x7f0901ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/ex/photo/e;->r(Landroid/content/Context;Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v0

    .line 57
    iget-object v1, p3, Lcom/android/mail/browse/ConversationMessage;->aBm:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/f;->aR(Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCz:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/ex/photo/f;->h([Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/photo/f;->a(Ljava/lang/Integer;)Lcom/android/ex/photo/f;

    .line 62
    invoke-virtual {v0}, Lcom/android/ex/photo/f;->nE()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/mail/g/b;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/browse/ConversationMessage;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method


# virtual methods
.method public nF()Lcom/android/ex/photo/k;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/mail/g/c;

    invoke-direct {v0, p0}, Lcom/android/mail/g/c;-><init>(Lcom/android/mail/g/e;)V

    return-object v0
.end method
