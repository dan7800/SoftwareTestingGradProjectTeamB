.class public final Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Locale;",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final bsk:Lcom/google/android/gm/welcome/n;

.field private bsl:Ljava/io/File;

.field private final bsm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/welcome/n;Z)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->bsk:Lcom/google/android/gm/welcome/n;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->bsl:Ljava/io/File;

    .line 50
    if-eqz p3, :cond_0

    .line 51
    const-string v1, "gmail_welcome_tour_srt_new"

    .line 52
    const-string v0, "http://gstatic.com/android/gmail/welcome/1/srt_new/{{LANG}}.srt"

    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->bsm:Ljava/lang/String;

    .line 59
    return-void

    .line 54
    :cond_0
    const-string v1, "gmail_welcome_tour_srt_upgrading"

    .line 55
    const-string v0, "http://gstatic.com/android/gmail/welcome/1/srt_upgrading/{{LANG}}.srt"

    goto :goto_0
.end method

.method private a(Ljava/net/URL;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 99
    const-string v0, "WelcomeTour"

    const-string v1, "Downloading %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 101
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 103
    const-string v1, "tmp"

    const-string v2, ".srt"

    iget-object v3, p0, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->bsl:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 106
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 108
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 109
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    .line 113
    new-instance v0, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask$HttpResourceNotFoundException;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask$HttpResourceNotFoundException;-><init>(Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot handle http code %d for  %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_2
    return-object v1
.end method

.method private varargs a([Ljava/util/Locale;)[Ljava/io/File;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 63
    array-length v0, p1

    new-array v3, v0, [Ljava/io/File;

    move v0, v1

    .line 65
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 67
    :try_start_0
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->c(Ljava/util/Locale;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    :goto_2
    const-string v4, "WelcomeTour"

    const-string v5, "Error downloading subtitles resource"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 72
    :cond_0
    return-object v3

    .line 68
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private c(Ljava/util/Locale;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->bsm:Ljava/lang/String;

    const-string v1, "{{LANG}}"

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "WelcomeTour"

    const-string v2, "Loading subtitles for Welcome video in locale %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->a(Ljava/net/URL;)Ljava/io/File;
    :try_end_0
    .catch Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask$HttpResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_1
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "WelcomeTour"

    const-string v2, "Falling back to parent language %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object p1, v0

    .line 90
    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->a([Ljava/util/Locale;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 25
    check-cast p1, [Ljava/io/File;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->bsk:Lcom/google/android/gm/welcome/n;

    invoke-interface {v3, v2}, Lcom/google/android/gm/welcome/n;->c(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
