.class final Lcom/android/mail/compose/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic avc:Lcom/android/mail/compose/ComposeAttachmentTile;

.field final synthetic avd:Lcom/android/mail/providers/Attachment;

.field final synthetic ave:Lcom/android/mail/compose/AttachmentsView;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/AttachmentsView;Lcom/android/mail/compose/ComposeAttachmentTile;Lcom/android/mail/providers/Attachment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/mail/compose/b;->ave:Lcom/android/mail/compose/AttachmentsView;

    iput-object p2, p0, Lcom/android/mail/compose/b;->avc:Lcom/android/mail/compose/ComposeAttachmentTile;

    iput-object p3, p0, Lcom/android/mail/compose/b;->avd:Lcom/android/mail/providers/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mail/compose/b;->ave:Lcom/android/mail/compose/AttachmentsView;

    iget-object v1, p0, Lcom/android/mail/compose/b;->avc:Lcom/android/mail/compose/ComposeAttachmentTile;

    iget-object v2, p0, Lcom/android/mail/compose/b;->avd:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/compose/AttachmentsView;->a(Landroid/view/View;Lcom/android/mail/providers/Attachment;)V

    .line 119
    return-void
.end method
