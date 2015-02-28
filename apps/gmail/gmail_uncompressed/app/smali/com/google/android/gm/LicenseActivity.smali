.class public Lcom/google/android/gm/LicenseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private aKF:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LicenseActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gm/LicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 30
    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 34
    :cond_0
    const v0, 0x7f0d0110

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/gm/LicenseActivity;->aKF:Landroid/webkit/WebView;

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/LicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f070000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 41
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 44
    new-array v5, v4, [C

    move v0, v1

    move v2, v1

    .line 49
    :cond_1
    add-int/2addr v2, v0

    .line 50
    sub-int v0, v4, v2

    invoke-virtual {v3, v5, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 51
    if-ltz v0, :cond_2

    add-int v6, v2, v0

    if-lt v6, v4, :cond_1

    .line 53
    :cond_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v1, p0, Lcom/google/android/gm/LicenseActivity;->aKF:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    sget-object v2, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v3, "Error reading licence file"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gm/LicenseActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gm/LicenseActivity;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gm/LicenseActivity;->finish()V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
