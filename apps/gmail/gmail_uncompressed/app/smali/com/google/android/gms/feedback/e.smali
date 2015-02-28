.class public final Lcom/google/android/gms/feedback/e;
.super Ljava/lang/Object;


# instance fields
.field private bKa:Landroid/os/Bundle;

.field private bKf:Ljava/lang/String;

.field private bKj:Landroid/graphics/Bitmap;

.field private bKk:Ljava/lang/String;

.field private bKl:Ljava/lang/String;

.field private crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field private description:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/feedback/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/feedback/e;Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/e;->bKj:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/feedback/e;Landroid/os/Bundle;)Lcom/google/android/gms/feedback/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/e;->bKa:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/e;->bKk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/e;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/e;->bKl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/feedback/e;Ljava/lang/String;)Lcom/google/android/gms/feedback/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/e;->bKf:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final Mh()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/e;->bKj:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final Mi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/e;->bKk:Ljava/lang/String;

    return-object v0
.end method

.method public final Mj()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/e;->bKa:Landroid/os/Bundle;

    return-object v0
.end method

.method public final Mk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/e;->bKl:Ljava/lang/String;

    return-object v0
.end method

.method public final Ml()Landroid/app/ApplicationErrorReport$CrashInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/e;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    return-object v0
.end method

.method public final Mm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/e;->bKf:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/e;->description:Ljava/lang/String;

    return-object v0
.end method
