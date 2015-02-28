.class final Lcom/android/mail/browse/bi;
.super Lcom/android/mail/browse/bg;
.source "SourceFile"


# instance fields
.field final synthetic auM:Lcom/android/mail/browse/WebViewContextMenu;

.field private final vi:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mail/browse/bi;->auM:Lcom/android/mail/browse/WebViewContextMenu;

    .line 142
    invoke-direct {p0, p1, p3}, Lcom/android/mail/browse/bg;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V

    .line 143
    iput-object p2, p0, Lcom/android/mail/browse/bi;->vi:Ljava/lang/CharSequence;

    .line 144
    return-void
.end method


# virtual methods
.method public final sb()Z
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mail/browse/bi;->auM:Lcom/android/mail/browse/WebViewContextMenu;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 150
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mail/browse/bi;->vi:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
