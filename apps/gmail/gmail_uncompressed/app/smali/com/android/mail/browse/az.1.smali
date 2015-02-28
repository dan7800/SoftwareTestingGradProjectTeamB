.class final Lcom/android/mail/browse/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic asb:Lcom/android/mail/browse/MessageAttachmentBar;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/MessageAttachmentBar;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/mail/browse/az;->asb:Lcom/android/mail/browse/MessageAttachmentBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mail/browse/az;->asb:Lcom/android/mail/browse/MessageAttachmentBar;

    invoke-static {v0}, Lcom/android/mail/browse/MessageAttachmentBar;->a(Lcom/android/mail/browse/MessageAttachmentBar;)V

    .line 81
    return-void
.end method
