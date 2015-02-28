.class final Lcom/android/email/service/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/e;


# instance fields
.field private final Hb:Landroid/content/ContentResolver;

.field private final VD:Landroid/net/Uri;

.field private final VE:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/B;->VE:Landroid/content/ContentValues;

    .line 211
    iput-object p1, p0, Lcom/android/email/service/B;->Hb:Landroid/content/ContentResolver;

    .line 212
    iput-object p2, p0, Lcom/android/email/service/B;->VD:Landroid/net/Uri;

    .line 213
    return-void
.end method


# virtual methods
.method public final bf(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/email/service/B;->VE:Landroid/content/ContentValues;

    const-string v1, "uiDownloadedSize"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v0, p0, Lcom/android/email/service/B;->Hb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/email/service/B;->VD:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/service/B;->VE:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    return-void
.end method
