.class abstract Lcom/android/mail/browse/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final auL:Ljava/lang/String;

.field final synthetic auM:Lcom/android/mail/browse/WebViewContextMenu;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/mail/browse/bg;->auM:Lcom/android/mail/browse/WebViewContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/android/mail/browse/bg;->auL:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 129
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "menu_clicked"

    iget-object v3, p0, Lcom/android/mail/browse/bg;->auL:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 131
    invoke-virtual {p0}, Lcom/android/mail/browse/bg;->sb()Z

    move-result v0

    return v0
.end method

.method public abstract sb()Z
.end method
