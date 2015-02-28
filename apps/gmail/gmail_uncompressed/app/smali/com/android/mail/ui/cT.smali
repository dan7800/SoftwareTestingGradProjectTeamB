.class public final Lcom/android/mail/ui/cT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/aE;
.implements Lcom/android/mail/browse/aH;
.implements Lcom/android/mail/browse/aN;


# instance fields
.field private aHN:Lcom/android/mail/ui/be;

.field private final aMP:Lcom/android/mail/ui/cU;

.field private aMQ:Lcom/android/mail/browse/MessageWebView;

.field private aMR:Lcom/android/mail/browse/ConversationViewHeader;

.field private aMS:Lcom/android/mail/browse/MessageHeaderView;

.field private aMT:Lcom/android/mail/browse/MessageHeaderView;

.field private aMU:Lcom/android/mail/browse/MessageFooterView;

.field private aMV:Lcom/android/mail/browse/MessageScrollView;

.field private aMW:I

.field private aqH:Lcom/android/mail/e;

.field private aqZ:Lcom/android/mail/browse/ConversationMessage;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/cU;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 83
    const v0, 0x7f0400ab

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    const v0, 0x7f0d01fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageScrollView;

    iput-object v0, p0, Lcom/android/mail/ui/cT;->aMV:Lcom/android/mail/browse/MessageScrollView;

    .line 85
    const v0, 0x7f0d01fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationViewHeader;

    iput-object v0, p0, Lcom/android/mail/ui/cT;->aMR:Lcom/android/mail/browse/ConversationViewHeader;

    .line 86
    const v0, 0x7f0d01ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    iput-object v0, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    .line 87
    const v0, 0x7f0d00e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    iput-object v0, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    .line 88
    const v0, 0x7f0d0200

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageFooterView;

    iput-object v0, p0, Lcom/android/mail/ui/cT;->aMU:Lcom/android/mail/browse/MessageFooterView;

    .line 90
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMV:Lcom/android/mail/browse/MessageScrollView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/MessageScrollView;->a(Lcom/android/mail/browse/aN;)V

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 98
    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/MessageHeaderView;->setBackgroundColor(I)V

    .line 99
    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/MessageHeaderView;->setBackgroundColor(I)V

    .line 100
    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMU:Lcom/android/mail/browse/MessageFooterView;

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/MessageFooterView;->setBackgroundColor(I)V

    .line 102
    new-instance v0, Lcom/android/mail/ui/be;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rd()Landroid/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v3}, Lcom/android/mail/ui/cU;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/mail/ui/be;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mail/ui/cT;->aHN:Lcom/android/mail/ui/be;

    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aHN:Lcom/android/mail/ui/be;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/be;->az(Landroid/view/View;)V

    .line 105
    const v0, 0x7f0d0109

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageWebView;

    iput-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    .line 106
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/MessageWebView;->setOverScrollMode(I)V

    .line 107
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rc()Lcom/android/mail/ui/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 108
    invoke-static {}, Lcom/android/mail/browse/at;->rn()Lcom/android/mail/browse/as;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    new-instance v3, Lcom/android/mail/browse/WebViewContextMenu;

    iget-object v4, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v4}, Lcom/android/mail/ui/cU;->rd()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-interface {v0, v5, v6, v7}, Lcom/android/mail/browse/as;->a(Lcom/android/mail/providers/Account;J)Lcom/android/mail/browse/ar;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/mail/browse/WebViewContextMenu;-><init>(Landroid/app/Activity;Lcom/android/mail/browse/ar;)V

    invoke-virtual {v2, v3}, Lcom/android/mail/browse/MessageWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v0, v8}, Lcom/android/mail/browse/MessageWebView;->setFocusable(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 120
    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rd()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/mail/utils/h;->a(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V

    .line 122
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 123
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 124
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMV:Lcom/android/mail/browse/MessageScrollView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/MessageScrollView;->a(Lcom/android/mail/browse/aK;)V

    .line 128
    return-object v1
.end method

.method public final a(Lcom/android/mail/browse/ae;I)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public final a(Lcom/android/mail/browse/ae;ZI)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public final b(Lcom/android/mail/browse/ae;I)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public final b(Lcom/android/mail/providers/Message;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 265
    return-void
.end method

.method public final bP(I)V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMV:Lcom/android/mail/browse/MessageScrollView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/MessageScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 181
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public final bl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 270
    return-void
.end method

.method public final c(Lcom/android/mail/providers/Message;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lcom/android/mail/browse/ConversationMessage;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    .line 193
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v0}, Lcom/android/mail/ui/cU;->rl()Z

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v0, v0, Lcom/android/mail/browse/ConversationMessage;->aBp:Z

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "<body style=\"margin: 0 %spx;\"><div style=\"margin: 16px 0; font-size: 80%%\">"

    new-array v1, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/mail/ui/cT;->aMW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, "</div></body>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMQ:Lcom/android/mail/browse/MessageWebView;

    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v1}, Lcom/android/mail/ui/cU;->rj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aqH:Lcom/android/mail/e;

    iget-object v1, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v2, v2, Lcom/android/mail/browse/ConversationMessage;->aBp:Z

    invoke-static {v5, v0, v1, v6, v2}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/aa;Lcom/android/mail/e;Lcom/android/mail/browse/ConversationMessage;ZZ)Lcom/android/mail/browse/ae;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageHeaderView;->ov()V

    .line 210
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1, v0, v7}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/ae;Z)V

    .line 212
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageHeaderView;->ov()V

    .line 213
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1, v0, v7}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/ae;Z)V

    .line 215
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v1, v1, Lcom/android/mail/browse/ConversationMessage;->ayX:Z

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMU:Lcom/android/mail/browse/MessageFooterView;

    invoke-virtual {v1, v7}, Lcom/android/mail/browse/MessageFooterView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMU:Lcom/android/mail/browse/MessageFooterView;

    invoke-virtual {v1, v0, v7}, Lcom/android/mail/browse/MessageFooterView;->a(Lcom/android/mail/browse/ae;Z)V

    .line 219
    :cond_0
    return-void

    :cond_1
    move v0, v7

    .line 194
    goto :goto_0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public final qL()Lcom/android/mail/browse/ConversationMessage;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    return-object v0
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMR:Lcom/android/mail/browse/ConversationViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public final zX()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMR:Lcom/android/mail/browse/ConversationViewHeader;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/cU;->a(Lcom/android/mail/browse/ConversationViewHeader;)V

    .line 134
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v0}, Lcom/android/mail/ui/cU;->rd()Landroid/app/Fragment;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/android/mail/e;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mail/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mail/ui/cT;->aqH:Lcom/android/mail/e;

    .line 137
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rg()Lcom/android/mail/browse/m;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v3}, Lcom/android/mail/ui/cU;->rh()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/m;Ljava/util/Map;)V

    .line 139
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rm()Lcom/android/mail/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/b;)V

    .line 140
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1, p0}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/aH;)V

    .line 141
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageHeaderView;->rI()V

    .line 142
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rk()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/MessageHeaderView;->aI(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageHeaderView;->rJ()V

    .line 145
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rg()Lcom/android/mail/browse/m;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v3}, Lcom/android/mail/ui/cU;->rh()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/m;Ljava/util/Map;)V

    .line 147
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rm()Lcom/android/mail/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/b;)V

    .line 148
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1, p0}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/aH;)V

    .line 149
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v1}, Lcom/android/mail/browse/MessageHeaderView;->rI()V

    .line 150
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v2}, Lcom/android/mail/ui/cU;->rk()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/MessageHeaderView;->aI(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMS:Lcom/android/mail/browse/MessageHeaderView;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/cU;->a(Lcom/android/mail/browse/MessageHeaderView;)V

    .line 153
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    iget-object v2, p0, Lcom/android/mail/ui/cT;->aMT:Lcom/android/mail/browse/MessageHeaderView;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/cU;->a(Lcom/android/mail/browse/MessageHeaderView;)V

    .line 155
    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMU:Lcom/android/mail/browse/MessageFooterView;

    invoke-virtual {v0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v3}, Lcom/android/mail/ui/cU;->rg()Lcom/android/mail/browse/m;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/android/mail/browse/MessageFooterView;->a(Landroid/app/LoaderManager;Landroid/app/FragmentManager;Lcom/android/mail/browse/m;Lcom/android/mail/browse/aE;)V

    .line 158
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v0}, Lcom/android/mail/ui/cU;->ri()V

    .line 160
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aHN:Lcom/android/mail/ui/be;

    iget-object v1, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v1}, Lcom/android/mail/ui/cU;->re()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/be;->bu(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v0}, Lcom/android/mail/ui/cU;->rd()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mail/ui/cT;->aMW:I

    .line 165
    return-void
.end method

.method public final zY()Lcom/android/mail/browse/ConversationViewHeader;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMR:Lcom/android/mail/browse/ConversationViewHeader;

    return-object v0
.end method

.method public final zZ()V
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    .line 239
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v0}, Lcom/android/mail/ui/cU;->rd()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v3}, Lcom/android/mail/ui/cU;->rh()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/cT;->aMP:Lcom/android/mail/ui/cU;

    invoke-interface {v4}, Lcom/android/mail/ui/cU;->rj()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Message;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V

    .line 243
    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/mail/ui/cT;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v2, v2, Lcom/android/mail/browse/ConversationMessage;->ayV:Ljava/lang/String;

    goto :goto_0
.end method

.method public final zb()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mail/ui/cT;->aHN:Lcom/android/mail/ui/be;

    invoke-virtual {v0}, Lcom/android/mail/ui/be;->zb()V

    .line 231
    return-void
.end method
