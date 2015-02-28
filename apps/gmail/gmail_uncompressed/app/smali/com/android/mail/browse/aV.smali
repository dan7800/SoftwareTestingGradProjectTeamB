.class final Lcom/android/mail/browse/aV;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field final synthetic auy:Lcom/android/mail/browse/SubjectAndFolderView;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/SubjectAndFolderView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mail/browse/aV;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 128
    iget-object v0, p0, Lcom/android/mail/browse/aV;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v0}, Lcom/android/mail/browse/SubjectAndFolderView;->b(Lcom/android/mail/browse/SubjectAndFolderView;)I

    move-result v0

    add-int/2addr v0, p7

    iget-object v1, p0, Lcom/android/mail/browse/aV;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v1}, Lcom/android/mail/browse/SubjectAndFolderView;->a(Lcom/android/mail/browse/SubjectAndFolderView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 130
    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    iget-object v0, p0, Lcom/android/mail/browse/aV;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v0}, Lcom/android/mail/browse/SubjectAndFolderView;->a(Lcom/android/mail/browse/SubjectAndFolderView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 133
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mail/browse/aV;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v0}, Lcom/android/mail/browse/SubjectAndFolderView;->a(Lcom/android/mail/browse/SubjectAndFolderView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method
