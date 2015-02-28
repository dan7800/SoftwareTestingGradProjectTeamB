.class final Lcom/android/mail/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/ab;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEg:Lcom/android/mail/providers/Folder;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/android/mail/ui/f;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/f;->aEg:Lcom/android/mail/providers/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ar(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/mail/ui/f;->aEg:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    .line 4035
    if-eqz v0, :cond_0

    .line 4036
    iget-object v1, p0, Lcom/android/mail/ui/f;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Landroid/net/Uri;)V

    .line 4038
    :cond_0
    return-void
.end method
