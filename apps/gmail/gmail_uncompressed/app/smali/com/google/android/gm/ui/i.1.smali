.class public final Lcom/google/android/gm/ui/i;
.super Lcom/android/mail/ui/M;
.source "SourceFile"


# instance fields
.field private final bpR:Ljava/lang/String;

.field private final bpS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/mail/ui/M;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail-drive-icon-prefix"

    const-string v2, "https://ssl.gstatic.com/docs/doclist/images/"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/i;->bpS:Ljava/lang/String;

    .line 27
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/i;->cK(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/i;->bpR:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gm/ui/i;->bpS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/i;->bpR:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gmail_drive_chip"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ui/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void

    .line 35
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    const-string v0, "icon_11_image_list.png"

    goto :goto_0

    .line 37
    :cond_2
    const-string v0, "video/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    const-string v0, "icon_11_video_list.png"

    goto :goto_0

    .line 39
    :cond_3
    sget-object v0, Lcom/google/android/gm/ui/e;->bpE:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    sget-object v0, Lcom/google/android/gm/ui/e;->bpE:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_4
    const-string v0, "icon_10_generic_list.png"

    goto :goto_0
.end method
