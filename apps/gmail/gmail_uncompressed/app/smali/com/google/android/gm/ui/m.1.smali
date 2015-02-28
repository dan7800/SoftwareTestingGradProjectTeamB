.class public final Lcom/google/android/gm/ui/m;
.super Lcom/android/mail/b/l;
.source "SourceFile"


# instance fields
.field private final Tz:Ljava/lang/String;

.field private final bbm:Lcom/google/android/gms/common/api/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/util/LinkedHashSet;Lcom/android/a/a;Lcom/android/mail/b/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/mail/b/i;",
            ">;",
            "Lcom/android/a/a;",
            "Lcom/android/mail/b/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, p4, p5}, Lcom/android/mail/b/l;-><init>(Ljava/util/Set;Landroid/content/ContentResolver;Lcom/android/a/a;Lcom/android/mail/b/j;)V

    .line 24
    iput-object p1, p0, Lcom/google/android/gm/ui/m;->bbm:Lcom/google/android/gms/common/api/n;

    .line 25
    iput-object p2, p0, Lcom/google/android/gm/ui/m;->Tz:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected final d(Ljava/util/Set;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gm/ui/m;->bbm:Lcom/google/android/gms/common/api/n;

    iget-object v1, p0, Lcom/google/android/gm/ui/m;->Tz:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gm/ui/F;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
