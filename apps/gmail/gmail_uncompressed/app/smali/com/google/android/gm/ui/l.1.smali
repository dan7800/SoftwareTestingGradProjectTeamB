.class public final Lcom/google/android/gm/ui/l;
.super Lcom/android/mail/b/j;
.source "SourceFile"


# instance fields
.field private final Tz:Ljava/lang/String;

.field private final bbm:Lcom/google/android/gms/common/api/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/android/a/a;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/android/mail/b/j;-><init>(Landroid/content/ContentResolver;Lcom/android/a/a;)V

    .line 19
    iput-object p1, p0, Lcom/google/android/gm/ui/l;->bbm:Lcom/google/android/gms/common/api/n;

    .line 20
    iput-object p2, p0, Lcom/google/android/gm/ui/l;->Tz:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/LinkedHashSet;)Lcom/android/mail/b/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/mail/b/i;",
            ">;)",
            "Lcom/android/mail/b/l;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gm/ui/m;

    iget-object v1, p0, Lcom/google/android/gm/ui/l;->bbm:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/google/android/gm/ui/l;->Tz:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/l;->oy()Lcom/android/a/a;

    move-result-object v4

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ui/m;-><init>(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/util/LinkedHashSet;Lcom/android/a/a;Lcom/android/mail/b/j;)V

    return-object v0
.end method
