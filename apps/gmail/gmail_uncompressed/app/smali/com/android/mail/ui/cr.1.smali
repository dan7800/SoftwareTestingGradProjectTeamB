.class final Lcom/android/mail/ui/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aLp:Lcom/android/mail/ui/MailboxSelectionActivity;

.field final synthetic aLq:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/mail/ui/cr;->aLp:Lcom/android/mail/ui/MailboxSelectionActivity;

    iput-object p2, p0, Lcom/android/mail/ui/cr;->aLq:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mail/ui/cr;->aLp:Lcom/android/mail/ui/MailboxSelectionActivity;

    iget-object v1, p0, Lcom/android/mail/ui/cr;->aLq:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->b(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V

    .line 212
    return-void
.end method
