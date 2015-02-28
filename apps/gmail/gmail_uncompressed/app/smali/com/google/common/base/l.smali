.class public abstract Lcom/google/common/base/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final czW:Lcom/google/common/base/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/base/m;

    invoke-direct {v0}, Lcom/google/common/base/m;-><init>()V

    sput-object v0, Lcom/google/common/base/l;->czW:Lcom/google/common/base/l;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static YO()Lcom/google/common/base/l;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/common/base/l;->czW:Lcom/google/common/base/l;

    return-object v0
.end method


# virtual methods
.method public abstract YN()J
.end method
