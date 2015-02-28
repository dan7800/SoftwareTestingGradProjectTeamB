.class public final Lcom/android/mail/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aPi:Lcom/android/mail/utils/p;


# instance fields
.field public final aPj:Landroid/net/Uri;

.field private aPk:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/mail/utils/p;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/utils/p;->aPk:Landroid/net/Uri;

    .line 39
    iput-object p1, p0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    .line 40
    return-void
.end method


# virtual methods
.method public final AR()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/utils/p;->aPk:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/utils/p;->aPk:Landroid/net/Uri;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/mail/utils/p;->aPk:Landroid/net/Uri;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 66
    instance-of v0, p1, Lcom/android/mail/utils/p;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/android/mail/utils/p;

    invoke-virtual {p1}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
