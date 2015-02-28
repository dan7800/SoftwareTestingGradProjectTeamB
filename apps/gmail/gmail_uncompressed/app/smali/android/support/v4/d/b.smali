.class final Landroid/support/v4/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/d/d;


# instance fields
.field private final fF:Landroid/support/v4/d/e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/support/v4/d/e;

    invoke-direct {v0, p1}, Landroid/support/v4/d/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/d/b;->fF:Landroid/support/v4/d/e;

    .line 161
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 211
    iget-object v1, p0, Landroid/support/v4/d/b;->fF:Landroid/support/v4/d/e;

    iget v5, v1, Landroid/support/v4/d/e;->fG:I

    new-instance v0, Landroid/support/v4/d/f;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/d/f;-><init>(Landroid/support/v4/d/e;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/d/i;I)V

    iget-object v2, v1, Landroid/support/v4/d/e;->mContext:Landroid/content/Context;

    const-string v3, "print"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager;

    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    iget v4, v1, Landroid/support/v4/d/e;->fH:I

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    iget v4, v1, Landroid/support/v4/d/e;->fI:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v1

    invoke-virtual {v2, p1, v0, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 221
    return-void

    .line 211
    :cond_1
    iget v1, v1, Landroid/support/v4/d/e;->fI:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0
.end method

.method public final n(I)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/d/b;->fF:Landroid/support/v4/d/e;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/d/e;->fG:I

    .line 166
    return-void
.end method
