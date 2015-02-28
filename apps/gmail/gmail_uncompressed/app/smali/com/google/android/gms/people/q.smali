.class public final Lcom/google/android/gms/people/q;
.super Ljava/lang/Object;


# static fields
.field public static final cgE:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<",
            "Lcom/google/android/gms/internal/bO;",
            ">;"
        }
    .end annotation
.end field

.field static final cgF:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<",
            "Lcom/google/android/gms/internal/bO;",
            "Lcom/google/android/gms/people/s;",
            ">;"
        }
    .end annotation
.end field

.field public static final cgG:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/people/s;",
            ">;"
        }
    .end annotation
.end field

.field public static final cgH:Lcom/google/android/gms/internal/bv;

.field public static final cgI:Lcom/google/android/gms/people/f;

.field public static final cgJ:Lcom/google/android/gms/people/i;

.field public static final cgK:Lcom/google/android/gms/people/j;

.field public static final cgL:Lcom/google/android/gms/people/A;

.field public static final cgM:Lcom/google/android/gms/people/a;

.field public static final cgN:Lcom/google/android/gms/people/n;

.field public static final cgO:Lcom/google/android/gms/people/B;

.field public static final cgP:Lcom/google/android/gms/people/e;

.field public static final cgQ:Lcom/google/android/gms/people/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgE:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/people/r;

    invoke-direct {v0}, Lcom/google/android/gms/people/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgF:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/people/q;->cgF:Lcom/google/android/gms/common/api/g;

    sget-object v2, Lcom/google/android/gms/people/q;->cgE:Lcom/google/android/gms/common/api/h;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/v;)V

    sput-object v0, Lcom/google/android/gms/people/q;->cgG:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/bA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bA;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgH:Lcom/google/android/gms/internal/bv;

    new-instance v0, Lcom/google/android/gms/internal/cm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cm;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgI:Lcom/google/android/gms/people/f;

    new-instance v0, Lcom/google/android/gms/internal/cp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgJ:Lcom/google/android/gms/people/i;

    new-instance v0, Lcom/google/android/gms/internal/cq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cq;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgK:Lcom/google/android/gms/people/j;

    new-instance v0, Lcom/google/android/gms/internal/cC;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cC;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgL:Lcom/google/android/gms/people/A;

    new-instance v0, Lcom/google/android/gms/internal/ci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ci;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgM:Lcom/google/android/gms/people/a;

    new-instance v0, Lcom/google/android/gms/internal/cw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cw;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgN:Lcom/google/android/gms/people/n;

    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cy;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgO:Lcom/google/android/gms/people/B;

    new-instance v0, Lcom/google/android/gms/internal/cl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cl;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgP:Lcom/google/android/gms/people/e;

    new-instance v0, Lcom/google/android/gms/internal/cz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cz;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/q;->cgQ:Lcom/google/android/gms/people/o;

    return-void
.end method
