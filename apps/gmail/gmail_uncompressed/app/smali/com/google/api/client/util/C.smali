.class public interface abstract Lcom/google/api/client/util/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final czE:Lcom/google/api/client/util/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/api/client/util/D;

    invoke-direct {v0}, Lcom/google/api/client/util/D;-><init>()V

    sput-object v0, Lcom/google/api/client/util/C;->czE:Lcom/google/api/client/util/C;

    return-void
.end method


# virtual methods
.method public abstract nanoTime()J
.end method
